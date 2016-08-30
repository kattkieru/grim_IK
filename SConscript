## ----------------------------------------------------------------------
'''
SConscript for somatic_rope plugin set
'''
## ----------------------------------------------------------------------

import os, sys
platform = sys.platform

PLUGIN_NAME = 'grimIK'

env = Environment(
	CPPDEFINES=[
		# '_DEBUG',
		'_BOOL',
		'REQUIRE_IOSTREAM',
		'MAYA_PARALLEL',
		'USE_OPENMP'
	],

	LIBS = [
		'OpenMaya',
		'OpenMayaAnim',
		'Foundation',
	],
)

if platform == 'darwin':
	ARCHFLAGS = ['-m64', '-fPIC']
	CFLAGS = [
		'-g',
		'-O3',
		'-fno-inline', ## no automatic inlining
		'-mmacosx-version-min=10.11'
		] + ARCHFLAGS

	CCFLAGS = CFLAGS + [
		'-fno-gnu-keywords', '-fpascal-strings',
		'-std=c++14', '-Wc++11-extensions', '-Wc++11-long-long',
		"-stdlib=libc++",
		]

	LFLAGS = CCFLAGS + [
		'-headerpad_max_install_names', '-framework', 'System',
		'-framework', 'SystemConfiguration', '-framework', 'CoreServices',
		'-framework', 'Cocoa', '-framework', 'ApplicationServices',
		'-framework', 'IOKit',
		'-Wl,-exported_symbol,__Z16initializePlugin7MObject',
		'-Wl,-exported_symbol,__Z18uninitializePlugin7MObject'
		]

	MAYA_BASE = "/Applications/Autodesk/maya2016"
	MAYA_HEADERS_DIR = MAYA_BASE + "/devkit/include"
	MAYA_LIBRARY_DIR = MAYA_BASE + "/Maya.app/Contents/MacOS"
	env.Append( CFLAGS=CFLAGS )
	env.Append( CCFLAGS=CCFLAGS )
	env.Append( LINKFLAGS=LFLAGS )
	env.Append( CPPDEFINES=[
				'MAC_PLUGIN', 'OSMac_', 'CC_GNU_',
				'OSMacOSX_', 'REQUIRE_IOSTREAM', 'OSMac_MachO_',
				'_LANGUAGE_C_PLUS_PLUS'
				] )
	# env.Append( CPPPATH='/usr/include/c++/4.2.1/' )
	env.Replace( CC="clang++" )
	env.Replace( CXX="clang++" )
	TARGET = PLUGIN_NAME + '.bundle'

elif platform.startswith('linux'):
	MAYA_BASE = "/usr/autodesk/maya%s-x64"
	MAYA_HEADERS_DIR = MAYA_BASE + "include"
	MAYA_LIBRARY_DIR = "%s/lib" % MAYA_BASE
	env.Append(	CCFLAGS='-O2 -m64 -fPIC')
	env.Append( CPPDEFINES=[ 'LINUX_PLUGIN' ] )
	TARGET = PLUGIN_NAME + '.so'

elif platform == 'win32':
	# MAYA_BASE = "C:/aw/maya2016/"
	MAYA_HEADERS_DIR = "C:/aw/maya2016/include"
	MAYA_LIBRARY_DIR = "C:/Progra~1/Autodesk/Maya2016/lib/"
	env.Append( CCFLAGS=[
		'/EHsc',	## no clue but if this isn't here, there will be tears
		'/MT',      ## build without needing the runtime distributable
		'/Zi',      ## generate debug info
		# '/Gv',      ## enable __vectorcall
		'/Oi',      ## enable intrinsic functions
		'/fp:fast', ## floating point model: fast
		'/Ob1',     ## only __inline, no automatic inlinig
		'/O2'       ## optimize
		# '/Od'       ## disable optimizations
		])

	env.Append( LINKFLAGS=['/export:initializePlugin', 
						'/export:uninitializePlugin', 
						'/INCREMENTAL:NO',
						'/SUBSYSTEM:WINDOWS',
						'/OPT:REF',
						'/OPT:ICF',
						'/DYNAMICBASE:NO',
						'/MACHINE:X64',
						'/debug:full',
						])
	env.Append( 
		CPPDEFINES=[
			'NT_PLUGIN'
			# I feel bad about this but...this
			'_CRT_SECURE_NO_WARNINGS',
		]
	)
	env.Append( LIBS=['Image',
					'kernel32',
					'user32',
					'gdi32',
					'winspool',
					'comdlg32',
					'advapi32',
					'shell32',
					'ole32',
					'oleaut32',
					'uuid',
					'odbc32',
					'odbccp32',
		])

	TARGET = PLUGIN_NAME + '.mll'
	env.Replace( SHLIBSUFFIX=".mll" )

env.Append( CPPPATH=[ MAYA_HEADERS_DIR ] )
env.Append( LIBPATH=[ MAYA_LIBRARY_DIR ] )

sources = [
	'grim_vik.cpp',
	'plugin_main.cpp',
]

env.SharedLibrary( target=TARGET, source=sources, SHLIBPREFIX='' )

## set the install directory yourself
# env.Install( INSTALL_DIRECTORY, TARGET )
# env.Alias( 'install', INSTALL_DIRECTORY )


