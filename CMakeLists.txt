cmake_minimum_required(VERSION 3.5)
project( maya_grim_ik )

set( CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}" )
set( CMAKE_CXX_STANDARD 14 )

set( MAYA_VER "2018" CACHE STRING "Version of Maya to build against" )

if(APPLE)
	set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -fPIC -mavx -fvisibility=hidden" )
	set( MAYA_ROOT    "/Applications/Autodesk/maya${MAYA_VER}" CACHE STRING "Location of Maya")
	set( MAYA_LIBS    "${MAYA_ROOT}/Maya.app/Contents/MacOS" CACHE STRING "Location of Maya Libraries" )
	set( MAYA_INCLUDE "${MAYA_ROOT}/include" CACHE STRING "Location of Maya Headers" )
	add_definitions(
		-DMAC_PLUGIN -DOSMac_ -DCC_GNU_
		-DOSMacOSX_ -DREQUIRE_IOSTREAM -DOSMac_MachO_
		-D_LANGUAGE_C_PLUS_PLUS
	)
	set( PLATFORM_LINK
		m
	)

	set( PLUGIN_SUFFIX ".bundle" )

elseif( MSVC )
	add_definitions( -DNT_PLUGIN -D_CRT_SECURE_NO_WARNINGS )
	set( MAYA_ROOT    "C:/aw/maya${MAYA_VER}/" CACHE STRING "Location of Maya" )
	set( MAYA_LIBS    "${MAYA_ROOT}/lib/" CACHE STRING "Location of Maya Libraries" )
	set( MAYA_INCLUDE "${MAYA_ROOT}/include/" CACHE STRING "Location of Maya Headers" )
	set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /EHsc /MT /Zi /Oi /fp:fast /O2" )
	set( PLATFORM_LINK
		kernel32.lib
		user32.lib
		gdi32.lib
		winspool.lib
		comdlg32.lib
		advapi32.lib
		shell32.lib
		ole32.lib
		oleaut32.lib
		uuid.lib
		odbc32.lib
		odbccp32.lib
	)

	set( LINK_FLAGS
		"/INCREMENTAL:NO /SUBSYSTEM:WINDOWS /OPT:REF /OPT:ICF /DYNAMICBASE:NO /MACHINE:X64" # /debug:full
	)

	set( PLUGIN_SUFFIX ".mll" )

	if( MSVC_VERSION GREATER 1800 )
		set( PLATFORM_LINK ${PLATFORM_LINK} legacy_stdio_definitions.lib )
	endif()
else()
	message( FATAL_ERROR "Unsupported OS -- aborting." )
endif()
	
include_directories( ${MAYA_INCLUDE} )
link_directories( ${MAYA_LIBS} )

set( SOURCE_FILES plugin_main.cpp grim_vik.cpp )

add_library( grim_IK SHARED ${SOURCE_FILES} )
set_target_properties( grim_IK PROPERTIES PREFIX "" )
set_target_properties( grim_IK PROPERTIES SUFFIX ${PLUGIN_SUFFIX} )
target_link_libraries( grim_IK
	OpenMaya
	OpenMayaAnim
	Foundation
	${PLATFORM_LINK}
)
set_property( TARGET grim_IK APPEND PROPERTY LINK_FLAGS ${LINK_FLAGS} )

message( "Configured for Maya: ${MAYA_ROOT}" )
