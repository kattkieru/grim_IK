	
// ----------------------------------------------------------------------

#include "common.h"
#include "grim_vik.h"

// ----------------------------------------------------------------------
MTypeId Grim_VIK::id( 0x00124843 );     // this is a registered ID-- do not change!

MObject Grim_VIK::iRootMatrix;
MObject Grim_VIK::iGoalMatrix;
MObject Grim_VIK::iPoleMatrix;
MObject Grim_VIK::iFkMatrix;

MObject Grim_VIK::iStretchBlend;
MObject Grim_VIK::iFkIkBlend;
MObject Grim_VIK::iPinBlend;
MObject Grim_VIK::iReverseBlend;
MObject Grim_VIK::iOrientTipBlend;
MObject Grim_VIK::iFlipOrientation;

MObject Grim_VIK::iUpperLength;
MObject Grim_VIK::iLowerLength;
MObject Grim_VIK::iUpperLengthBoost;
MObject Grim_VIK::iLowerLengthBoost;
MObject Grim_VIK::iLengthBoost;
MObject Grim_VIK::iSoftness;
MObject Grim_VIK::iTwist;

MObject Grim_VIK::oOutTranslate;
MObject Grim_VIK::oOutRotateX;
MObject Grim_VIK::oOutRotateY;
MObject Grim_VIK::oOutRotateZ;
MObject Grim_VIK::oOutRotate;

// ----------------------------------------------------------------------
const struct {
	// a value this small makes it nice and stable. Anything larger and you
	// get a minute amount of drift at the tip
	double MIN_SOFTNESS = 0.00000001;
} IK {}; // need to force the initializer on gcc

// ----------------------------------------------------------------------
Grim_VIK::Grim_VIK() {

}

Grim_VIK::~Grim_VIK() {

}

// ----------------------------------------------------------------------
void Grim_VIK::postConstructor() {
	// MGlobal::displayInfo("Grim_VIK::postConstructor\n");
}

// ----------------------------------------------------------------------
/*
MStatus Grim_VIK::setDependentsDirty( const MPlug &plugBeingDirtied, MPlugArray &affectedPlugs )
{
	MObject mob = plugBeingDirtied.attribute();

	// if (mob == iStretchBlend) {
	// }

	return(MStatus::kSuccess);
}
*/

// ----------------------------------------------------------------------
inline void Grim_VIK::calculate_orientations( Pose &pose, const MPoint &pole_point, const bool flip ) {
	MVector upper_vector = (pose.position[1] - pose.position[0]);
	MVector lower_vector = (pose.position[2] - pose.position[1]);
	MVector goal_vector  = (pose.position[2] - pose.position[0]);

	upper_vector.normalize();
	lower_vector.normalize();

	MVector pole_vector { pole_point - pose.position[0] };
	MPoint new_pole_point { pose.position[0] + ((pole_vector * goal_vector) / (goal_vector * goal_vector)) * goal_vector };
	pole_vector = pole_point - new_pole_point;
	pole_vector.normalize();

	MVector side_vector = goal_vector ^ pole_vector;

	pose.orientation[0] = MTransformationMatrix(matrix_from_two_vectors(upper_vector, side_vector, flip)).rotation();
	pose.orientation[1] = MTransformationMatrix(matrix_from_two_vectors(lower_vector, side_vector, flip)).rotation();
}


