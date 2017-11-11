
#include <maya/MFnPlugin.h>
#include "common.h"
#include "grim_vik.h"

// ----------------------------------------------------------------------
MStatus Grim_VIK_initializePlugin( MFnPlugin *plugin );
MStatus Grim_VIK_uninitializePlugin( MFnPlugin *plugin );


// ----------------------------------------------------------------------
DLL_PUBLIC MStatus initializePlugin( MObject obj )
{ 
	MStatus   status;
	MFnPlugin plugin(obj, PLG_COMPANY, PLG_VERSION, "Any");

	// MGlobal::displayInfo("+ Grimoire IK: Registering...");

	status = Grim_VIK_initializePlugin( std::addressof(plugin) );
	if (!status) {
		const char *msg = "Grim_VIK registerNode";
		MGlobal::displayError(msg);
		status.perror(msg);
		return status;
	}

	// MGlobal::displayInfo("+ Grimoire IK: Registration complete.");
	return status;
}

// ----------------------------------------------------------------------
DLL_PUBLIC MStatus uninitializePlugin( MObject obj)
{
	MStatus   status;
	MFnPlugin plugin(obj);

	status = Grim_VIK_uninitializePlugin( std::addressof(plugin) );
	if (!status) {
		status.perror("Grim_VIK deregisterNode");
		return status;
	}

	return status;
}



// ----------------------------------------------------------------------
MStatus Grim_VIK_initializePlugin( MFnPlugin *plugin )
{ 
	//!FIXME: Move this to the main plugin init
	MStatus status;

	// MGlobal::displayInfo("Registering sm_rope...");
	status = plugin->registerNode( "grim_vik", Grim_VIK::id, Grim_VIK::creator,
								  Grim_VIK::initialize );

	Grim_VIK::aeTemplate();
	return status;
}


// ----------------------------------------------------------------------
MStatus Grim_VIK_uninitializePlugin( MFnPlugin *plugin )
{
	MStatus status;

	status = plugin->deregisterNode( Grim_VIK::id );
	return status;
}
