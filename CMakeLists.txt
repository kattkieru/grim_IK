cmake_minimum_required(VERSION 3.5)
project( maya_grim_ik )

set( CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}" )
set( CMAKE_CXX_STANDARD 14 )

set( MAYA_VER "2018" CACHE STRING "Version of Maya to build against" )

if(APPLE)
	set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -fPIC -mavx" )
	set( MAYA_ROOT    "/Applications/Autodesk/maya${MAYA_VER}" )
	set( MAYA_LIBS    "${MAYA_ROOT}/Maya.app/Contents/MacOS" CACHE STRING "Location of Maya Libraries" )
	set( MAYA_INCLUDE "${MAYA_ROOT}/include" CACHE STRING "Location of Maya Headers" )
	add_definitions(
		-DMAC_PLUGIN -DOSMac_ -DCC_GNU_
		-DOSMacOSX_ -DREQUIRE_IOSTREAM -DOSMac_MachO_
		-D_LANGUAGE_C_PLUS_PLUS
	)
elseif( MSVC )
	add_definitions( -DNT_PLUGIN -D_CRT_SECURE_NO_WARNINGS )
	set( MAYA_ROOT    0 CACHE STRING "C:/Program Files/Autodesk/maya${MAYA_VER}/")
	set( MAYA_LIBS    0 CACHE STRING "${MAYA_ROOT}/bin/")
	set( MAYA_INCLUDE 0 CACHE STRING "${MAYA_ROOT}/include/")
	set( CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS}
		/EHsc
		/MT
		/Zi
		/Oi
		/fp:fast'
		/O2'
	)
	target_link_libraries(
		Image
		kernel32
		user32
		gdi32
		winspool
		comdlg32
		advapi32
		shell32
		ole32
		oleaut32
		uuid
		odbc32
		odbccp32
		/INCREMENTAL:NO
		/SUBSYSTEM:WINDOWS
		/OPT:REF
		/OPT:ICF
		/DYNAMICBASE:NO
		/MACHINE:X64
		# /debug:full
	)

	if( MSVC_VERSION GREATER 1800 )
		target_link_libraries( legacy_stdio_definitions.lib )
	endif()
else()
	message( FATAL_ERROR "Unsupported OS -- aborting." )
endif()
	
include_directories( ${MAYA_INCLUDE} )
link_directories( ${MAYA_LIBS} )

set( SOURCE_FILES plugin_main.cpp grim_vik.cpp )

add_library( grim_IK SHARED ${SOURCE_FILES} )
set_target_properties( grim_IK PROPERTIES PREFIX "" )
set_target_properties( grim_IK PROPERTIES SUFFIX ".bundle" )
target_link_libraries( grim_IK
	OpenMaya
	OpenMayaAnim
	Foundation
)

message( "Configured for Maya: ${MAYA_ROOT}" )