// ----------------------------------------------------------------------
MStatus Grim_VIK::compute( const MPlug& plug, MDataBlock& data )
{
	MStatus stat;
	MObject node = thisMObject();

	int index {0};

	bool plug_check {
		   plug == oOutTranslate || plug.parent() == oOutTranslate
		|| plug == oOutRotate    || plug.parent() == oOutRotate
		|| plug == oOutRotateX   || plug.parent() == oOutRotateX
		|| plug == oOutRotateY   || plug.parent() == oOutRotateY
		|| plug == oOutRotateZ   || plug.parent() == oOutRotateZ
	};

	if( !plug_check ) {
		// MGlobal::displayInfo("Grim_VIK::compute (bad plug)\n");
		return MS::kUnknownParameter;
	}

	// MGlobal::displayInfo("Grim_VIK::compute\n");
	MMatrix rootMatrix       = data.inputValue(iRootMatrix).asMatrix();
	MMatrix goalMatrix       = data.inputValue(iGoalMatrix).asMatrix();
	MMatrix poleMatrix       = data.inputValue(iPoleMatrix).asMatrix();
	double  stretchBlend     = data.inputValue(iStretchBlend).asDouble();
	double  fkIkBlend        = data.inputValue(iFkIkBlend).asDouble();
	double  pinBlend         = data.inputValue(iPinBlend).asDouble();
	double  reverseBlend     = data.inputValue(iReverseBlend).asDouble();
	double  orientTipBlend   = data.inputValue(iOrientTipBlend).asDouble();
	double  flipOrientation  = data.inputValue(iFlipOrientation).asDouble();
	double  upperLength      = data.inputValue(iUpperLength).asDouble();
	double  lowerLength      = data.inputValue(iLowerLength).asDouble();
	double  upperLengthBoost = data.inputValue(iUpperLengthBoost).asDouble();
	double  lowerLengthBoost = data.inputValue(iLowerLengthBoost).asDouble();
	double  lengthBoost      = data.inputValue(iLengthBoost).asDouble();
	double  softness         = data.inputValue(iSoftness).asDouble();
	double  twist            = data.inputValue(iTwist).asDouble();

	// new favorite trick of stealing scale from root matrix instead of pumping in a compensate value
	double scale_compensate = MVector(rootMatrix[0][0], rootMatrix[0][1], rootMatrix[0][2]).length();
	double inverse_scale = 1.0 / scale_compensate;
	// bugfix: not necessary now-- removed to fix scaling
	// softness *= scale_compensate;

	if ( softness < IK.MIN_SOFTNESS ) {
		softness = IK.MIN_SOFTNESS;
	}

	// I'm using values from 0 to 100% to make it easier, so scale them down here
	lengthBoost      *= 0.01;
	upperLengthBoost *= 0.01;
	lowerLengthBoost *= 0.01;

	twist = DEG2RAD(twist);

	// doing it this way allows the animator to scale up or down a single bone
	// or both at the same time
	double realUpperLength = upperLength * upperLengthBoost * lengthBoost;
	double realLowerLength = lowerLength * lowerLengthBoost * lengthBoost;

	Pose ik_pose;
	Pose fk_pose;

	// for times when things go out into the boonies, it's better to translate
	// back and then re-translate the final values out to where they need to be
	MMatrix rootMatrixInverse = rootMatrix.inverse();

	MPoint rootPos = MTransformationMatrix(rootMatrix).translation(MSpace::kTransform);
	MTransformationMatrix mt_goalMatrix = MTransformationMatrix(goalMatrix);
	MPoint goalPos = mt_goalMatrix.translation(MSpace::kTransform);
	MTransformationMatrix mt_poleMatrix = MTransformationMatrix(poleMatrix);
	MPoint polePos = mt_poleMatrix.translation(MSpace::kTransform);

	if (fkIkBlend < 1.0) {
		MArrayDataHandle h_fkMatrix = data.inputArrayValue(iFkMatrix);
		MMatrix scale_mat;
		scale_mat[0][0] = scale_mat[1][1] = scale_mat[2][2] = inverse_scale;

		if (h_fkMatrix.elementCount() > 2) {
			for (index = 0; index < 3; index++) {
				h_fkMatrix.jumpToArrayElement(index);
				MTransformationMatrix mt_mat = MTransformationMatrix( h_fkMatrix.inputValue().asMatrix() );
				fk_pose.orientation[index]   = mt_mat.rotation();
				fk_pose.position[index]      = mt_mat.translation(MSpace::kTransform);
				// bugfix: gotta scale the FK controls properly
				fk_pose.position[index] -= rootPos;
				fk_pose.position[index] *= scale_mat;
				fk_pose.position[index] += rootPos;
			}
		}
	}

	/*
		actual calculation
	*/

	MVector goal_vector      { goalPos - rootPos };
	double chainLength       { realUpperLength + realLowerLength };
	double distance          { goal_vector.length() * inverse_scale };
	double soft_distance     { chainLength - softness };
	double adjusted_distance { distance };
	double scale             { 1.0 };
	
	goal_vector.normalize();

	ik_pose.position[0] = rootPos;

	if (fkIkBlend != 0.0) {
		/*
			calculate soft IK. If fkIkBlend is non-zero, then this needs to get
			blended on or be the full final position.
		*/

		if (distance > soft_distance && pinBlend != 1.0) {
			// this is the regular soft IK calculation
			// multiply adjusted_distance by goal_vector to get new goal position
			double k { softness * ( 1.0 - exp(-1.0*(distance-soft_distance)/softness) ) + soft_distance };
			double smartRatio { k / chainLength };
			double lenRatio { distance / chainLength };
			adjusted_distance = distance / lenRatio * smartRatio;

			// stretchy softness calculation below
			// this lengthens the bones to soften into the stretch
			scale = (distance / adjusted_distance - 1.0) * stretchBlend + 1.0;
			realUpperLength *= scale;
			realLowerLength *= scale;
			adjusted_distance *= scale;
		}

		// pole vector point has to be projected down for the angle stuff to work
		// new pole vector is from projected point through the pole point--
		// parallel to the goal vector
		MVector pole_vector { polePos - rootPos };
		MPoint pole_point { rootPos + ((pole_vector * goal_vector) / (goal_vector * goal_vector)) * goal_vector };
		pole_vector = polePos - pole_point;

		// twist around the goal vector to move the pole pos before
		// calculating the side vector, then move the polePos
		pole_vector = spin_vector_around_axis(pole_vector, twist, goal_vector);
		polePos = pole_point + pole_vector;

		pole_vector.normalize();
		MVector side_vector { pole_vector ^ goal_vector };
		side_vector.normalize();

		// angle off upper bone to goal vector
		double root_cosine = {
				( (realUpperLength * realUpperLength) + (adjusted_distance * adjusted_distance) -
				(realLowerLength * realLowerLength) ) / (2.0 * realUpperLength * adjusted_distance)
		};

		// the clamp is important
		double upper_angle = acos( clamp(root_cosine, -1.0, 1.0) );

		MVector upper_bone_vector;
		if (upper_angle < 0.0001) {
			// angle is too small, so no quat magic
			upper_bone_vector = goal_vector;
		}
		else {
			MQuaternion goal_delta_quat;
			goal_delta_quat.setAxisAngle( side_vector, upper_angle );
			// spin vector by the quaternion to realign
			MQuaternion r_quat = goal_delta_quat * MQuaternion(goal_vector.x, goal_vector.y, goal_vector.z, 0.0) * goal_delta_quat.inverse();
			upper_bone_vector = MVector( r_quat.x, r_quat.y, r_quat.z );
		}

		// not normalizing the upper bone vector itself because I need it
		// below for the reverse bend
		// have to rescale the upper bone vector
		ik_pose.position[1] = ik_pose.position[0] + (upper_bone_vector * realUpperLength);

		// lower bone just aims at goal
		// but it has to use the newly-calculated soft goal position!
		MVector lower_bone_vector { (ik_pose.position[0] + (goal_vector * adjusted_distance)) - ik_pose.position[1] };
		ik_pose.position[2] = ik_pose.position[1] + lower_bone_vector;
		lower_bone_vector.normalize();

		/*
			elbow pin
			not sure if it's the right to do it here, or if I should
			do it earlier... Should probably force early out on all
			the IK stuff above if pinBlend == 1.0.
		*/

		if (pinBlend > 0.0) {
			if (pinBlend == 1.0) {
				ik_pose.position[1] = polePos;
				ik_pose.position[2] = goalPos;
			}
			else {
				ik_pose.position[1] = lerp( ik_pose.position[1], polePos, pinBlend );
				ik_pose.position[2] = lerp( ik_pose.position[2], goalPos, pinBlend );
			}
		}

		/*
			reverse blend
		*/

		// bugfix: pinBlend doesn't like the reversal
		//!FIXME: Make this work properly
		reverseBlend *= 1.0 - pinBlend;

		if (reverseBlend > 0.0 ) {
			// project elbow onto goal vector, make a new vector through elbow
			// then negate. Distance traveled along that vector is reverseBlend.
			// goal vector is still normalized from above, so we have to
			// re-scale it here for the projection
			float reflect_angle = acos(static_cast<float>(upper_bone_vector * goal_vector));

			// bugfix: If acos fails it'll cause all kinds of silliness
			if (!isnan(reflect_angle)) {
				MVector reflected = spin_vector_around_axis(upper_bone_vector, 
						reflect_angle * 2.0,
						side_vector);
				MPoint reflected_pos = rootPos + (reflected * realUpperLength) ;
				if (reverseBlend == 1.0)
					ik_pose.position[1] = reflected_pos;
				else
					ik_pose.position[1] = lerp( ik_pose.position[1], reflected_pos, reverseBlend );
			}
		}

		calculate_orientations( ik_pose, polePos, flipOrientation );

		// tip orientation based on blend, not vectors
		if (orientTipBlend == 0.0) {
			ik_pose.orientation[2] = ik_pose.orientation[1];
		}
		else {
			MQuaternion goal_quat = mt_goalMatrix.rotation();
			if (orientTipBlend == 1.0)
				ik_pose.orientation[2] = goal_quat;
			else
				ik_pose.orientation[2] = slerp(ik_pose.orientation[1], goal_quat, orientTipBlend);
		}
	}

	Pose final_pose;

	if (fkIkBlend == 0.0)
		final_pose = fk_pose;
	else if (fkIkBlend == 1.0)
		final_pose = ik_pose;
	else {
		for (index = 0; index < 3; index++) {
			final_pose.position[index]    =  lerp(fk_pose.position[index],    ik_pose.position[index],    fkIkBlend);
			final_pose.orientation[index] = slerp(fk_pose.orientation[index], ik_pose.orientation[index], fkIkBlend);
		}
	}

	/*
		all outputs
	*/
	MArrayDataHandle h_outTranslate  = data.outputArrayValue(oOutTranslate);
	MArrayDataHandle h_outRotate     = data.outputArrayValue(oOutRotate);

	MArrayDataBuilder b_outTranslate = h_outTranslate.builder();
	MArrayDataBuilder b_outRotate    = h_outRotate.builder();

	MTransformationMatrix mt_previous = MTransformationMatrix(rootMatrix);

	for (index = 0; index < 3; index++) {
		MTransformationMatrix mt_out;
		mt_out.setTranslation( final_pose.position[index], MSpace::kTransform );
		MQuaternion rot_quat = final_pose.orientation[index];			
		mt_out.setRotationQuaternion( rot_quat.x, rot_quat.y, rot_quat.z, rot_quat.w );

		/*
		// note to future self: this method does nothing
		// 
		mt_out = mt_out.setRotationOrientation( rot_quat );
		mt_out.setRotationOrientation( rot_quat );
		*/

		// this is ridiculous. should all be one class
		MTransformationMatrix mt_final = mt_out.asMatrix() * mt_previous.asMatrixInverse();
		mt_previous = mt_out;

		b_outTranslate.addElement(index).setMFloatVector( mt_final.getTranslation(MSpace::kTransform) );
		MEulerRotation rotation = mt_final.eulerRotation();
		b_outRotate.addElement(index).set( rotation.x, rotation.y, rotation.z );
	}

	h_outTranslate.setAllClean();
	h_outRotate.setAllClean();

	return MS::kSuccess;
}

