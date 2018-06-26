#ifndef __GRIM_VIK_H
#define __GRIM_VIK_H
// ----------------------------------------------------------------------


typedef struct {
	MPoint       position[3];
	MQuaternion  orientation[3];
} Pose;


class Grim_VIK : public MPxNode
{
public:

						Grim_VIK();
	virtual				~Grim_VIK(); 

	virtual void        postConstructor();
	// virtual MStatus     setDependentsDirty( const MPlug &plugBeingDirtied, MPlugArray &affectedPlugs );

	virtual MStatus		compute( const MPlug& plug, MDataBlock& data );

	inline void         calculate_orientations( Pose &pose, const MPoint &pole_point, const MVector &aimVectorDirection, const MVector &poleVectorDirection );

	static  void*		creator();
	static  MStatus		initialize();
	static  void        aeTemplate();

	virtual SchedulingType schedulingType() const;

	static	MTypeId		id;

	// inputs
	static MObject      iRootMatrix;
	static MObject      iGoalMatrix;
	static MObject      iPoleMatrix;
	static MObject      iFkMatrix;

	static MObject      iStretchBlend;
	static MObject      iFkIkBlend;
	static MObject      iPinBlend;
	static MObject      iReverseBlend;
    static MObject      iOrientTipBlend;
    static MObject      iFlipOrientation;

	static MObject      iUpperLength;
	static MObject      iLowerLength;
	static MObject      iUpperLengthBoost;
	static MObject      iLowerLengthBoost;
	static MObject      iLengthBoost;
	static MObject      iSoftness;
	static MObject      iTwist;

	static MObject      iAimDirection;
	static MObject      iPoleVectorDirection;

	// outputs
	static MObject      oOutTranslate;
	static MObject      oOutRotateX;
	static MObject      oOutRotateY;
	static MObject      oOutRotateZ;
	static MObject      oOutRotate;
};

#endif // __GRIM_VIK_H

