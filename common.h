#ifndef __COMMON_H
#define __COMMON_H
// ----------------------------------------------------------------------

// #define USE_CHRONO

#ifndef _CRT_SECURE_NO_WARNINGS
	#define _CRT_SECURE_NO_WARNINGS
#endif

#define _USE_MATH_DEFINES

#include <math.h>
#include <stdio.h>
#include <stdint.h>

#include <algorithm>
#include <cmath>
#include <cstdarg>
#include <iostream>
#include <map>
#include <numeric>
#include <set>
#include <string>
#include <vector>

#include <maya/MFnData.h>
#include <maya/MGlobal.h>
#include <maya/MPxNode.h>

#include <maya/MAngle.h>
#include <maya/MEulerRotation.h>
#include <maya/MFloatVector.h>
#include <maya/MFloatMatrix.h>
#include <maya/MMatrix.h>
#include <maya/MPoint.h>
#include <maya/MPointArray.h>
#include <maya/MQuaternion.h>
#include <maya/MString.h>
#include <maya/MTypeId.h>
#include <maya/MVector.h>
#include <maya/MVectorArray.h>

#include <maya/MArrayDataBuilder.h>
#include <maya/MArrayDataHandle.h>
#include <maya/MDataBlock.h>
#include <maya/MDataHandle.h>

#include <maya/MFnCompoundAttribute.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MFnUnitAttribute.h>
#include <maya/MFnMatrixAttribute.h>
#include <maya/MFnMatrixData.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnNumericData.h>
#include <maya/MFnNurbsSurfaceData.h>
#include <maya/MRampAttribute.h>
#include <maya/MFnTypedAttribute.h>

#include <maya/MFnNurbsSurface.h>

#include <maya/MThreadUtils.h>


// ----------------------------------------------------------------------
#define PLG_COMPANY "Skeletal Studios"
#define PLG_VERSION "R001"

#define OUT

#define DEG2RAD(degrees)           (degrees * M_PI ) / 180.0
#define RAD2DEG(radians)           (radians * 180.0) / M_PI

// extra parens are to catch arithmatic as if these were real functions
// without, some of the math goes stupid
#define clamp(value, low, high)    ( (value) > (high) ? (high) : ((value) < (low) ? (low) : (value)) )
#define lerp(a, b, t) ( (1-(t))*(a) + ((t)*(b)) )
#define inverse_lerp( x, a, b) ( ((x)-(a)) / ((b)-(a)) )


// ----------------------------------------------------------------------
inline MEulerRotation rotation_from_three_vectors(const MVector &a, const MVector &b, const MVector &c) {
	/*
		This is stolen, with thanks, from Mike Day at Insomiac Games from his paper
		"Extracting Euler Angles from a Rotation Matrix".  His equation gets around the
		precision issues that arise from extracting angles from single-precision
		numbers.

		Instead of converting to an MMatrix, I'm using the vectors directly since as a matrix
		they would be a == M[0], b == M[1], and C == M[2].
	*/

	double x = atan2( b.z, c.z );
	double c2 = sqrt( a.x*a.x + a.y*a.y );
	double y = atan2( -a.z, c2 );
	double s1 = sin( x );
	double c1 = cos( x );
	double z = atan2( s1*c.x - c1*b.x, c1*b.y - s1*c.y );

	MEulerRotation result { x, y, z };
	return( result );
}

inline MQuaternion quat_from_three_vectors( const MVector &a, const MVector &b, const MVector &c ) {
	// adapted from http://web.archive.org/web/20060914224155/http://web.archive.org/web/20041029003853/http://www.j3d.org/matrix_faq/matrfaq_latest.html#Q55
	// doing this to avoid having to create a quat from an MTransformationMatrix from an MMatrix from
	// three vectors representing a rotation.

	// this function works but in timings it wasn't significantly faster, and also,
	// it's a bit less accurate and was causing some funniness

	double trace = a.x + b.y + c.z + 1.0;
	MQuaternion result;
	double s;

	if( trace > 0.00000001 ) {
		s = sqrt(trace) * 2.0;
		result.x = ( b.z - c.y ) / s;
		result.y = ( c.x - a.z ) / s;
		result.z = ( a.y - b.x ) / s;
		result.w = 0.25 * s;
	}
	else {
		if ( a.x > b.y && a.x > c.z )  {	// Column 0:
			s = sqrt( 1.0 + a.x - b.y - c.z ) * 2.0;
			result.x = 0.25 * s;
			result.y = (a.y + b.x ) / s;
			result.z = (c.x + a.z ) / s;
			result.w = (b.z - c.y ) / s;
		} else if ( b.y > c.z ) {			// Column 1:
			s = sqrt( 1.0 + b.y - a.x - c.z ) * 2.0;
			result.x = (a.y + b.x ) / s;
			result.y = 0.25 * s;
			result.z = (b.z + c.y ) / s;
			result.w = (c.x - a.z ) / s;
		} else {						// Column 2:
			s = sqrt( 1.0 + c.z - a.x - b.y ) * 2.0;
			result.x = (c.x + a.z ) / s;
			result.y = (b.z + c.y ) / s;
			result.z = 0.25 * s;
			result.w = (a.y - b.x ) / s;
		}
	}

	// it is SUPER important to normalize here
	return( result.normal() );
}

inline MMatrix matrix_from_three_vectors(const MVector &a, const MVector &b, const MVector &c ) {

	double mat_data[4][4] = {
		{ a.x, a.y, a.z, 0.0 },
		{ b.x, b.y, b.z, 0.0 },
		{ c.x, c.y, c.z, 0.0 },
		{ 0.0, 0.0, 0.0, 1.0 },
	};

	MMatrix result = MMatrix(mat_data);
	return(result);
}

inline MMatrix matrix_from_three_vectors_and_point(const MVector &a,
						const MVector &b, const MVector &c, const MPoint &p ) {

	double mat_data[4][4] = {
		{ a.x, a.y, a.z, 0.0 },
		{ b.x, b.y, b.z, 0.0 },
		{ c.x, c.y, c.z, 0.0 },
		{ p.x, p.y, p.z, 1.0 },
	};

	MMatrix result = MMatrix(mat_data);
	return(result);
}

inline MMatrix matrix_from_two_vectors(const MVector &aim, const MVector &up, const bool flip=false ) {
	/*
		This is assuming X-down, Y up
	*/
    double d_flip { flip ? -1.0 : 1.0 };

	MVector cross = up ^ aim;
	return( matrix_from_three_vectors(aim * d_flip, cross * d_flip, up * d_flip ) );
}

inline MMatrix matrix_from_two_vectors_and_point(const MVector &aim, const MVector &up, const MPoint &point, const bool flip=false ) {
	/*
		This is assuming X-down, Y up
	*/
    double d_flip { flip ? -1.0 : 1.0 };

	MVector cross = up ^ aim;
	return( matrix_from_three_vectors_and_point(aim * d_flip, cross * d_flip, up * d_flip, point ) );
}

inline MVector spin_vector_around_axis( const MVector &vec, const double angle, const MVector &axis  ) {

	MVector projected = (vec * axis) * axis;
	return( cos(angle) * (vec - projected) + sin(angle) * (axis ^ vec) + projected );

}


// ----------------------------------------------------------------------
// #define DEBUGLEVEL1

#ifdef  DEBUGLEVEL1
	#define log(x) MGlobal::displayInfo(x)
#else
	#define log(x)
#endif

#endif // __COMMON_H