// ----------------------------------------------------------------------
Grim_VIK::SchedulingType Grim_VIK::schedulingType() const
{
	return kParallel;
}

// ----------------------------------------------------------------------
void* Grim_VIK::creator()
{
	return new Grim_VIK();
}


// ----------------------------------------------------------------------
MStatus Grim_VIK::initialize()
{
	MStatus stat;
	char msg[1024];

	MFnEnumAttribute eAttr;
	MFnUnitAttribute uAttr;
	MFnTypedAttribute tAttr;
	MFnNumericAttribute nAttr;
	MFnMatrixAttribute mAttr;

	MMatrix identity;
	identity.setToIdentity();

// input plugs
	iStretchBlend = nAttr.create("stretchBlend", "stretchBlend", MFnNumericData::kDouble, 1.0);
		nAttr.setStorable(true);
		nAttr.setKeyable(true);
		nAttr.setReadable(true);
		nAttr.setWritable(true);
		nAttr.setMin(0.0);
		nAttr.setMax(1.0);
	CHECK_MSTATUS_AND_RETURN_IT( addAttribute(iStretchBlend) );

	iFkIkBlend = nAttr.create("fkIkBlend", "fkIkBlend", MFnNumericData::kDouble, 1.0);
		nAttr.setStorable(true);
		nAttr.setKeyable(true);
		nAttr.setReadable(true);
		nAttr.setWritable(true);
		nAttr.setMin(0.0);
		nAttr.setMax(1.0);
	CHECK_MSTATUS_AND_RETURN_IT( addAttribute(iFkIkBlend) );

	iPinBlend = nAttr.create("pinBlend", "pinBlend", MFnNumericData::kDouble, 0.0);
		nAttr.setStorable(true);
		nAttr.setKeyable(true);
		nAttr.setReadable(true);
		nAttr.setWritable(true);
		nAttr.setMin(0.0);
		nAttr.setMax(1.0);
	CHECK_MSTATUS_AND_RETURN_IT( addAttribute(iPinBlend) );

	iReverseBlend = nAttr.create("reverseBlend", "reverseBlend", MFnNumericData::kDouble, 0.0);
		nAttr.setStorable(true);
		nAttr.setKeyable(true);
		nAttr.setReadable(true);
		nAttr.setWritable(true);
		nAttr.setMin(0.0);
		nAttr.setMax(1.0);
	CHECK_MSTATUS_AND_RETURN_IT( addAttribute(iReverseBlend) );

	iOrientTipBlend = nAttr.create("orientTipBlend", "orientTipBlend", MFnNumericData::kDouble, 1.0);
		nAttr.setStorable(true);
		nAttr.setKeyable(true);
		nAttr.setReadable(true);
		nAttr.setWritable(true);
		nAttr.setMin(0.0);
		nAttr.setMax(1.0);
	CHECK_MSTATUS_AND_RETURN_IT( addAttribute(iOrientTipBlend) );

    iFlipOrientation = nAttr.create("flipOrientation", "flipOrientation", MFnNumericData::kBoolean, false);
        nAttr.setStorable(true);
        nAttr.setKeyable(true);
        nAttr.setReadable(true);
        nAttr.setWritable(true);
    CHECK_MSTATUS_AND_RETURN_IT( addAttribute(iFlipOrientation) );
    
	iUpperLength = nAttr.create("upperLength", "upperLength", MFnNumericData::kDouble, -1.0);
		nAttr.setStorable(true);
		nAttr.setKeyable(true);
		nAttr.setReadable(true);
		nAttr.setWritable(true);
	CHECK_MSTATUS_AND_RETURN_IT( addAttribute(iUpperLength) );

	iLowerLength = nAttr.create("lowerLength", "lowerLength", MFnNumericData::kDouble, -1.0);
		nAttr.setStorable(true);
		nAttr.setKeyable(true);
		nAttr.setReadable(true);
		nAttr.setWritable(true);
	CHECK_MSTATUS_AND_RETURN_IT( addAttribute(iLowerLength) );

	iUpperLengthBoost = nAttr.create("upperLengthBoost", "upperLengthBoost", MFnNumericData::kDouble, 100.0);
		nAttr.setStorable(true);
		nAttr.setKeyable(true);
		nAttr.setReadable(true);
		nAttr.setWritable(true);
		nAttr.setMin(0.0);
	CHECK_MSTATUS_AND_RETURN_IT( addAttribute(iUpperLengthBoost) );

	iLowerLengthBoost = nAttr.create("lowerLengthBoost", "lowerLengthBoost", MFnNumericData::kDouble, 100.0);
		nAttr.setStorable(true);
		nAttr.setKeyable(true);
		nAttr.setReadable(true);
		nAttr.setWritable(true);
		nAttr.setMin(0.0);
	CHECK_MSTATUS_AND_RETURN_IT( addAttribute(iLowerLengthBoost) );

	iLengthBoost = nAttr.create("lengthBoost", "lengthBoost", MFnNumericData::kDouble, 100.0);
		nAttr.setStorable(true);
		nAttr.setKeyable(true);
		nAttr.setReadable(true);
		nAttr.setWritable(true);
		nAttr.setMin(0.0);
	CHECK_MSTATUS_AND_RETURN_IT( addAttribute(iLengthBoost) );

	iSoftness = nAttr.create("softness", "softness", MFnNumericData::kDouble, 0.0);
		nAttr.setStorable(true);
		nAttr.setKeyable(true);
		nAttr.setReadable(true);
		nAttr.setWritable(true);
		nAttr.setMin(0.0);
		nAttr.setMax(10.0);
	CHECK_MSTATUS_AND_RETURN_IT( addAttribute(iSoftness) );

	iTwist = nAttr.create("twist", "twist", MFnNumericData::kDouble, 0.0);
		nAttr.setStorable(true);
		nAttr.setKeyable(true);
		nAttr.setReadable(true);
		nAttr.setWritable(true);
	CHECK_MSTATUS_AND_RETURN_IT( addAttribute(iTwist) );

	iRootMatrix = mAttr.create("rootMatrix","rootMatrix");
		mAttr.setDefault(identity);
		mAttr.setStorable(true);
		mAttr.setKeyable(false);
		mAttr.setCached(true);
		mAttr.setReadable(false);
		mAttr.setWritable(true);
	CHECK_MSTATUS_AND_RETURN_IT( addAttribute(iRootMatrix) );

	iGoalMatrix = mAttr.create("goalMatrix","goalMatrix");
		mAttr.setDefault(identity);
		mAttr.setStorable(true);
		mAttr.setKeyable(false);
		mAttr.setCached(true);
		mAttr.setReadable(false);
		mAttr.setWritable(true);
	CHECK_MSTATUS_AND_RETURN_IT( addAttribute(iGoalMatrix) );

	iPoleMatrix = mAttr.create("poleMatrix","poleMatrix");
		mAttr.setDefault(identity);
		mAttr.setStorable(true);
		mAttr.setKeyable(false);
		mAttr.setCached(true);
		mAttr.setReadable(false);
		mAttr.setWritable(true);
	CHECK_MSTATUS_AND_RETURN_IT( addAttribute(iPoleMatrix) );

	iFkMatrix = mAttr.create("fkMatrix","fkMatrix");
		mAttr.setDefault(identity);
		mAttr.setStorable(true);
		mAttr.setKeyable(false);
		mAttr.setCached(true);
		mAttr.setReadable(false);
		mAttr.setWritable(true);
		mAttr.setArray(true);
	CHECK_MSTATUS_AND_RETURN_IT( addAttribute(iFkMatrix) );

// outputs
	oOutTranslate = nAttr.createPoint("outTranslate", "outTranslate" );
		nAttr.setStorable(true);
		nAttr.setKeyable(false);
		nAttr.setWritable(false);
		nAttr.setReadable(true);
		nAttr.setArray(true);
		nAttr.setUsesArrayDataBuilder(true);
	CHECK_MSTATUS_AND_RETURN_IT( addAttribute(oOutTranslate) );

	oOutRotateX = uAttr.create( "outRotateX", "outRotateX", MFnUnitAttribute::kAngle, 0.0 );
		uAttr.setStorable(false);
		// uAttr.setCached(true);
		uAttr.setWritable(false);
	oOutRotateY = uAttr.create( "outRotateY", "outRotateY", MFnUnitAttribute::kAngle, 0.0 );
		uAttr.setStorable(false);
		// uAttr.setCached(true);
		uAttr.setWritable(false);
	oOutRotateZ = uAttr.create( "outRotateZ", "outRotateZ", MFnUnitAttribute::kAngle, 0.0 );
		uAttr.setStorable(false);
		// uAttr.setCached(true);
		uAttr.setWritable(false);
	oOutRotate = nAttr.create( "outRotate", "outRotate", oOutRotateX, oOutRotateY, oOutRotateZ );
		nAttr.setReadable(true);
		nAttr.setWritable(false);
		nAttr.setArray(true);
		// nAttr.setCached(true);
		nAttr.setStorable(false);
		nAttr.setUsesArrayDataBuilder(true);
	CHECK_MSTATUS_AND_RETURN_IT( addAttribute(oOutRotate) );
	
	std::map<std::string, MObject *> all_inputs = {
		{ "rootMatrix",       & iRootMatrix },
		{ "goalMatrix",       & iGoalMatrix },
		{ "poleMatrix",       & iPoleMatrix },
		{ "fkMatrix",         & iFkMatrix },
		{ "stretchBlend",     & iStretchBlend },
		{ "fkIkBlend",        & iFkIkBlend },
		{ "pinBlend",    & iPinBlend },
		{ "reverseBlend",     & iReverseBlend },
        { "orientTipBlend",   & iOrientTipBlend },
		{ "flipOrientation",  & iFlipOrientation },
		{ "upperLength",      & iUpperLength },
		{ "lowerLength",      & iLowerLength },
		{ "upperLengthBoost", & iUpperLengthBoost },
		{ "lowerLengthBoost", & iLowerLengthBoost },
		{ "lengthBoost",      & iLengthBoost },
		{ "softness",         & iSoftness },
		{ "twist",            & iTwist }
	};

	std::map<std::string, MObject *> all_outputs = {
		{ "outTranslate",     & oOutTranslate },
		{ "outRotate",        & oOutRotate }
	};

	for (const auto &input_pair : all_inputs) {
		for (const auto &output_pair : all_outputs) {
			stat = attributeAffects(*input_pair.second, *output_pair.second);
			if (!stat) {
				sprintf(msg, "attributeAffects: %s >> %s", 
						(const char *)input_pair.first.c_str(),
						(const char *)output_pair.first.c_str());
				stat.perror(msg); 
				return stat;
			}
		}
	}

	return MS::kSuccess;
}

// ----------------------------------------------------------------------
void Grim_VIK::aeTemplate() {
	const char *msg = R"(
		global proc AEgrim_vikTemplate(string $nodeName) {
			// AEswatchDisplay $nodeName;
			editorTemplate -beginScrollLayout;
                editorTemplate -addControl "flipOrientation";
				editorTemplate -addControl "stretchBlend";
				editorTemplate -addControl "fkIkBlend";
				editorTemplate -addControl "pinBlend";
				editorTemplate -addControl "reverseBlend";
				editorTemplate -addControl "orientTipBlend";
				editorTemplate -addControl "upperLength";
				editorTemplate -addControl "lowerLength";
				editorTemplate -addControl "upperLengthBoost";
				editorTemplate -addControl "lowerLengthBoost";
				editorTemplate -addControl "lengthBoost";
				editorTemplate -addControl "softness";
			editorTemplate -endLayout;

			AEdependNodeTemplate $nodeName;
			editorTemplate -addExtraControls -collapse 1;
			editorTemplate -endScrollLayout;
		}
	)";

	MGlobal::executeCommand(msg);
}

