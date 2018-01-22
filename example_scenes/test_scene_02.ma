//Maya ASCII 2017ff05 scene
//Name: test_scene_02.ma
//Last modified: Sun, Jan 21, 2018 11:24:01 pm
//Codeset: UTF-8
requires maya "2017ff05";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires -nodeType "grim_vik" "grim_IK" "R010";
currentUnit -linear centimeter -angle degree -time film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201706020738-1017329";
fileInfo "osv" "Mac OS X 10.12.6";
createNode transform -shared -name "persp";
	rename -uuid "6608FC0B-D643-8547-9990-8EA07029D824";
	setAttr ".visibility" no;
	setAttr ".translate" -type "double3" -27.232426989466024 5.5246001590400864 11.838104025414186 ;
	setAttr ".rotate" -type "double3" 1.4616472703924899 -69.000000000005286 2.7734716210494953e-16 ;
createNode camera -shared -name "perspShape" -parent "persp";
	rename -uuid "A785C032-2443-BE71-2DCF-7B8FE00C4EF1";
	setAttr -keyable off ".visibility" no;
	setAttr ".focalLength" 34.999999999999986;
	setAttr ".centerOfInterest" 33.024805766396078;
	setAttr ".imageName" -type "string" "persp";
	setAttr ".depthName" -type "string" "persp_depth";
	setAttr ".maskName" -type "string" "persp_mask";
	setAttr ".homeCommand" -type "string" "viewSet -p %camera";
createNode transform -shared -name "top";
	rename -uuid "B04A907A-4140-72C6-41DE-7088FD6A8515";
	setAttr ".visibility" no;
	setAttr ".translate" -type "double3" 0 100.1 0 ;
	setAttr ".rotate" -type "double3" -89.999999999999986 0 0 ;
createNode camera -shared -name "topShape" -parent "top";
	rename -uuid "B14EAE75-7745-9B4A-C185-4EA9449431B7";
	setAttr -keyable off ".visibility" no;
	setAttr ".renderable" no;
	setAttr ".centerOfInterest" 100.1;
	setAttr ".orthographicWidth" 30;
	setAttr ".imageName" -type "string" "top";
	setAttr ".depthName" -type "string" "top_depth";
	setAttr ".maskName" -type "string" "top_mask";
	setAttr ".homeCommand" -type "string" "viewSet -t %camera";
	setAttr ".orthographic" yes;
createNode transform -shared -name "front";
	rename -uuid "6CE0A59E-E444-14C5-41FD-F4893DD7C5CF";
	setAttr ".visibility" no;
	setAttr ".translate" -type "double3" 0 0 100.1 ;
createNode camera -shared -name "frontShape" -parent "front";
	rename -uuid "ADB03AF4-8647-F983-40A4-01A7B8535A1B";
	setAttr -keyable off ".visibility" no;
	setAttr ".renderable" no;
	setAttr ".centerOfInterest" 100.1;
	setAttr ".orthographicWidth" 30;
	setAttr ".imageName" -type "string" "front";
	setAttr ".depthName" -type "string" "front_depth";
	setAttr ".maskName" -type "string" "front_mask";
	setAttr ".homeCommand" -type "string" "viewSet -f %camera";
	setAttr ".orthographic" yes;
createNode transform -shared -name "side";
	rename -uuid "F361DD26-D042-0AD6-61DC-48B677F563AA";
	setAttr ".visibility" no;
	setAttr ".translate" -type "double3" 100.1 0 0 ;
	setAttr ".rotate" -type "double3" 0 89.999999999999986 0 ;
createNode camera -shared -name "sideShape" -parent "side";
	rename -uuid "49864BB6-F64C-F3FC-A822-B0B8CC6761F7";
	setAttr -keyable off ".visibility" no;
	setAttr ".renderable" no;
	setAttr ".centerOfInterest" 100.1;
	setAttr ".orthographicWidth" 30;
	setAttr ".imageName" -type "string" "side";
	setAttr ".depthName" -type "string" "side_depth";
	setAttr ".maskName" -type "string" "side_mask";
	setAttr ".homeCommand" -type "string" "viewSet -s %camera";
	setAttr ".orthographic" yes;
createNode transform -name "shoulder_lf_01_jntZero";
	rename -uuid "4DB2EBA6-C048-9F0F-A998-50A067AEDE3E";
	setAttr ".translate" -type "double3" 0 8 0 ;
	setAttr ".rotate" -type "double3" 89.999999999999986 -45 -90 ;
createNode transform -name "shoulder_lf_01_jnt__rigRoot" -parent "shoulder_lf_01_jntZero";
	rename -uuid "E9AEA562-8C44-73E8-250E-458F66E17BF9";
createNode joint -name "shoulder_lf_01_jnt" -parent "shoulder_lf_01_jnt__rigRoot";
	rename -uuid "7289C270-AA41-B0C1-0555-EB8094CCFCF9";
	addAttr -cachedInternally true -keyable true -shortName "MODULEROOT" -longName "MODULEROOT" 
		-defaultValue 1 -minValue 0 -maxValue 1 -attributeType "bool";
	addAttr -cachedInternally true -shortName "WT_side" -longName "WT_side" -minValue 
		0 -maxValue 2 -enumName "cn:lf:rt" -attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_type" -longName "WT_type" -dataType "string";
	addAttr -cachedInternally true -shortName "WT_hideControls" -longName "WT_hideControls" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	addAttr -cachedInternally true -shortName "WT_automatedBuildSkip" -longName "WT_automatedBuildSkip" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	addAttr -cachedInternally true -multi -shortName "WT_controllerCategories" -longName "WT_controllerCategories" 
		-dataType "string";
	addAttr -cachedInternally true -shortName "WT_isFacialModule" -longName "WT_isFacialModule" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	addAttr -cachedInternally true -shortName "WT_isParentModule" -longName "WT_isParentModule" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	addAttr -cachedInternally true -shortName "WT_fkControllerType" -longName "WT_fkControllerType" 
		-minValue 0 -maxValue 16 -enumName "arrow:ball:box:boxtab:circle:cube:doubletab:foot:footFlat:fourway:hand:head:lever:oneway:prism:saddle:triangle" 
		-attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_fkControllerSubType" -longName "WT_fkControllerSubType" 
		-minValue 0 -maxValue 16 -enumName "arrow:ball:box:boxtab:circle:cube:doubletab:foot:footFlat:fourway:hand:head:lever:oneway:prism:saddle:triangle" 
		-attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_fkControllerColor" -longName "WT_fkControllerColor" 
		-minValue 0 -maxValue 31 -enumName "grey:black:darkgrey:lightgrey:darkred:navy:blue:darkgreen:violet:pink:brown:darkbrown:darkorange:red:green:white=16:yellow:lightblue:lightgreen:salmon:tan:lightyellow:purple=30:darkpink" 
		-attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_fkControllerAddSub" -longName "WT_fkControllerAddSub" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	addAttr -cachedInternally true -shortName "WT_fkControllerSubColor" -longName "WT_fkControllerSubColor" 
		-minValue 0 -maxValue 31 -enumName "grey:black:darkgrey:lightgrey:darkred:navy:blue:darkgreen:violet:pink:brown:darkbrown:darkorange:red:green:white=16:yellow:lightblue:lightgreen:salmon:tan:lightyellow:purple=30:darkpink" 
		-attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_fkControllerScale" -longName "WT_fkControllerScale" 
		-defaultValue 0.01 -minValue 0.01 -attributeType "float";
	addAttr -cachedInternally true -shortName "WT_fkControllerSubScale" -longName "WT_fkControllerSubScale" 
		-defaultValue 0.01 -minValue 0.01 -attributeType "float";
	addAttr -cachedInternally true -shortName "WT_fkControllerTranslation" -longName "WT_fkControllerTranslation" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "WT_fkControllerTranslationX" -longName "WT_fkControllerTranslationX" 
		-attributeType "float" -parent "WT_fkControllerTranslation";
	addAttr -cachedInternally true -shortName "WT_fkControllerTranslationY" -longName "WT_fkControllerTranslationY" 
		-attributeType "float" -parent "WT_fkControllerTranslation";
	addAttr -cachedInternally true -shortName "WT_fkControllerTranslationZ" -longName "WT_fkControllerTranslationZ" 
		-attributeType "float" -parent "WT_fkControllerTranslation";
	addAttr -cachedInternally true -shortName "WT_fkControllerRotation" -longName "WT_fkControllerRotation" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "WT_fkControllerRotationX" -longName "WT_fkControllerRotationX" 
		-attributeType "float" -parent "WT_fkControllerRotation";
	addAttr -cachedInternally true -shortName "WT_fkControllerRotationY" -longName "WT_fkControllerRotationY" 
		-attributeType "float" -parent "WT_fkControllerRotation";
	addAttr -cachedInternally true -shortName "WT_fkControllerRotationZ" -longName "WT_fkControllerRotationZ" 
		-attributeType "float" -parent "WT_fkControllerRotation";
	addAttr -cachedInternally true -shortName "WT_fkControllerRotateOrder" -longName "WT_fkControllerRotateOrder" 
		-minValue 0 -maxValue 5 -enumName "xyz:yzx:zxy:xzy:yxz:zyx" -attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_fkControllerAim" -longName "WT_fkControllerAim" 
		-minValue 0 -maxValue 5 -enumName "x:y:z:-x:-y:-z" -attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_fkControllerUp" -longName "WT_fkControllerUp" 
		-minValue 0 -maxValue 5 -enumName "x:y:z:-x:-y:-z" -attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_ikControllerType" -longName "WT_ikControllerType" 
		-minValue 0 -maxValue 16 -enumName "arrow:ball:box:boxtab:circle:cube:doubletab:foot:footFlat:fourway:hand:head:lever:oneway:prism:saddle:triangle" 
		-attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_ikControllerSubType" -longName "WT_ikControllerSubType" 
		-minValue 0 -maxValue 16 -enumName "arrow:ball:box:boxtab:circle:cube:doubletab:foot:footFlat:fourway:hand:head:lever:oneway:prism:saddle:triangle" 
		-attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_ikControllerColor" -longName "WT_ikControllerColor" 
		-minValue 0 -maxValue 31 -enumName "grey:black:darkgrey:lightgrey:darkred:navy:blue:darkgreen:violet:pink:brown:darkbrown:darkorange:red:green:white=16:yellow:lightblue:lightgreen:salmon:tan:lightyellow:purple=30:darkpink" 
		-attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_ikControllerAddSub" -longName "WT_ikControllerAddSub" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	addAttr -cachedInternally true -shortName "WT_ikControllerSubColor" -longName "WT_ikControllerSubColor" 
		-minValue 0 -maxValue 31 -enumName "grey:black:darkgrey:lightgrey:darkred:navy:blue:darkgreen:violet:pink:brown:darkbrown:darkorange:red:green:white=16:yellow:lightblue:lightgreen:salmon:tan:lightyellow:purple=30:darkpink" 
		-attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_ikControllerScale" -longName "WT_ikControllerScale" 
		-defaultValue 0.01 -minValue 0.01 -attributeType "float";
	addAttr -cachedInternally true -shortName "WT_ikControllerSubScale" -longName "WT_ikControllerSubScale" 
		-defaultValue 0.01 -minValue 0.01 -attributeType "float";
	addAttr -cachedInternally true -shortName "WT_ikControllerTranslation" -longName "WT_ikControllerTranslation" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "WT_ikControllerTranslationX" -longName "WT_ikControllerTranslationX" 
		-attributeType "float" -parent "WT_ikControllerTranslation";
	addAttr -cachedInternally true -shortName "WT_ikControllerTranslationY" -longName "WT_ikControllerTranslationY" 
		-attributeType "float" -parent "WT_ikControllerTranslation";
	addAttr -cachedInternally true -shortName "WT_ikControllerTranslationZ" -longName "WT_ikControllerTranslationZ" 
		-attributeType "float" -parent "WT_ikControllerTranslation";
	addAttr -cachedInternally true -shortName "WT_ikControllerRotation" -longName "WT_ikControllerRotation" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "WT_ikControllerRotationX" -longName "WT_ikControllerRotationX" 
		-attributeType "float" -parent "WT_ikControllerRotation";
	addAttr -cachedInternally true -shortName "WT_ikControllerRotationY" -longName "WT_ikControllerRotationY" 
		-attributeType "float" -parent "WT_ikControllerRotation";
	addAttr -cachedInternally true -shortName "WT_ikControllerRotationZ" -longName "WT_ikControllerRotationZ" 
		-attributeType "float" -parent "WT_ikControllerRotation";
	addAttr -cachedInternally true -shortName "WT_ikControllerRotateOrder" -longName "WT_ikControllerRotateOrder" 
		-minValue 0 -maxValue 5 -enumName "xyz:yzx:zxy:xzy:yxz:zyx" -attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_ikControllerAim" -longName "WT_ikControllerAim" 
		-minValue 0 -maxValue 5 -enumName "x:y:z:-x:-y:-z" -attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_ikControllerUp" -longName "WT_ikControllerUp" 
		-minValue 0 -maxValue 5 -enumName "x:y:z:-x:-y:-z" -attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_attributesControllerType" -longName "WT_attributesControllerType" 
		-minValue 0 -maxValue 16 -enumName "arrow:ball:box:boxtab:circle:cube:doubletab:foot:footFlat:fourway:hand:head:lever:oneway:prism:saddle:triangle" 
		-attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_attributesControllerColor" -longName "WT_attributesControllerColor" 
		-minValue 0 -maxValue 31 -enumName "grey:black:darkgrey:lightgrey:darkred:navy:blue:darkgreen:violet:pink:brown:darkbrown:darkorange:red:green:white=16:yellow:lightblue:lightgreen:salmon:tan:lightyellow:purple=30:darkpink" 
		-attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_attributesControllerScale" -longName "WT_attributesControllerScale" 
		-defaultValue 0.01 -minValue 0.01 -attributeType "float";
	addAttr -cachedInternally true -shortName "WT_attributesControllerTranslation" -longName "WT_attributesControllerTranslation" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "WT_attributesControllerTranslationX" 
		-longName "WT_attributesControllerTranslationX" -attributeType "float" -parent "WT_attributesControllerTranslation";
	addAttr -cachedInternally true -shortName "WT_attributesControllerTranslationY" 
		-longName "WT_attributesControllerTranslationY" -attributeType "float" -parent "WT_attributesControllerTranslation";
	addAttr -cachedInternally true -shortName "WT_attributesControllerTranslationZ" 
		-longName "WT_attributesControllerTranslationZ" -attributeType "float" -parent "WT_attributesControllerTranslation";
	addAttr -cachedInternally true -shortName "WT_attributesControllerRotation" -longName "WT_attributesControllerRotation" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "WT_attributesControllerRotationX" -longName "WT_attributesControllerRotationX" 
		-attributeType "float" -parent "WT_attributesControllerRotation";
	addAttr -cachedInternally true -shortName "WT_attributesControllerRotationY" -longName "WT_attributesControllerRotationY" 
		-attributeType "float" -parent "WT_attributesControllerRotation";
	addAttr -cachedInternally true -shortName "WT_attributesControllerRotationZ" -longName "WT_attributesControllerRotationZ" 
		-attributeType "float" -parent "WT_attributesControllerRotation";
	addAttr -cachedInternally true -shortName "WT_attributesControllerRotateOrder" -longName "WT_attributesControllerRotateOrder" 
		-minValue 0 -maxValue 5 -enumName "xyz:yzx:zxy:xzy:yxz:zyx" -attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_attributesControllerAim" -longName "WT_attributesControllerAim" 
		-minValue 0 -maxValue 5 -enumName "x:y:z:-x:-y:-z" -attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_attributesControllerUp" -longName "WT_attributesControllerUp" 
		-minValue 0 -maxValue 5 -enumName "x:y:z:-x:-y:-z" -attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_poleControllerType" -longName "WT_poleControllerType" 
		-minValue 0 -maxValue 16 -enumName "arrow:ball:box:boxtab:circle:cube:doubletab:foot:footFlat:fourway:hand:head:lever:oneway:prism:saddle:triangle" 
		-attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_poleControllerColor" -longName "WT_poleControllerColor" 
		-minValue 0 -maxValue 31 -enumName "grey:black:darkgrey:lightgrey:darkred:navy:blue:darkgreen:violet:pink:brown:darkbrown:darkorange:red:green:white=16:yellow:lightblue:lightgreen:salmon:tan:lightyellow:purple=30:darkpink" 
		-attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_poleControllerScale" -longName "WT_poleControllerScale" 
		-defaultValue 0.01 -minValue 0.01 -attributeType "float";
	addAttr -cachedInternally true -shortName "WT_poleControllerTranslation" -longName "WT_poleControllerTranslation" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "WT_poleControllerTranslationX" -longName "WT_poleControllerTranslationX" 
		-attributeType "float" -parent "WT_poleControllerTranslation";
	addAttr -cachedInternally true -shortName "WT_poleControllerTranslationY" -longName "WT_poleControllerTranslationY" 
		-attributeType "float" -parent "WT_poleControllerTranslation";
	addAttr -cachedInternally true -shortName "WT_poleControllerTranslationZ" -longName "WT_poleControllerTranslationZ" 
		-attributeType "float" -parent "WT_poleControllerTranslation";
	addAttr -cachedInternally true -shortName "WT_poleControllerRotation" -longName "WT_poleControllerRotation" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "WT_poleControllerRotationX" -longName "WT_poleControllerRotationX" 
		-attributeType "float" -parent "WT_poleControllerRotation";
	addAttr -cachedInternally true -shortName "WT_poleControllerRotationY" -longName "WT_poleControllerRotationY" 
		-attributeType "float" -parent "WT_poleControllerRotation";
	addAttr -cachedInternally true -shortName "WT_poleControllerRotationZ" -longName "WT_poleControllerRotationZ" 
		-attributeType "float" -parent "WT_poleControllerRotation";
	addAttr -cachedInternally true -shortName "WT_poleControllerRotateOrder" -longName "WT_poleControllerRotateOrder" 
		-minValue 0 -maxValue 5 -enumName "xyz:yzx:zxy:xzy:yxz:zyx" -attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_poleControllerAim" -longName "WT_poleControllerAim" 
		-minValue 0 -maxValue 5 -enumName "x:y:z:-x:-y:-z" -attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_poleControllerUp" -longName "WT_poleControllerUp" 
		-minValue 0 -maxValue 5 -enumName "x:y:z:-x:-y:-z" -attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_token" -longName "WT_token" -dataType "string";
	addAttr -cachedInternally true -shortName "WT_startMode" -longName "WT_startMode" 
		-minValue 0 -maxValue 1 -enumName "FK:IK" -attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_startModeStretch" -longName "WT_startModeStretch" 
		-minValue 0 -maxValue 1 -enumName "no:yes" -attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_reverseStartValue" -longName "WT_reverseStartValue" 
		-minValue 0 -maxValue 1 -enumName "no:yes" -attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_softIKStartValue" -longName "WT_softIKStartValue" 
		-attributeType "float";
	addAttr -cachedInternally true -shortName "WT_orientTipStartValue" -longName "WT_orientTipStartValue" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	addAttr -cachedInternally true -shortName "WT_poleVectorOffset" -longName "WT_poleVectorOffset" 
		-minValue 0 -attributeType "float";
	addAttr -cachedInternally true -shortName "WT_poleVectorStyle" -longName "WT_poleVectorStyle" 
		-minValue 0 -maxValue 2 -enumName "arm:leg:static" -attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_showPoleVectorStart" -longName "WT_showPoleVectorStart" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	addAttr -cachedInternally true -shortName "WT_showPoleIndicatorsStart" -longName "WT_showPoleIndicatorsStart" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	addAttr -cachedInternally true -shortName "WT_attributesControllerAttachIndex" -longName "WT_attributesControllerAttachIndex" 
		-attributeType "short";
	addAttr -cachedInternally true -shortName "WT_ikFkSwitchesControls" -longName "WT_ikFkSwitchesControls" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	addAttr -cachedInternally true -shortName "WT_ikOrientType" -longName "WT_ikOrientType" 
		-minValue 0 -maxValue 2 -enumName "normal:local:world" -attributeType "enum";
	addAttr -cachedInternally true -shortName "WT_addHandAttrs" -longName "WT_addHandAttrs" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	addAttr -cachedInternally true -shortName "WT_addHandScale" -longName "WT_addHandScale" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	addAttr -cachedInternally true -shortName "WT_initialLength" -longName "WT_initialLength" 
		-defaultValue 25 -minValue 25 -attributeType "float";
	addAttr -cachedInternally true -shortName "default_rotationV" -longName "default_rotationV" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "default_rotationVX" -longName "default_rotationVX" 
		-attributeType "float" -parent "default_rotationV";
	addAttr -cachedInternally true -shortName "default_rotationVY" -longName "default_rotationVY" 
		-attributeType "float" -parent "default_rotationV";
	addAttr -cachedInternally true -shortName "default_rotationVZ" -longName "default_rotationVZ" 
		-attributeType "float" -parent "default_rotationV";
	addAttr -cachedInternally true -shortName "default_rotationW" -longName "default_rotationW" 
		-attributeType "float";
	addAttr -cachedInternally true -shortName "default_translation" -longName "default_translation" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "default_translationX" -longName "default_translationX" 
		-attributeType "float" -parent "default_translation";
	addAttr -cachedInternally true -shortName "default_translationY" -longName "default_translationY" 
		-attributeType "float" -parent "default_translation";
	addAttr -cachedInternally true -shortName "default_translationZ" -longName "default_translationZ" 
		-attributeType "float" -parent "default_translation";
	addAttr -cachedInternally true -shortName "default_jointOrient" -longName "default_jointOrient" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "default_jointOrientX" -longName "default_jointOrientX" 
		-attributeType "float" -parent "default_jointOrient";
	addAttr -cachedInternally true -shortName "default_jointOrientY" -longName "default_jointOrientY" 
		-attributeType "float" -parent "default_jointOrient";
	addAttr -cachedInternally true -shortName "default_jointOrientZ" -longName "default_jointOrientZ" 
		-attributeType "float" -parent "default_jointOrient";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	addAttr -storable false -cachedInternally true -shortName "WT_rootInput" -longName "WT_rootInput" 
		-attributeType "message";
	addAttr -storable false -cachedInternally true -shortName "WT_goalInput" -longName "WT_goalInput" 
		-attributeType "message";
	setAttr ".segmentScaleCompensate" no;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "shoulder_01_jnt";
	setAttr -lock on -keyable on ".MODULEROOT";
	setAttr -channelBox on ".WT_side" 1;
	setAttr -channelBox on ".WT_type" -type "string" "LimbVIK";
	setAttr -channelBox on ".WT_hideControls";
	setAttr -channelBox on ".WT_automatedBuildSkip";
	setAttr -size 4 ".WT_controllerCategories";
	setAttr ".WT_controllerCategories[0]" -type "string" "fk";
	setAttr ".WT_controllerCategories[1]" -type "string" "ik";
	setAttr ".WT_controllerCategories[2]" -type "string" "attributes";
	setAttr ".WT_controllerCategories[3]" -type "string" "pole";
	setAttr -channelBox on ".WT_controllerCategories";
	setAttr -channelBox on ".WT_isFacialModule";
	setAttr -lock on -channelBox on ".WT_isParentModule";
	setAttr -channelBox on ".WT_fkControllerType" 3;
	setAttr -channelBox on ".WT_fkControllerSubType" 3;
	setAttr -channelBox on ".WT_fkControllerColor" 6;
	setAttr -channelBox on ".WT_fkControllerAddSub";
	setAttr -channelBox on ".WT_fkControllerSubColor" 18;
	setAttr -channelBox on ".WT_fkControllerScale" 6.6832389831542969;
	setAttr -channelBox on ".WT_fkControllerSubScale" 5.3465909957885742;
	setAttr -channelBox on ".WT_fkControllerTranslation";
	setAttr -channelBox on ".WT_fkControllerTranslationX";
	setAttr -channelBox on ".WT_fkControllerTranslationY";
	setAttr -channelBox on ".WT_fkControllerTranslationZ";
	setAttr -channelBox on ".WT_fkControllerRotation" -type "float3" 90 0 0 ;
	setAttr -channelBox on ".WT_fkControllerRotation";
	setAttr -channelBox on ".WT_fkControllerRotationX";
	setAttr -channelBox on ".WT_fkControllerRotationY";
	setAttr -channelBox on ".WT_fkControllerRotationZ";
	setAttr -channelBox on ".WT_fkControllerRotateOrder" 2;
	setAttr -channelBox on ".WT_fkControllerAim";
	setAttr -channelBox on ".WT_fkControllerUp" 1;
	setAttr -channelBox on ".WT_ikControllerType" 14;
	setAttr -channelBox on ".WT_ikControllerSubType" 14;
	setAttr -channelBox on ".WT_ikControllerColor" 6;
	setAttr -channelBox on ".WT_ikControllerAddSub";
	setAttr -channelBox on ".WT_ikControllerSubColor" 18;
	setAttr -channelBox on ".WT_ikControllerScale" 6.6832389831542969;
	setAttr -channelBox on ".WT_ikControllerSubScale" 5.3465909957885742;
	setAttr -channelBox on ".WT_ikControllerTranslation";
	setAttr -channelBox on ".WT_ikControllerTranslationX";
	setAttr -channelBox on ".WT_ikControllerTranslationY";
	setAttr -channelBox on ".WT_ikControllerTranslationZ";
	setAttr -channelBox on ".WT_ikControllerRotation";
	setAttr -channelBox on ".WT_ikControllerRotationX";
	setAttr -channelBox on ".WT_ikControllerRotationY";
	setAttr -channelBox on ".WT_ikControllerRotationZ";
	setAttr -channelBox on ".WT_ikControllerRotateOrder" 2;
	setAttr -channelBox on ".WT_ikControllerAim";
	setAttr -channelBox on ".WT_ikControllerUp" 1;
	setAttr -channelBox on ".WT_attributesControllerType" 1;
	setAttr -channelBox on ".WT_attributesControllerColor" 18;
	setAttr -channelBox on ".WT_attributesControllerScale" 0.5;
	setAttr -channelBox on ".WT_attributesControllerTranslation" -type "float3" 0 0 
		6.683239 ;
	setAttr -channelBox on ".WT_attributesControllerTranslation";
	setAttr -channelBox on ".WT_attributesControllerTranslationX";
	setAttr -channelBox on ".WT_attributesControllerTranslationY";
	setAttr -channelBox on ".WT_attributesControllerTranslationZ";
	setAttr -channelBox on ".WT_attributesControllerRotation";
	setAttr -channelBox on ".WT_attributesControllerRotationX";
	setAttr -channelBox on ".WT_attributesControllerRotationY";
	setAttr -channelBox on ".WT_attributesControllerRotationZ";
	setAttr -channelBox on ".WT_attributesControllerRotateOrder" 2;
	setAttr -channelBox on ".WT_attributesControllerAim";
	setAttr -channelBox on ".WT_attributesControllerUp" 1;
	setAttr -channelBox on ".WT_poleControllerType" 1;
	setAttr -channelBox on ".WT_poleControllerColor" 18;
	setAttr -channelBox on ".WT_poleControllerScale" 1;
	setAttr -channelBox on ".WT_poleControllerTranslation";
	setAttr -channelBox on ".WT_poleControllerTranslationX";
	setAttr -channelBox on ".WT_poleControllerTranslationY";
	setAttr -channelBox on ".WT_poleControllerTranslationZ";
	setAttr -channelBox on ".WT_poleControllerRotation";
	setAttr -channelBox on ".WT_poleControllerRotationX";
	setAttr -channelBox on ".WT_poleControllerRotationY";
	setAttr -channelBox on ".WT_poleControllerRotationZ";
	setAttr -channelBox on ".WT_poleControllerRotateOrder" 2;
	setAttr -channelBox on ".WT_poleControllerAim";
	setAttr -channelBox on ".WT_poleControllerUp" 1;
	setAttr -channelBox on ".WT_token" -type "string" "ARM";
	setAttr -channelBox on ".WT_startMode" 1;
	setAttr -channelBox on ".WT_startModeStretch" 1;
	setAttr -channelBox on ".WT_reverseStartValue";
	setAttr -channelBox on ".WT_softIKStartValue";
	setAttr -channelBox on ".WT_orientTipStartValue" yes;
	setAttr -channelBox on ".WT_poleVectorOffset" 16.709999084472656;
	setAttr -channelBox on ".WT_poleVectorStyle";
	setAttr -channelBox on ".WT_showPoleVectorStart";
	setAttr -channelBox on ".WT_showPoleIndicatorsStart" yes;
	setAttr -channelBox on ".WT_attributesControllerAttachIndex" 2;
	setAttr -channelBox on ".WT_ikFkSwitchesControls" yes;
	setAttr -channelBox on ".WT_ikOrientType";
	setAttr -channelBox on ".WT_addHandAttrs" yes;
	setAttr -channelBox on ".WT_addHandScale" yes;
	setAttr -channelBox on ".WT_initialLength" 100;
	setAttr ".default_rotationV" -type "float3" 0.27059805 -0.65328151 -0.27059805 ;
	setAttr ".default_rotationW" 0.65328150987625122;
	setAttr ".default_translation" -type "float3" 0 8 0 ;
	setAttr ".default_jointOrient" -type "float3" 7.0622502e-31 0 0 ;
createNode joint -name "elbow_lf_01_jnt" -parent "shoulder_lf_01_jnt";
	rename -uuid "7C2066BB-6841-1657-05DC-F4B19D27138D";
	addAttr -cachedInternally true -shortName "default_rotationV" -longName "default_rotationV" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "default_rotationVX" -longName "default_rotationVX" 
		-attributeType "float" -parent "default_rotationV";
	addAttr -cachedInternally true -shortName "default_rotationVY" -longName "default_rotationVY" 
		-attributeType "float" -parent "default_rotationV";
	addAttr -cachedInternally true -shortName "default_rotationVZ" -longName "default_rotationVZ" 
		-attributeType "float" -parent "default_rotationV";
	addAttr -cachedInternally true -shortName "default_rotationW" -longName "default_rotationW" 
		-attributeType "float";
	addAttr -cachedInternally true -shortName "default_translation" -longName "default_translation" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "default_translationX" -longName "default_translationX" 
		-attributeType "float" -parent "default_translation";
	addAttr -cachedInternally true -shortName "default_translationY" -longName "default_translationY" 
		-attributeType "float" -parent "default_translation";
	addAttr -cachedInternally true -shortName "default_translationZ" -longName "default_translationZ" 
		-attributeType "float" -parent "default_translation";
	addAttr -cachedInternally true -shortName "default_jointOrient" -longName "default_jointOrient" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "default_jointOrientX" -longName "default_jointOrientX" 
		-attributeType "float" -parent "default_jointOrient";
	addAttr -cachedInternally true -shortName "default_jointOrientY" -longName "default_jointOrientY" 
		-attributeType "float" -parent "default_jointOrient";
	addAttr -cachedInternally true -shortName "default_jointOrientZ" -longName "default_jointOrientZ" 
		-attributeType "float" -parent "default_jointOrient";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".segmentScaleCompensate" no;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "elbow_01_jnt";
	setAttr ".default_rotationV" -type "float3" 0.65328151 -0.27059805 -0.65328151 ;
	setAttr ".default_rotationW" 0.27059805393218994;
	setAttr ".default_translation" -type "float3" -1.3322676e-15 4 4 ;
createNode joint -name "wrist_lf_01_jnt" -parent "elbow_lf_01_jnt";
	rename -uuid "9AA62C23-EE44-A554-A105-99A2083FAA87";
	addAttr -cachedInternally true -shortName "default_rotationV" -longName "default_rotationV" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "default_rotationVX" -longName "default_rotationVX" 
		-attributeType "float" -parent "default_rotationV";
	addAttr -cachedInternally true -shortName "default_rotationVY" -longName "default_rotationVY" 
		-attributeType "float" -parent "default_rotationV";
	addAttr -cachedInternally true -shortName "default_rotationVZ" -longName "default_rotationVZ" 
		-attributeType "float" -parent "default_rotationV";
	addAttr -cachedInternally true -shortName "default_rotationW" -longName "default_rotationW" 
		-attributeType "float";
	addAttr -cachedInternally true -shortName "default_translation" -longName "default_translation" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "default_translationX" -longName "default_translationX" 
		-attributeType "float" -parent "default_translation";
	addAttr -cachedInternally true -shortName "default_translationY" -longName "default_translationY" 
		-attributeType "float" -parent "default_translation";
	addAttr -cachedInternally true -shortName "default_translationZ" -longName "default_translationZ" 
		-attributeType "float" -parent "default_translation";
	addAttr -cachedInternally true -shortName "default_jointOrient" -longName "default_jointOrient" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "default_jointOrientX" -longName "default_jointOrientX" 
		-attributeType "float" -parent "default_jointOrient";
	addAttr -cachedInternally true -shortName "default_jointOrientY" -longName "default_jointOrientY" 
		-attributeType "float" -parent "default_jointOrient";
	addAttr -cachedInternally true -shortName "default_jointOrientZ" -longName "default_jointOrientZ" 
		-attributeType "float" -parent "default_jointOrient";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".segmentScaleCompensate" no;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "wrist_01_jnt";
	setAttr ".default_rotationV" -type "float3" 0.65328151 -0.27059805 -0.65328151 ;
	setAttr ".default_rotationW" 0.27059805393218994;
	setAttr ".default_translation" -type "float3" -3.6065909e-15 1.3691417e-07 -2.220446e-15 ;
createNode joint -name "wrist_lf_01_jnt1" -parent "wrist_lf_01_jnt";
	rename -uuid "1A7061CE-A648-D10A-84C5-D9956CBAAD05";
	addAttr -cachedInternally true -shortName "default_rotationV" -longName "default_rotationV" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "default_rotationVX" -longName "default_rotationVX" 
		-attributeType "float" -parent "default_rotationV";
	addAttr -cachedInternally true -shortName "default_rotationVY" -longName "default_rotationVY" 
		-attributeType "float" -parent "default_rotationV";
	addAttr -cachedInternally true -shortName "default_rotationVZ" -longName "default_rotationVZ" 
		-attributeType "float" -parent "default_rotationV";
	addAttr -cachedInternally true -shortName "default_rotationW" -longName "default_rotationW" 
		-attributeType "float";
	addAttr -cachedInternally true -shortName "default_translation" -longName "default_translation" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "default_translationX" -longName "default_translationX" 
		-attributeType "float" -parent "default_translation";
	addAttr -cachedInternally true -shortName "default_translationY" -longName "default_translationY" 
		-attributeType "float" -parent "default_translation";
	addAttr -cachedInternally true -shortName "default_translationZ" -longName "default_translationZ" 
		-attributeType "float" -parent "default_translation";
	addAttr -cachedInternally true -shortName "default_jointOrient" -longName "default_jointOrient" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "default_jointOrientX" -longName "default_jointOrientX" 
		-attributeType "float" -parent "default_jointOrient";
	addAttr -cachedInternally true -shortName "default_jointOrientY" -longName "default_jointOrientY" 
		-attributeType "float" -parent "default_jointOrient";
	addAttr -cachedInternally true -shortName "default_jointOrientZ" -longName "default_jointOrientZ" 
		-attributeType "float" -parent "default_jointOrient";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".translate" -type "double3" 2.0527695427914101 5.0081029470691401e-16 -3.4185480159844178e-16 ;
	setAttr ".rotate" -type "double3" -4.1666872708896242e-14 -7.7173197333075273e-16 
		-6.361109362927032e-15 ;
	setAttr ".jointOrient" -type "double3" 7.0622500768802538e-31 0 0 ;
	setAttr ".segmentScaleCompensate" no;
	setAttr ".side" 1;
	setAttr ".type" 18;
	setAttr ".otherType" -type "string" "wrist_01_jnt1";
	setAttr ".default_rotationV" -type "float3" 0.65328151 -0.27059805 -0.65328151 ;
	setAttr ".default_rotationW" 0.27059805393218994;
	setAttr ".default_translation" -type "float3" -3.6065909e-15 -1.4515271 -1.4515272 ;
	setAttr ".default_jointOrient" -type "float3" 7.0622502e-31 0 0 ;
createNode parentConstraint -name "shoulder_lf_01_jnt__rigRoot_parentConstraint1" 
		-parent "shoulder_lf_01_jnt__rigRoot";
	rename -uuid "B52E65D6-1C45-5CDA-E9D7-CCB16E26FAB0";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "ARM_ROOT_LF_01_INPUTW0" -defaultValue 1 -minValue 0 -attributeType "double";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr -keyable on ".ARM_ROOT_LF_01_INPUTW0";
createNode scaleConstraint -name "shoulder_lf_01_jnt__rigRoot_scaleConstraint1" -parent
		 "shoulder_lf_01_jnt__rigRoot";
	rename -uuid "5C410E7B-5048-5732-579D-1E89EE61E6EA";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "ARM_ROOT_LF_01_INPUTW0" -defaultValue 1 -minValue 0 -attributeType "double";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr -keyable on ".ARM_ROOT_LF_01_INPUTW0";
createNode transform -name "modules";
	rename -uuid "2A2F2370-2E4B-6306-4470-0180A5A048B7";
	setAttr -lock on -keyable off ".translateX";
	setAttr -lock on -keyable off ".translateY";
	setAttr -lock on -keyable off ".translateZ";
	setAttr -lock on -keyable off ".rotateX";
	setAttr -lock on -keyable off ".rotateY";
	setAttr -lock on -keyable off ".rotateZ";
	setAttr -lock on -keyable off ".scaleX";
	setAttr -lock on -keyable off ".scaleY";
	setAttr -lock on -keyable off ".scaleZ";
	setAttr ".inheritsTransform" no;
createNode transform -name "ARM_LF_MODULE" -parent "modules";
	rename -uuid "33C9713C-2344-8ECC-C3C7-0FA70B32A854";
	addAttr -cachedInternally true -shortName "MODULE_TRANSFORM" -longName "MODULE_TRANSFORM" 
		-minValue 0 -maxValue 1 -attributeType "bool";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	addAttr -storable false -cachedInternally true -shortName "controls" -longName "controls" 
		-attributeType "message";
	addAttr -storable false -cachedInternally true -shortName "rig" -longName "rig" 
		-attributeType "message";
	addAttr -storable false -cachedInternally true -shortName "extras" -longName "extras" 
		-attributeType "message";
	addAttr -storable false -cachedInternally true -multi -shortName "chain" -longName "chain" 
		-attributeType "message";
	addAttr -cachedInternally true -shortName "hash" -longName "hash" -dataType "string";
	addAttr -cachedInternally true -shortName "enable" -longName "enable" -minValue 
		0 -maxValue 1 -attributeType "bool";
	addAttr -cachedInternally true -shortName "frozen_sum" -longName "frozen_sum" -minValue 
		0 -maxValue 1 -attributeType "bool";
	addAttr -storable false -cachedInternally true -multi -shortName "freezeNodes" -longName "freezeNodes" 
		-attributeType "message";
	addAttr -storable false -cachedInternally true -shortName "goal" -longName "goal" 
		-attributeType "message";
	addAttr -storable false -cachedInternally true -shortName "attributes" -longName "attributes" 
		-attributeType "message";
	addAttr -storable false -cachedInternally true -shortName "ikDriver" -longName "ikDriver" 
		-attributeType "message";
	addAttr -storable false -cachedInternally true -shortName "pole" -longName "pole" 
		-attributeType "message";
	addAttr -storable false -cachedInternally true -multi -shortName "nodes" -longName "nodes" 
		-attributeType "message";
	addAttr -storable false -cachedInternally true -multi -shortName "fkControls" -longName "fkControls" 
		-attributeType "message";
	addAttr -storable false -cachedInternally true -multi -shortName "ikControls" -longName "ikControls" 
		-attributeType "message";
	addAttr -storable false -cachedInternally true -multi -shortName "attributesControls" 
		-longName "attributesControls" -attributeType "message";
	addAttr -storable false -cachedInternally true -multi -shortName "poleControls" 
		-longName "poleControls" -attributeType "message";
	setAttr -channelBox on ".hideOnPlayback";
	setAttr ".translate" -type "double3" 0 8 0 ;
	setAttr ".rotate" -type "double3" 89.999999999999986 -45 -90 ;
	setAttr -lock on ".MODULE_TRANSFORM" yes;
	setAttr -size 4 ".chain";
	setAttr -lock on -channelBox on ".hash" -type "string" "0x5a65622b";
	setAttr -channelBox on ".enable" yes;
	setAttr -size 3 ".freezeNodes";
	setAttr -size 92 ".nodes";
	setAttr -size 3 ".fkControls";
createNode transform -name "ARM_LF_MODULE_controls" -parent "ARM_LF_MODULE";
	rename -uuid "8B74966B-2C49-9DFC-B3D0-CCBE7C967E04";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	addAttr -storable false -cachedInternally true -multi -shortName "constraints" -longName "constraints" 
		-attributeType "message";
	setAttr -size 2 ".constraints";
createNode transform -name "ARM__FKSHOULDER_LF_01_CONZero" -parent "ARM_LF_MODULE_controls";
	rename -uuid "345CFCB2-0C4B-58BD-462F-4FA37B021E15";
	addAttr -cachedInternally true -shortName "origScale" -longName "origScale" -attributeType "double";
	addAttr -cachedInternally true -shortName "aim" -longName "aim" -dataType "string";
	addAttr -cachedInternally true -shortName "up" -longName "up" -dataType "string";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".rotateOrder" 2;
	setAttr ".scale" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999978 ;
	setAttr -lock on ".origScale" 6.6832389831542969;
	setAttr -lock on ".aim" -type "string" "x";
	setAttr -lock on ".up" -type "string" "y";
createNode transform -name "ARM__FKSHOULDER_LF_01_CON" -parent "ARM__FKSHOULDER_LF_01_CONZero";
	rename -uuid "EC409AEE-B04C-548C-A72C-C18B8E114C67";
	addAttr -cachedInternally true -shortName "origScale" -longName "origScale" -attributeType "double";
	addAttr -cachedInternally true -shortName "aim" -longName "aim" -dataType "string";
	addAttr -cachedInternally true -shortName "up" -longName "up" -dataType "string";
	addAttr -storable false -cachedInternally true -shortName "target" -longName "target" 
		-attributeType "message";
	addAttr -cachedInternally true -shortName "con_category" -longName "con_category" 
		-dataType "string";
	addAttr -cachedInternally true -shortName "con_name" -longName "con_name" -dataType "string";
	addAttr -cachedInternally true -shortName "con_index" -longName "con_index" -attributeType "short";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr -lock on -keyable off ".visibility";
	setAttr ".overrideEnabled" yes;
	setAttr ".rotateOrder" 2;
	setAttr -lock on -keyable off ".scaleX";
	setAttr -lock on -keyable off ".scaleY";
	setAttr -lock on -keyable off ".scaleZ";
	setAttr -lock on ".origScale" 6.6832389831542969;
	setAttr -lock on ".aim" -type "string" "x";
	setAttr -lock on ".up" -type "string" "y";
	setAttr -channelBox on ".con_category" -type "string" "fk";
	setAttr -lock on -channelBox on ".con_name" -type "string" "FKSHOULDER";
	setAttr -lock on ".con_index";
createNode nurbsCurve -name "ARM__FKSHOULDER_LF_01_CONShape" -parent "ARM__FKSHOULDER_LF_01_CON";
	rename -uuid "82C698F5-4442-C5A1-5708-96BFCA395B68";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 0 0
		-2.6645352591003757e-15 1.2984800146798062e-15 4.6782672882080094
		-2.6645352591003757e-15 1.0024858474731462 4.6782672882080094
		-1.7763568394002505e-15 1.0024858474731466 6.6832389831542987
		-1.7763568394002505e-15 1.8549714495425802e-15 6.6832389831542987
		-1.7763568394002505e-15 -1.0024858474731431 6.6832389831542987
		-2.6645352591003757e-15 -1.0024858474731435 4.6782672882080094
		-2.6645352591003757e-15 1.2984800146798062e-15 4.6782672882080094
		0 0 0
		;
createNode transform -name "ARM__FKELBOW_LF_01_CONZero" -parent "ARM__FKSHOULDER_LF_01_CON";
	rename -uuid "EC2AFD68-7842-4A10-783C-A6B4FC216D3D";
	addAttr -cachedInternally true -shortName "origScale" -longName "origScale" -attributeType "double";
	addAttr -cachedInternally true -shortName "aim" -longName "aim" -dataType "string";
	addAttr -cachedInternally true -shortName "up" -longName "up" -dataType "string";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 5.6568541526794442 0 1.332267629550188e-15 ;
	setAttr ".rotate" -type "double3" 0 0 -90.000000000000028 ;
	setAttr ".rotateOrder" 2;
	setAttr ".scale" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr -lock on ".origScale" 6.6832389831542969;
	setAttr -lock on ".aim" -type "string" "x";
	setAttr -lock on ".up" -type "string" "y";
createNode transform -name "ARM__FKELBOW_LF_01_CON" -parent "ARM__FKELBOW_LF_01_CONZero";
	rename -uuid "9E74A815-FF4C-8B1D-0384-18B74D00A195";
	addAttr -cachedInternally true -shortName "origScale" -longName "origScale" -attributeType "double";
	addAttr -cachedInternally true -shortName "aim" -longName "aim" -dataType "string";
	addAttr -cachedInternally true -shortName "up" -longName "up" -dataType "string";
	addAttr -storable false -cachedInternally true -shortName "target" -longName "target" 
		-attributeType "message";
	addAttr -cachedInternally true -shortName "con_category" -longName "con_category" 
		-dataType "string";
	addAttr -cachedInternally true -shortName "con_name" -longName "con_name" -dataType "string";
	addAttr -cachedInternally true -shortName "con_index" -longName "con_index" -attributeType "short";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr -lock on -keyable off ".visibility";
	setAttr ".overrideEnabled" yes;
	setAttr ".rotateOrder" 2;
	setAttr -lock on -keyable off ".scaleX";
	setAttr -lock on -keyable off ".scaleY";
	setAttr -lock on -keyable off ".scaleZ";
	setAttr -lock on ".origScale" 6.6832389831542969;
	setAttr -lock on ".aim" -type "string" "x";
	setAttr -lock on ".up" -type "string" "y";
	setAttr -channelBox on ".con_category" -type "string" "fk";
	setAttr -lock on -channelBox on ".con_name" -type "string" "FKELBOW";
	setAttr -lock on ".con_index" 1;
createNode nurbsCurve -name "ARM__FKELBOW_LF_01_CONShape" -parent "ARM__FKELBOW_LF_01_CON";
	rename -uuid "2A323710-5E44-71DF-079C-D297850EA141";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 0 -1.9721522630525295e-31
		-2.6645352591003757e-15 1.2984800146798058e-15 4.6782672882080094
		-2.6645352591003757e-15 1.002485847473146 4.6782672882080094
		-2.6645352591003757e-15 1.0024858474731466 6.6832389831543004
		-2.6645352591003757e-15 1.8549714495425798e-15 6.6832389831543004
		-2.6645352591003757e-15 -1.0024858474731426 6.6832389831543004
		-2.6645352591003757e-15 -1.0024858474731433 4.6782672882080094
		-2.6645352591003757e-15 1.2984800146798058e-15 4.6782672882080094
		0 0 -1.9721522630525295e-31
		;
createNode transform -name "ARM__FKWRIST_LF_01_CONZero" -parent "ARM__FKELBOW_LF_01_CON";
	rename -uuid "A4309238-3144-9FCD-7777-67B5A01ED28A";
	addAttr -cachedInternally true -shortName "origScale" -longName "origScale" -attributeType "double";
	addAttr -cachedInternally true -shortName "aim" -longName "aim" -dataType "string";
	addAttr -cachedInternally true -shortName "up" -longName "up" -dataType "string";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 5.6568541526794442 1.1835726500209205e-15 1.332267629550189e-15 ;
	setAttr ".rotateOrder" 2;
	setAttr ".scale" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
	setAttr -lock on ".origScale" 6.6832389831542969;
	setAttr -lock on ".aim" -type "string" "x";
	setAttr -lock on ".up" -type "string" "y";
createNode transform -name "ARM__FKWRIST_LF_01_CON" -parent "ARM__FKWRIST_LF_01_CONZero";
	rename -uuid "CD233F49-EC4B-438D-A23A-B08DFE07CFAC";
	addAttr -cachedInternally true -shortName "origScale" -longName "origScale" -attributeType "double";
	addAttr -cachedInternally true -shortName "aim" -longName "aim" -dataType "string";
	addAttr -cachedInternally true -shortName "up" -longName "up" -dataType "string";
	addAttr -storable false -cachedInternally true -shortName "target" -longName "target" 
		-attributeType "message";
	addAttr -cachedInternally true -shortName "con_category" -longName "con_category" 
		-dataType "string";
	addAttr -cachedInternally true -shortName "con_name" -longName "con_name" -dataType "string";
	addAttr -cachedInternally true -shortName "con_index" -longName "con_index" -attributeType "short";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr -lock on -keyable off ".visibility";
	setAttr ".overrideEnabled" yes;
	setAttr ".rotateOrder" 2;
	setAttr -lock on -keyable off ".scaleX";
	setAttr -lock on -keyable off ".scaleY";
	setAttr -lock on -keyable off ".scaleZ";
	setAttr -lock on ".origScale" 6.6832389831542969;
	setAttr -lock on ".aim" -type "string" "x";
	setAttr -lock on ".up" -type "string" "y";
	setAttr -channelBox on ".con_category" -type "string" "fk";
	setAttr -lock on -channelBox on ".con_name" -type "string" "FKWRIST";
	setAttr -lock on ".con_index" 2;
createNode nurbsCurve -name "ARM__FKWRIST_LF_01_CONShape" -parent "ARM__FKWRIST_LF_01_CON";
	rename -uuid "0ACE18E4-894E-348F-4304-CCAC14533842";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		-1.3234889800848443e-23 -1.3234889800848443e-23 0
		-2.8614193723670387e-15 -1.3234890984139798e-23 4.6782672882080085
		-2.8614193723670387e-15 1.0024858474731446 4.6782672882080085
		-3.7495977920671639e-15 1.0024858474731446 6.6832389831542995
		-3.3055085822171013e-15 -1.3234892364646382e-23 6.6832389831542995
		-2.8614193723670387e-15 -1.0024858474731446 6.6832389831542995
		-2.8614193723670387e-15 -1.0024858474731446 4.6782672882080085
		-2.8614193723670387e-15 -1.3234890984139798e-23 4.6782672882080085
		-1.3234889800848443e-23 -1.3234889800848443e-23 0
		;
createNode transform -name "ARM__ATTRS_LF_01_CONZero" -parent "ARM_LF_MODULE_controls";
	rename -uuid "5510F939-0E4B-48FF-7DF7-CC8A3B731EAB";
	addAttr -cachedInternally true -shortName "origScale" -longName "origScale" -attributeType "double";
	addAttr -cachedInternally true -shortName "aim" -longName "aim" -dataType "string";
	addAttr -cachedInternally true -shortName "up" -longName "up" -dataType "string";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 18;
	setAttr ".rotateOrder" 2;
	setAttr ".scale" -type "double3" 1 1.0000000000000002 0.99999999999999978 ;
	setAttr -lock on ".origScale" 0.5;
	setAttr -lock on ".aim" -type "string" "x";
	setAttr -lock on ".up" -type "string" "y";
createNode transform -name "ARM__ATTRS_LF_01_CON" -parent "ARM__ATTRS_LF_01_CONZero";
	rename -uuid "CEDFE36C-494F-C328-D949-85B01062B459";
	addAttr -cachedInternally true -shortName "origScale" -longName "origScale" -attributeType "double";
	addAttr -cachedInternally true -shortName "aim" -longName "aim" -dataType "string";
	addAttr -cachedInternally true -shortName "up" -longName "up" -dataType "string";
	addAttr -storable false -cachedInternally true -shortName "target" -longName "target" 
		-attributeType "message";
	addAttr -cachedInternally true -shortName "con_category" -longName "con_category" 
		-dataType "string";
	addAttr -cachedInternally true -shortName "con_name" -longName "con_name" -dataType "string";
	addAttr -cachedInternally true -shortName "con_index" -longName "con_index" -attributeType "short";
	addAttr -cachedInternally true -shortName "showIkControls" -longName "showIkControls" 
		-minValue 0 -maxValue 1 -attributeType "double";
	addAttr -cachedInternally true -shortName "showFkControls" -longName "showFkControls" 
		-minValue 0 -maxValue 1 -attributeType "double";
	addAttr -cachedInternally true -shortName "fkIkBlend" -longName "fkIkBlend" -defaultValue 
		1 -minValue 0 -maxValue 1 -attributeType "double";
	addAttr -cachedInternally true -shortName "length" -longName "length" -defaultValue 
		100 -minValue 0 -attributeType "double";
	addAttr -cachedInternally true -shortName "upperLength" -longName "upperLength" 
		-defaultValue 100 -minValue 0 -attributeType "double";
	addAttr -cachedInternally true -shortName "lowerLength" -longName "lowerLength" 
		-defaultValue 100 -minValue 0 -attributeType "double";
	addAttr -cachedInternally true -shortName "lengthBoost" -longName "lengthBoost" 
		-attributeType "double";
	addAttr -cachedInternally true -shortName "twisterScaleComp" -longName "twisterScaleComp" 
		-attributeType "double";
	addAttr -cachedInternally true -shortName "upperLengthOrig" -longName "upperLengthOrig" 
		-attributeType "double";
	addAttr -cachedInternally true -shortName "lowerLengthOrig" -longName "lowerLengthOrig" 
		-attributeType "double";
	addAttr -cachedInternally true -shortName "lengthCurrent" -longName "lengthCurrent" 
		-attributeType "double";
	addAttr -cachedInternally true -shortName "upperLengthCurrent" -longName "upperLengthCurrent" 
		-attributeType "double";
	addAttr -cachedInternally true -shortName "lowerLengthCurrent" -longName "lowerLengthCurrent" 
		-attributeType "double";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr -lock on -keyable off ".visibility";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 17;
	setAttr ".translate" -type "double3" -1.3234889800848443e-23 -1.3234889800848443e-23 
		0 ;
	setAttr -lock on -keyable off ".translateX";
	setAttr -lock on -keyable off ".translateY";
	setAttr -lock on -keyable off ".translateZ";
	setAttr -lock on -keyable off ".rotateX";
	setAttr -lock on -keyable off ".rotateY";
	setAttr -lock on -keyable off ".rotateZ";
	setAttr ".rotateOrder" 2;
	setAttr -lock on -keyable off ".scaleX";
	setAttr -lock on -keyable off ".scaleY";
	setAttr -lock on -keyable off ".scaleZ";
	setAttr -lock on ".origScale" 0.5;
	setAttr -lock on ".aim" -type "string" "x";
	setAttr -lock on ".up" -type "string" "y";
	setAttr -channelBox on ".con_category" -type "string" "attributes";
	setAttr -lock on -channelBox on ".con_name" -type "string" "ATTRS";
	setAttr -lock on ".con_index";
	setAttr -keyable on ".fkIkBlend";
	setAttr -keyable on ".length";
	setAttr -keyable on ".upperLength";
	setAttr -keyable on ".lowerLength";
	setAttr ".upperLengthOrig" 5.6568541526794442;
	setAttr ".lowerLengthOrig" 5.6568541526794442;
createNode nurbsCurve -name "ARM__ATTRS_LF_01_CONShape" -parent "ARM__ATTRS_LF_01_CON";
	rename -uuid "6E23651F-264E-9630-1833-4FB2CBE4F372";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		2.2623050171603447 1.4771729199610293e-16 5.8316460606069791
		2.1710974581598643 1.9834765800719751e-16 5.3756082656045745
		1.8062672221579379 1.4771729199610293e-16 5.0107780296026467
		1.3502294271555302 -9.7563812959808933e-17 4.9195704706021663
		0.89419163215312247 -3.5858636811485637e-16 5.0107780296026467
		0.52936139615119704 -5.6110783215924104e-16 5.3756082656045745
		0.43815383715071554 -8.1425966221472029e-16 5.8316460606069791
		0.52936139615119726 -8.1425966221472029e-16 6.2876838556093881
		0.89419163215312314 -7.1299893019252796e-16 6.6525140916113106
		1.3502294271555306 -5.2717674350579116e-16 6.7437216506117972
		1.8062672221579379 -2.8264081909821252e-16 6.6525140916113106
		2.1710974581598643 -5.4804172048280951e-17 6.2876838556093881
		2.2623050171603447 1.4771729199610293e-16 5.8316460606069791
		2.1710974581598634 0.36483023600192599 5.8316460606069791
		1.9886823401589009 0.63845291300337015 5.8316460606069791
		1.7150596631574562 0.82086803100433336 5.8316460606069791
		1.3502294271555297 0.91207559000481431 5.8316460606069791
		0.98539919115360375 0.82086803100433303 5.8316460606069791
		0.71177651415215981 0.63845291300336948 5.8316460606069791
		0.52936139615119704 0.3648302360019251 5.8316460606069791
		0.43815383715071554 -8.1425966221472029e-16 5.8316460606069791
		0.52936139615119726 -0.3648302360019266 5.8316460606069791
		0.71177651415216103 -0.63845291300337104 5.8316460606069791
		0.98539919115360464 -0.82086803100433414 5.8316460606069791
		1.3502294271555308 -0.91207559000481564 5.8316460606069791
		1.7150596631574566 -0.82086803100433359 5.8316460606069791
		1.9886823401589018 -0.6384529130033707 5.8316460606069791
		2.1710974581598643 -0.36483023600192599 5.8316460606069791
		2.2623050171603447 1.4771729199610293e-16 5.8316460606069791
		2.1710974581598634 0.36483023600192599 5.8316460606069791
		1.9886823401589009 0.63845291300337015 5.8316460606069791
		1.7150596631574562 0.82086803100433336 5.8316460606069791
		1.3502294271555297 0.91207559000481431 5.8316460606069791
		1.3502294271555302 0.82086803100433303 6.1964762966089051
		1.3502294271555302 0.63845291300336993 6.4700989736103489
		1.3502294271555304 0.36483023600192532 6.6525140916113106
		1.3502294271555306 -5.2717674350579116e-16 6.7437216506117972
		1.3502294271555306 -0.36483023600192643 6.6525140916113106
		1.3502294271555308 -0.63845291300337093 6.4700989736103489
		1.3502294271555308 -0.82086803100433414 6.1964762966089051
		1.3502294271555308 -0.91207559000481564 5.8316460606069791
		1.3502294271555306 -0.82086803100433359 5.4668158246050549
		1.3502294271555306 -0.63845291300337081 5.1931931476036111
		1.3502294271555302 -0.3648302360019261 5.0107780296026467
		1.3502294271555302 -9.7563812959808933e-17 4.9195704706021663
		1.35022942715553 0.36483023600192577 5.0107780296026467
		1.3502294271555297 0.63845291300337015 5.1931931476036111
		1.3502294271555297 0.82086803100433325 5.4668158246050549
		1.3502294271555297 0.91207559000481431 5.8316460606069791
		;
createNode parentConstraint -name "ARM__ATTRS_LF_01_CONZero_parentConstraint1" -parent
		 "ARM__ATTRS_LF_01_CONZero";
	rename -uuid "8FE93829-114E-4118-1056-3C96D53807D6";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "wrist_lf_01_jntW0" -defaultValue 1 -minValue 0 -attributeType "double";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".target[0].targetOffsetTranslate" -type "double3" 3.1401848636255743e-16 
		-3.1401848636255743e-16 0 ;
	setAttr ".lastTargetRotate" -type "double3" 0 0 -90.000000000000028 ;
	setAttr ".restTranslate" -type "double3" 5.6568541526794416 -5.6568541526794451 
		2.6645352591003761e-15 ;
	setAttr ".restRotate" -type "double3" 0 0 -90.000000000000028 ;
	setAttr -keyable on ".wrist_lf_01_jntW0";
createNode joint -name "ARM_distanceAim_lf_01_EM" -parent "ARM_LF_MODULE_controls";
	rename -uuid "05575E0B-1844-CC4C-F2C4-678FC8B37130";
	addAttr -cachedInternally true -shortName "default_rotationV" -longName "default_rotationV" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "default_rotationVX" -longName "default_rotationVX" 
		-attributeType "float" -parent "default_rotationV";
	addAttr -cachedInternally true -shortName "default_rotationVY" -longName "default_rotationVY" 
		-attributeType "float" -parent "default_rotationV";
	addAttr -cachedInternally true -shortName "default_rotationVZ" -longName "default_rotationVZ" 
		-attributeType "float" -parent "default_rotationV";
	addAttr -cachedInternally true -shortName "default_rotationW" -longName "default_rotationW" 
		-attributeType "float";
	addAttr -cachedInternally true -shortName "default_translation" -longName "default_translation" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "default_translationX" -longName "default_translationX" 
		-attributeType "float" -parent "default_translation";
	addAttr -cachedInternally true -shortName "default_translationY" -longName "default_translationY" 
		-attributeType "float" -parent "default_translation";
	addAttr -cachedInternally true -shortName "default_translationZ" -longName "default_translationZ" 
		-attributeType "float" -parent "default_translation";
	addAttr -cachedInternally true -shortName "default_jointOrient" -longName "default_jointOrient" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "default_jointOrientX" -longName "default_jointOrientX" 
		-attributeType "float" -parent "default_jointOrient";
	addAttr -cachedInternally true -shortName "default_jointOrientY" -longName "default_jointOrientY" 
		-attributeType "float" -parent "default_jointOrient";
	addAttr -cachedInternally true -shortName "default_jointOrientZ" -longName "default_jointOrientZ" 
		-attributeType "float" -parent "default_jointOrient";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".jointOrient" -type "double3" 0 0 -45.000000000000028 ;
	setAttr ".drawStyle" 2;
	setAttr ".default_rotationV" -type "float3" 0.5 -0.5 -0.5 ;
	setAttr ".default_rotationW" 0.5;
	setAttr ".default_translation" -type "float3" 0 8 0 ;
	setAttr ".default_jointOrient" -type "float3" 0 0 -45 ;
createNode joint -name "ARM_distanceAim_lf_02_EM" -parent "ARM_distanceAim_lf_01_EM";
	rename -uuid "919FF826-CC4F-2965-FEFF-0CAD5D0B8CA6";
	addAttr -cachedInternally true -shortName "default_rotationV" -longName "default_rotationV" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "default_rotationVX" -longName "default_rotationVX" 
		-attributeType "float" -parent "default_rotationV";
	addAttr -cachedInternally true -shortName "default_rotationVY" -longName "default_rotationVY" 
		-attributeType "float" -parent "default_rotationV";
	addAttr -cachedInternally true -shortName "default_rotationVZ" -longName "default_rotationVZ" 
		-attributeType "float" -parent "default_rotationV";
	addAttr -cachedInternally true -shortName "default_rotationW" -longName "default_rotationW" 
		-attributeType "float";
	addAttr -cachedInternally true -shortName "default_translation" -longName "default_translation" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "default_translationX" -longName "default_translationX" 
		-attributeType "float" -parent "default_translation";
	addAttr -cachedInternally true -shortName "default_translationY" -longName "default_translationY" 
		-attributeType "float" -parent "default_translation";
	addAttr -cachedInternally true -shortName "default_translationZ" -longName "default_translationZ" 
		-attributeType "float" -parent "default_translation";
	addAttr -cachedInternally true -shortName "default_jointOrient" -longName "default_jointOrient" 
		-attributeType "float3" -numberOfChildren 3;
	addAttr -cachedInternally true -shortName "default_jointOrientX" -longName "default_jointOrientX" 
		-attributeType "float" -parent "default_jointOrient";
	addAttr -cachedInternally true -shortName "default_jointOrientY" -longName "default_jointOrientY" 
		-attributeType "float" -parent "default_jointOrient";
	addAttr -cachedInternally true -shortName "default_jointOrientZ" -longName "default_jointOrientZ" 
		-attributeType "float" -parent "default_jointOrient";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".visibility" no;
	setAttr ".translate" -type "double3" 7.9999998630858311 -8.8817845010117777e-16 
		2.6645352591003761e-15 ;
	setAttr ".drawStyle" 2;
	setAttr ".default_rotationV" -type "float3" 0.5 -0.5 -0.5 ;
	setAttr ".default_rotationW" 0.5;
	setAttr ".default_translation" -type "float3" -3.6065909e-15 1.3691417e-07 -3.9968029e-15 ;
createNode ikEffector -name "ARM__ikSC_lf_01_effector" -parent "ARM_distanceAim_lf_01_EM";
	rename -uuid "8E3B8200-2C45-59C7-22D0-AE83D7B23AFE";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".visibility" no;
	setAttr ".hideDisplay" yes;
createNode transform -name "ARM__POLE_LF_01_CONZero" -parent "ARM_distanceAim_lf_01_EM";
	rename -uuid "50DBF7BE-2E4C-D606-CB7B-FE9BB5855C54";
	addAttr -cachedInternally true -shortName "origScale" -longName "origScale" -attributeType "double";
	addAttr -cachedInternally true -shortName "aim" -longName "aim" -dataType "string";
	addAttr -cachedInternally true -shortName "up" -longName "up" -dataType "string";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 18;
	setAttr ".translate" -type "double3" 3.9999997140205377 16.709999084472653 1.3322675571006817e-15 ;
	setAttr ".rotate" -type "double3" 0 0 -45.000000000000014 ;
	setAttr ".rotateOrder" 2;
	setAttr ".scale" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999978 ;
	setAttr -lock on ".origScale" 1;
	setAttr -lock on ".aim" -type "string" "x";
	setAttr -lock on ".up" -type "string" "y";
createNode transform -name "ARM__POLE_LF_01_CON" -parent "ARM__POLE_LF_01_CONZero";
	rename -uuid "D8981560-F442-A7FD-598F-CEA7536A9AF6";
	addAttr -cachedInternally true -shortName "origScale" -longName "origScale" -attributeType "double";
	addAttr -cachedInternally true -shortName "aim" -longName "aim" -dataType "string";
	addAttr -cachedInternally true -shortName "up" -longName "up" -dataType "string";
	addAttr -storable false -cachedInternally true -shortName "target" -longName "target" 
		-attributeType "message";
	addAttr -cachedInternally true -shortName "con_category" -longName "con_category" 
		-dataType "string";
	addAttr -cachedInternally true -shortName "con_name" -longName "con_name" -dataType "string";
	addAttr -cachedInternally true -shortName "con_index" -longName "con_index" -attributeType "short";
	addAttr -cachedInternally true -shortName "showIndicatorLines" -longName "showIndicatorLines" 
		-minValue 0 -maxValue 1 -attributeType "double";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr -keyable off ".visibility";
	setAttr ".overrideEnabled" yes;
	setAttr -lock on -keyable off ".rotateX";
	setAttr -lock on -keyable off ".rotateY";
	setAttr -lock on -keyable off ".rotateZ";
	setAttr ".rotateOrder" 2;
	setAttr -lock on -keyable off ".scaleX";
	setAttr -lock on -keyable off ".scaleY";
	setAttr -lock on -keyable off ".scaleZ";
	setAttr -lock on ".origScale" 1;
	setAttr -lock on ".aim" -type "string" "x";
	setAttr -lock on ".up" -type "string" "y";
	setAttr -channelBox on ".con_category" -type "string" "pole";
	setAttr -lock on -channelBox on ".con_name" -type "string" "POLE";
	setAttr -lock on ".con_index";
	setAttr -channelBox on ".showIndicatorLines" 1;
createNode nurbsCurve -name "ARM__POLE_LF_01_CONShape" -parent "ARM__POLE_LF_01_CON";
	rename -uuid "8BC6B3D4-6C4E-EE9B-7E6A-FA9028CF8111";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		1 48 0 no 3
		49 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48
		49
		0.5 0 1.1102230246251546e-16
		0.44999999999999929 0 -0.24999999999999989
		0.25 4.4408920985006262e-16 -0.44999999999999996
		0 0 -0.5
		-0.25 4.4408920985006262e-16 -0.45000000000000007
		-0.45000000000000018 -4.4408920985006262e-16 -0.25000000000000011
		-0.5 -4.4408920985006262e-16 -1.1102230246251585e-16
		-0.45000000000000018 -4.4408920985006262e-16 0.24999999999999989
		-0.25 4.4408920985006262e-16 0.44999999999999996
		0 0 0.5
		0.25 4.4408920985006262e-16 0.45000000000000007
		0.44999999999999929 0 0.25000000000000011
		0.5 0 1.1102230246251546e-16
		0.44999999999999929 0.20000000000000062 8.8817841970012405e-17
		0.34999999999999964 0.35000000000000009 5.8286708792820561e-17
		0.19999999999999929 0.45000000000000062 1.9428902930940121e-17
		0 0.5 -2.7755575615628914e-17
		-0.20000000000000018 0.44999999999999973 -6.9388939039072284e-17
		-0.35000000000000142 0.34999999999999964 -9.7144514654701395e-17
		-0.45000000000000107 0.20000000000000018 -1.1102230246251565e-16
		-0.5 -4.4408920985006262e-16 -1.1102230246251585e-16
		-0.45000000000000018 -0.20000000000000018 -8.8817841970012602e-17
		-0.34999999999999964 -0.35000000000000009 -5.8286708792820955e-17
		-0.20000000000000018 -0.45000000000000018 -1.9428902930940318e-17
		0 -0.49999999999999956 2.7755575615628716e-17
		0.20000000000000018 -0.45000000000000018 6.9388939039071889e-17
		0.34999999999999964 -0.34999999999999964 9.7144514654701197e-17
		0.45000000000000018 -0.19999999999999973 1.1102230246251526e-16
		0.5 0 1.1102230246251546e-16
		0.44999999999999929 0.20000000000000062 8.8817841970012405e-17
		0.34999999999999964 0.35000000000000009 5.8286708792820561e-17
		0.19999999999999929 0.45000000000000062 1.9428902930940121e-17
		0 0.5 -2.7755575615628914e-17
		0 0.45000000000000018 0.19999999999999998
		0 0.35000000000000009 0.34999999999999998
		0 0.20000000000000062 0.45000000000000001
		0 0 0.5
		0 -0.19999999999999929 0.45000000000000001
		0 -0.35000000000000009 0.34999999999999998
		0 -0.44999999999999973 0.20000000000000004
		0 -0.49999999999999956 2.7755575615628716e-17
		0 -0.44999999999999973 -0.19999999999999998
		0 -0.35000000000000009 -0.34999999999999998
		0 -0.19999999999999973 -0.45000000000000001
		0 0 -0.5
		0 0.20000000000000062 -0.45000000000000001
		0 0.35000000000000009 -0.34999999999999998
		0 0.45000000000000018 -0.20000000000000004
		0 0.5 -2.7755575615628914e-17
		;
createNode nurbsCurve -name "ARM__POLE_LF_01_CON__indicator1" -parent "ARM__POLE_LF_01_CON";
	rename -uuid "4EB580CB-8F41-2277-C724-7986D2CEA822";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -keyable off ".visibility";
	setAttr ".tweak" yes;
createNode nurbsCurve -name "ARM__POLE_LF_01_CON__indicator2" -parent "ARM__POLE_LF_01_CON";
	rename -uuid "FEDC83D2-1B48-8A9E-D2A0-2C841E9689B7";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -keyable off ".visibility";
	setAttr ".tweak" yes;
createNode transform -name "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle" 
		-parent "ARM__POLE_LF_01_CONZero";
	rename -uuid "57739719-AD43-DB20-C42A-DC98D787A56B";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".visibility" no;
	setAttr ".rotate" -type "double3" -135.00000000000003 89.999999999999972 0 ;
	setAttr ".scale" -type "double3" 1 0.99999999999999978 0.99999999999999967 ;
createNode clusterHandle -name "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandleShape" 
		-parent "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle";
	rename -uuid "261E1E93-D442-FABC-1AEE-92A9EB7EB460";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -keyable off ".visibility";
createNode pointConstraint -name "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle_pointConstraint1" 
		-parent "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle";
	rename -uuid "A1DF6983-4947-2B5D-A300-2895B28DF7E0";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "ARM__POLE_LF_01_CONW0" -defaultValue 1 -minValue 0 -attributeType "double";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".restTranslate" -type "double3" 1.7763568394002505e-15 0 0 ;
	setAttr -keyable on ".ARM__POLE_LF_01_CONW0";
createNode transform -name "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle" 
		-parent "ARM__POLE_LF_01_CONZero";
	rename -uuid "9D07C1BE-924A-4F5D-D850-FC8B7EA48967";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".visibility" no;
	setAttr ".rotate" -type "double3" -135.00000000000003 89.999999999999972 0 ;
	setAttr ".scale" -type "double3" 1 0.99999999999999978 0.99999999999999967 ;
	setAttr ".rotatePivot" -type "double3" 1 0 0 ;
	setAttr ".rotatePivotTranslate" -type "double3" -0.99999999999999978 0 -1 ;
	setAttr ".scalePivot" -type "double3" 1 0 0 ;
createNode clusterHandle -name "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1HandleShape" 
		-parent "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle";
	rename -uuid "51D58165-D54B-6788-C8CA-F0A6B631122E";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -keyable off ".visibility";
	setAttr ".origin" -type "double3" 1 0 0 ;
createNode pointConstraint -name "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle_pointConstraint1" 
		-parent "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle";
	rename -uuid "C39EA572-EA4F-011C-A376-54BFC33A56CC";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "shoulder_lf_01_jntW0" -defaultValue 1 -minValue 0 -attributeType "double";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".restTranslate" -type "double3" 8.9873267437234379 -14.644180588779779 
		0.99999999999999867 ;
	setAttr -keyable on ".shoulder_lf_01_jntW0";
createNode transform -name "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle" 
		-parent "ARM__POLE_LF_01_CONZero";
	rename -uuid "6D655B09-0F46-9BF4-5C71-34A59BFFC22C";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".visibility" no;
	setAttr ".rotate" -type "double3" -135.00000000000003 89.999999999999972 0 ;
	setAttr ".scale" -type "double3" 1 0.99999999999999978 0.99999999999999967 ;
createNode clusterHandle -name "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandleShape" 
		-parent "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle";
	rename -uuid "D0CE1C1F-A247-692A-59EB-11A3342D6D06";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -keyable off ".visibility";
createNode pointConstraint -name "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle_pointConstraint1" 
		-parent "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle";
	rename -uuid "B9BFBDA0-CF46-496C-8411-E593977ABADA";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "ARM__POLE_LF_01_CONW0" -defaultValue 1 -minValue 0 -attributeType "double";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".restTranslate" -type "double3" 1.7763568394002505e-15 0 0 ;
	setAttr -keyable on ".ARM__POLE_LF_01_CONW0";
createNode transform -name "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle" 
		-parent "ARM__POLE_LF_01_CONZero";
	rename -uuid "A5B33337-B34F-6BA4-9192-0C89DFD873A7";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".visibility" no;
	setAttr ".rotate" -type "double3" -135.00000000000003 89.999999999999972 0 ;
	setAttr ".scale" -type "double3" 1 0.99999999999999978 0.99999999999999967 ;
	setAttr ".rotatePivot" -type "double3" 1 0 0 ;
	setAttr ".rotatePivotTranslate" -type "double3" -0.99999999999999978 0 -1 ;
	setAttr ".scalePivot" -type "double3" 1 0 0 ;
createNode clusterHandle -name "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1HandleShape" 
		-parent "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle";
	rename -uuid "81F9D90E-9A4E-2A67-0904-ABA4A0ABD007";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -keyable off ".visibility";
	setAttr ".origin" -type "double3" 1 0 0 ;
createNode pointConstraint -name "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle_pointConstraint1" 
		-parent "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle";
	rename -uuid "6985C191-5346-EF7C-11BC-C89657DC236C";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "wrist_lf_01_jntW0" -defaultValue 1 -minValue 0 -attributeType "double";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".restTranslate" -type "double3" 14.644180896402878 -8.9873264361003358 
		1.0000000000000013 ;
	setAttr -keyable on ".wrist_lf_01_jntW0";
createNode transform -name "ARM__ikSC_lf_01_handleZero" -parent "ARM_LF_MODULE_controls";
	rename -uuid "5ACA813E-8149-A61B-7BB3-6692DD8B716D";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".visibility" no;
	setAttr ".translate" -type "double3" 5.6568541526794407 -5.656854152679446 2.6645352591003737e-15 ;
	setAttr ".rotate" -type "double3" 0 0 -44.999999999999993 ;
	setAttr ".scale" -type "double3" 1 1 0.99999999999999978 ;
createNode ikHandle -name "ARM__ikSC_lf_01_handle" -parent "ARM__ikSC_lf_01_handleZero";
	rename -uuid "9C5B6837-CF41-32A1-20F9-A9885D6345F9";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".overrideDisplayType" 2;
	setAttr ".overrideEnabled" yes;
	setAttr ".poleVector" -type "double3" -2.2204460492503131e-16 1 1.1775693440128317e-16 ;
	setAttr ".rootOnCurve" yes;
createNode pointConstraint -name "ARM__ikSC_lf_01_handle_pointConstraint1" -parent
		 "ARM__ikSC_lf_01_handle";
	rename -uuid "E7FCA755-D345-167A-1772-4D88A44BC79F";
	addAttr -disconnectBehaviour 0 -cachedInternally true -keyable true -shortName "w0" 
		-longName "ARM__WRIST_LF_01_CONW0" -defaultValue 1 -minValue 0 -attributeType "double";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -keyable on ".nodeState";
	setAttr -keyable off ".visibility";
	setAttr -keyable off ".translateX";
	setAttr -keyable off ".translateY";
	setAttr -keyable off ".translateZ";
	setAttr -keyable off ".rotateX";
	setAttr -keyable off ".rotateY";
	setAttr -keyable off ".rotateZ";
	setAttr -keyable off ".scaleX";
	setAttr -keyable off ".scaleY";
	setAttr -keyable off ".scaleZ";
	setAttr ".enableRestPosition" yes;
	setAttr ".restTranslate" -type "double3" -2.6469779601696886e-23 1.3322676295501886e-15 
		3.1554436208840472e-30 ;
	setAttr -keyable on ".ARM__WRIST_LF_01_CONW0";
createNode transform -name "ARM_LF_MODULE_rig" -parent "ARM_LF_MODULE";
	rename -uuid "DBB42866-2545-EEC3-EF3E-949547650AEA";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".visibility" no;
createNode transform -name "ARM_LF_MODULE_extras" -parent "ARM_LF_MODULE";
	rename -uuid "346AAECB-974D-6442-B5C8-87A1646933A3";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".visibility" no;
	setAttr ".inheritsTransform" no;
createNode transform -name "ARM__POLE_LF_01_CON_01_indicator" -parent "ARM_LF_MODULE_extras";
	rename -uuid "AA5D01C4-F447-7386-0843-4F9BBEF8A868";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".visibility" no;
createNode nurbsCurve -name "ARM__POLE_LF_01_CON_01_indicatorShape" -parent "ARM__POLE_LF_01_CON_01_indicator";
	rename -uuid "1A3C808C-524B-8B65-5849-4FA7D73A3646";
	setAttr -keyable off ".visibility";
	setAttr -size 6 ".instObjGroups[0].objectGroups";
	setAttr ".tweak" yes;
createNode nurbsCurve -name "ARM__POLE_LF_01_CON_01_indicatorShape1Orig" -parent "ARM__POLE_LF_01_CON_01_indicator";
	rename -uuid "1C538659-774B-020C-62E7-05925AA48B22";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr -keyable off ".visibility";
	setAttr ".intermediateObject" yes;
	setAttr ".cached" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		1 0 0
		;
createNode transform -name "ARM__POLE_LF_01_CON_02_indicator" -parent "ARM_LF_MODULE_extras";
	rename -uuid "9F504A8A-2142-5B74-6E71-7BBFDCB34BFD";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".visibility" no;
createNode nurbsCurve -name "ARM__POLE_LF_01_CON_02_indicatorShape" -parent "ARM__POLE_LF_01_CON_02_indicator";
	rename -uuid "F2859367-D346-B7BA-3B72-C08D00F84832";
	setAttr -keyable off ".visibility";
	setAttr -size 6 ".instObjGroups[0].objectGroups";
	setAttr ".tweak" yes;
createNode nurbsCurve -name "ARM__POLE_LF_01_CON_02_indicatorShape1Orig" -parent "ARM__POLE_LF_01_CON_02_indicator";
	rename -uuid "1A4293D0-CB4D-1057-F59F-D19C183CFCF6";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr -keyable off ".visibility";
	setAttr ".intermediateObject" yes;
	setAttr ".cached" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		1 0 0
		;
createNode transform -name "ARM_GOAL_LF_01_INPUTZero" -parent "ARM_LF_MODULE";
	rename -uuid "454DC5DC-FA40-11F6-639F-7D8223B45652";
	setAttr ".translate" -type "double3" 5.6568541526794416 -5.6568541526794451 2.6645352591003761e-15 ;
	setAttr ".rotate" -type "double3" 0 0 -90.000000000000028 ;
createNode transform -name "ARM_GOAL_LF_01_INPUT" -parent "ARM_GOAL_LF_01_INPUTZero";
	rename -uuid "8997BE33-3144-AB5D-C67D-CF9660FD2D4E";
createNode transform -name "ARM__WRIST_LF_01_CONZero" -parent "ARM_GOAL_LF_01_INPUT";
	rename -uuid "CB86E313-DC4E-2112-51E0-CCBFD24BEA5E";
	addAttr -cachedInternally true -shortName "origScale" -longName "origScale" -attributeType "double";
	addAttr -cachedInternally true -shortName "aim" -longName "aim" -dataType "string";
	addAttr -cachedInternally true -shortName "up" -longName "up" -dataType "string";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 6;
	setAttr ".translate" -type "double3" 1.3234889800848443e-23 1.3234889800848443e-23 
		0 ;
	setAttr ".rotateOrder" 2;
	setAttr ".scale" -type "double3" 1 1.0000000000000004 1 ;
	setAttr -lock on ".origScale" 6.6832389831542969;
	setAttr -lock on ".aim" -type "string" "x";
	setAttr -lock on ".up" -type "string" "y";
createNode transform -name "ARM__WRIST_LF_01_CON" -parent "ARM__WRIST_LF_01_CONZero";
	rename -uuid "41171C2C-4844-A3D9-41F6-16B78F3E8A05";
	addAttr -cachedInternally true -shortName "origScale" -longName "origScale" -attributeType "double";
	addAttr -cachedInternally true -shortName "aim" -longName "aim" -dataType "string";
	addAttr -cachedInternally true -shortName "up" -longName "up" -dataType "string";
	addAttr -storable false -cachedInternally true -shortName "target" -longName "target" 
		-attributeType "message";
	addAttr -cachedInternally true -shortName "con_category" -longName "con_category" 
		-dataType "string";
	addAttr -cachedInternally true -shortName "con_name" -longName "con_name" -dataType "string";
	addAttr -cachedInternally true -shortName "con_index" -longName "con_index" -attributeType "short";
	addAttr -cachedInternally true -shortName "solverAttributes" -longName "solverAttributes" 
		-minValue 0 -maxValue 0 -enumName "-------" -attributeType "enum";
	addAttr -cachedInternally true -shortName "showPoleVector" -longName "showPoleVector" 
		-minValue 0 -maxValue 1 -attributeType "double";
	addAttr -cachedInternally true -shortName "softness" -longName "softness" -minValue 
		0 -maxValue 10 -attributeType "double";
	addAttr -cachedInternally true -shortName "stretchBlend" -longName "stretchBlend" 
		-defaultValue 1 -minValue 0 -maxValue 1 -attributeType "double";
	addAttr -cachedInternally true -shortName "pinBlend" -longName "pinBlend" -minValue 
		0 -maxValue 1 -attributeType "double";
	addAttr -cachedInternally true -shortName "reverseBlend" -longName "reverseBlend" 
		-minValue 0 -maxValue 1 -attributeType "double";
	addAttr -cachedInternally true -shortName "orientTipBlend" -longName "orientTipBlend" 
		-defaultValue 1 -minValue 0 -maxValue 1 -attributeType "double";
	addAttr -cachedInternally true -shortName "twist" -longName "twist" -attributeType "double";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr -lock on -keyable off ".visibility";
	setAttr ".overrideEnabled" yes;
	setAttr ".rotateOrder" 2;
	setAttr -lock on -keyable off ".scaleX";
	setAttr -lock on -keyable off ".scaleY";
	setAttr -lock on -keyable off ".scaleZ";
	setAttr -lock on ".origScale" 6.6832389831542969;
	setAttr -lock on ".aim" -type "string" "x";
	setAttr -lock on ".up" -type "string" "y";
	setAttr -channelBox on ".con_category" -type "string" "ik";
	setAttr -lock on -channelBox on ".con_name" -type "string" "WRIST";
	setAttr -lock on ".con_index";
	setAttr -lock on -channelBox on ".solverAttributes";
	setAttr -channelBox on ".showPoleVector";
	setAttr -keyable on ".softness";
	setAttr -keyable on ".stretchBlend";
	setAttr -keyable on ".pinBlend";
	setAttr -keyable on ".reverseBlend";
	setAttr -keyable on ".orientTipBlend";
	setAttr -keyable on ".twist";
createNode nurbsCurve -name "ARM__WRIST_LF_01_CONShape" -parent "ARM__WRIST_LF_01_CON";
	rename -uuid "9931A4BE-A545-0991-BD83-70AFDAABCFC6";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -keyable off ".visibility";
	setAttr ".cached" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		1.0024858474731435 3.341619491577148 3.3416194915771484
		1.0024858474731424 3.3416194915771502 -3.3416194915771484
		-1.0024858474731462 3.3416194915771489 -3.3416194915771475
		-1.0024858474731455 3.3416194915771475 3.3416194915771493
		1.0024858474731435 3.341619491577148 3.3416194915771484
		1.0024858474731466 -3.3416194915771484 3.3416194915771475
		-1.0024858474731424 -3.3416194915771502 3.3416194915771484
		-1.0024858474731455 3.3416194915771475 3.3416194915771493
		-1.0024858474731424 -3.3416194915771502 3.3416194915771484
		-1.0024858474731433 -3.3416194915771484 -3.3416194915771484
		-1.0024858474731462 3.3416194915771489 -3.3416194915771475
		-1.0024858474731433 -3.3416194915771484 -3.3416194915771484
		1.0024858474731455 -3.3416194915771475 -3.3416194915771493
		1.0024858474731424 3.3416194915771502 -3.3416194915771484
		1.0024858474731455 -3.3416194915771475 -3.3416194915771493
		1.0024858474731466 -3.3416194915771484 3.3416194915771475
		;
createNode transform -name "ROOTZero";
	rename -uuid "282637AD-AA4F-D492-CF18-DA9B24E4EC64";
	setAttr ".translate" -type "double3" 0 8 0 ;
createNode transform -name "ROOT" -parent "ROOTZero";
	rename -uuid "52F23F97-D34F-6CDA-DC0C-D58DD4F55001";
	setAttr ".overrideEnabled" yes;
	setAttr ".overrideColor" 13;
createNode locator -name "ROOTShape" -parent "ROOT";
	rename -uuid "B886CE41-AA4D-AC6F-383F-A99D14C7B9C2";
	setAttr -keyable off ".visibility";
	setAttr ".localScale" -type "double3" 2 2 2 ;
createNode transform -name "ARM_ROOT_LF_01_INPUTZero" -parent "ROOT";
	rename -uuid "AC0F795F-484B-CEBC-93A3-6F9EFC16E942";
	setAttr ".visibility" no;
	setAttr ".rotate" -type "double3" 89.999999999999986 -45 -90 ;
	setAttr ".scale" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -name "ARM_ROOT_LF_01_INPUT" -parent "ARM_ROOT_LF_01_INPUTZero";
	rename -uuid "AC1E079F-EA49-3C43-4F75-92960957C886";
	setAttr ".visibility" no;
createNode lightLinker -shared -name "lightLinker1";
	rename -uuid "18463B8B-AA4D-2119-AA78-2C8931BD7365";
	setAttr -size 2 ".link";
	setAttr -size 2 ".shadowLink";
createNode displayLayerManager -name "layerManager";
	rename -uuid "B73F1A5F-7142-82CD-9633-FAAD047FD3A8";
createNode displayLayer -name "defaultLayer";
	rename -uuid "BA0129DE-CB48-5C0A-DE36-139D0C4A9C22";
createNode renderLayerManager -name "renderLayerManager";
	rename -uuid "49259C9C-9947-8A95-F105-B18730D7FED8";
createNode renderLayer -name "defaultRenderLayer";
	rename -uuid "17DF9E55-5D41-C078-B0CE-4A9B11C90DDA";
	setAttr ".global" yes;
createNode animCurveTU -name "grim_vik1_elbowPinBlend";
	rename -uuid "A8CE3A23-E24A-1693-DFF2-CC903278EED0";
	setAttr ".tangentType" 18;
	setAttr ".weightedTangents" no;
	setAttr -size 2 ".keyTimeValue[0:1]"  60 0 120 0;
createNode script -name "uiConfigurationScriptNode";
	rename -uuid "73E0629E-4343-33BC-44C9-A99C7C292140";
	setAttr ".before" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n"
		+ "            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 536\n            -height 813\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n"
		+ "            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 536\\n    -height 813\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 536\\n    -height 813\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".scriptType" 3;
createNode script -name "sceneConfigurationScriptNode";
	rename -uuid "3955D00B-9949-D7B1-2A7A-F3B29776380B";
	setAttr ".before" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".scriptType" 6;
createNode shapeEditorManager -name "shapeEditorManager";
	rename -uuid "F284D58D-0E4D-17B6-38EB-39B0662841DA";
createNode poseInterpolatorManager -name "poseInterpolatorManager";
	rename -uuid "9FBD8D22-D648-E3CB-C0BE-73AF2376AF04";
createNode nodeGraphEditorInfo -name "MayaNodeEditorSavedTabsInfo";
	rename -uuid "1FDEE950-1649-6877-F3ED-ED9DA776CF14";
	setAttr ".tabGraphInfo[0].tabName" -type "string" "Untitled_1";
	setAttr ".tabGraphInfo[0].viewRectLow" -type "double2" -364.10733086156273 -787.99931592642395 ;
	setAttr ".tabGraphInfo[0].viewRectHigh" -type "double2" 1070.3359176188276 -66.591573256811301 ;
	setAttr -size 4 ".tabGraphInfo[0].nodeInfo";
	setAttr ".tabGraphInfo[0].nodeInfo[0].positionX" 617.88031005859375;
	setAttr ".tabGraphInfo[0].nodeInfo[0].positionY" -292.94528198242188;
	setAttr ".tabGraphInfo[0].nodeInfo[0].nodeVisualState" 18304;
	setAttr ".tabGraphInfo[0].nodeInfo[1].positionX" 615.2493896484375;
	setAttr ".tabGraphInfo[0].nodeInfo[1].positionY" -199.63571166992188;
	setAttr ".tabGraphInfo[0].nodeInfo[1].nodeVisualState" 18304;
	setAttr ".tabGraphInfo[0].nodeInfo[2].positionX" 624.45758056640625;
	setAttr ".tabGraphInfo[0].nodeInfo[2].positionY" -99.748825073242188;
	setAttr ".tabGraphInfo[0].nodeInfo[2].nodeVisualState" 18304;
	setAttr ".tabGraphInfo[0].nodeInfo[3].positionX" -116.22299957275391;
	setAttr ".tabGraphInfo[0].nodeInfo[3].positionY" -489.59793090820312;
	setAttr ".tabGraphInfo[0].nodeInfo[3].nodeVisualState" 18304;
createNode decomposeMatrix -name "ARM_LF_MODULE_controls_decompose_matrixConstraint";
	rename -uuid "2E5CAD80-6445-139F-B804-DBABE5F809D8";
	setAttr ".outputRotate" -type "double3" 7.0622500768802538e-31 0 0 ;
	setAttr ".outputScale" -type "double3" 1 1 1.0000000000000002 ;
createNode multMatrix -name "ARM_LF_MODULE_controls_mult_matrixConstraint";
	rename -uuid "AEA4D0DC-9B43-E92D-296D-98A4C1A5DE6D";
	setAttr -size 2 ".matrixIn";
createNode reverse -name "controlsVis_ARM_lf_rev";
	rename -uuid "E80BAF8C-3A48-25F2-41BA-4DA5411C640F";
	setAttr ".isHistoricallyInteresting" 0;
createNode multDoubleLinear -name "ARM_LF_MODULE__vis_mult";
	rename -uuid "4F922F99-5F48-9D59-A58E-468011A348D8";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
createNode multDoubleLinear -name "ARM_LF_MODULE__enable_mult";
	rename -uuid "EB016F96-F043-B5F4-11F1-7482F346A415";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
createNode reverse -name "ARM_LF_MODULE__frozen_rev";
	rename -uuid "7EE718FC-7F4A-8526-F0D5-EEAAA0BDD652";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
createNode grim_vik -name "solver_lf_01_grim_vik";
	rename -uuid "DE987A50-B34F-B4D2-9277-898070524A04";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr -keyable off ".stretchBlend";
	setAttr -keyable off ".fkIkBlend";
	setAttr -keyable off ".pinBlend";
	setAttr -keyable off ".reverseBlend";
	setAttr -keyable off ".orientTipBlend";
	setAttr ".upperLength" 5.6568541526794442;
	setAttr ".lowerLength" 5.6568541526794442;
	setAttr -keyable off ".upperLengthBoost";
	setAttr -keyable off ".lowerLengthBoost";
	setAttr -keyable off ".lengthBoost";
	setAttr -keyable off ".softness";
	setAttr -keyable off ".twist";
	setAttr -size 3 ".fkMatrix";
	setAttr -size 3 ".outTranslate";
	setAttr -size 3 ".outRotate";
createNode cluster -name "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster";
	rename -uuid "75620B5F-5C49-1806-359A-9691C46C63A0";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".geomMatrix[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -name "tweak1";
	rename -uuid "A9D757C8-2D49-549C-45AA-AC9F136461CD";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
createNode objectSet -name "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterSet";
	rename -uuid "75695728-484B-9400-3B45-38B66F051DA5";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".verticesOnlySet" yes;
createNode groupId -name "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterGroupId";
	rename -uuid "0264B5DE-654C-35AF-0EFD-E89B9D0CD8AB";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
createNode groupParts -name "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterGroupParts";
	rename -uuid "C6D5C093-7142-19C6-293A-C99E5D4ACA7E";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".inputComponents" -type "componentList" 1 "cv[0]";
createNode objectSet -name "tweakSet1";
	rename -uuid "AABA0831-EE4F-950F-37B4-19A6E4D108A9";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".verticesOnlySet" yes;
createNode groupId -name "groupId2";
	rename -uuid "282D3C99-F44C-1DD4-AE1A-7792C2B3D31B";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
createNode groupParts -name "groupParts2";
	rename -uuid "82DB896B-1D48-C945-BF99-A3AB7E3AECBF";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".inputComponents" -type "componentList" 1 "cv[*]";
createNode cluster -name "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1";
	rename -uuid "82CA0CB4-3242-C225-3476-A39FD7AB86DD";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".geomMatrix[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -name "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Set";
	rename -uuid "C2E4FF97-7148-76B8-FA22-EAAD1BF8715A";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".verticesOnlySet" yes;
createNode groupId -name "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1GroupId";
	rename -uuid "50E21714-1E48-2487-FA3D-5FA1564B4C14";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
createNode groupParts -name "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1GroupParts";
	rename -uuid "F1A3A995-0643-AB7E-7412-E0BC070FD9A4";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".inputComponents" -type "componentList" 1 "cv[1]";
createNode transformGeometry -name "ARM__POLE_LF_01_CON__tfmGeo";
	rename -uuid "C4444204-424B-7AAD-7501-32B7AB78A98D";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
createNode cluster -name "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster";
	rename -uuid "D122BBA1-DA43-222B-90B4-CDA38600D47E";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".geomMatrix[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -name "tweak2";
	rename -uuid "F087AEE5-8947-87CC-8391-88BCA69E417E";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
createNode objectSet -name "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterSet";
	rename -uuid "39F99BD0-AB46-FED6-DE56-B28B318435B3";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".verticesOnlySet" yes;
createNode groupId -name "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterGroupId";
	rename -uuid "86030A3A-3A4B-822B-7FFB-909B2A0A257F";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
createNode groupParts -name "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterGroupParts";
	rename -uuid "3029D6DC-204A-5CCC-2750-A19AD8695DA5";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".inputComponents" -type "componentList" 1 "cv[0]";
createNode objectSet -name "tweakSet2";
	rename -uuid "83993C6D-5742-65A1-12F6-2793D9D19DA9";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".verticesOnlySet" yes;
createNode groupId -name "groupId4";
	rename -uuid "5EC53199-CD4B-E8BE-7656-179FF41E77CC";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
createNode groupParts -name "groupParts4";
	rename -uuid "445F1BCF-064D-D371-91A0-BFBC0218C852";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".inputComponents" -type "componentList" 1 "cv[*]";
createNode cluster -name "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1";
	rename -uuid "DF084635-D44A-F8BE-225D-D1BA0259AA73";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".geomMatrix[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -name "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Set";
	rename -uuid "F04D268F-C746-C337-F1DA-899C1B9B2476";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".verticesOnlySet" yes;
createNode groupId -name "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1GroupId";
	rename -uuid "00E558A2-374B-306B-6467-1FAD3E5B6F70";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
createNode groupParts -name "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1GroupParts";
	rename -uuid "1AD4D063-7746-212B-6DB5-289B20D48CB2";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".inputComponents" -type "componentList" 1 "cv[1]";
createNode transformGeometry -name "ARM__POLE_LF_01_CON__tfmGeo1";
	rename -uuid "524A8439-BF41-BD75-05C7-5D8CB4A8B099";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
createNode ikSCsolver -name "ikSCsolver";
	rename -uuid "13F9B5A6-6B45-078D-6C72-DE946A0A0CC7";
createNode addDoubleLinear -name "lengthBoost_lf_01_addDL";
	rename -uuid "2F2E68A3-694F-C3F3-1304-3593DA91A153";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
createNode multDoubleLinear -name "lengthRemap_lf_01_multDL";
	rename -uuid "253A13EC-7849-7482-8CCE-519484F44EEC";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".input2" 0.01;
createNode multDoubleLinear -name "upperLengthRemap_lf_01_multDL";
	rename -uuid "348B1A6C-6149-6D89-15AD-AB819CAC5AAB";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".input2" 0.01;
createNode multDoubleLinear -name "lowerLengthRemap_lf_01_multDL";
	rename -uuid "95824DA9-0F48-A1F0-DB0A-178903C61D7A";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".input2" 0.01;
createNode multDoubleLinear -name "upperLengthBoost_lf_01_multDL";
	rename -uuid "400DA59B-CB43-25D6-A890-01AFB289DE6F";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
createNode multDoubleLinear -name "lowerLengthBoost_lf_01_multDL";
	rename -uuid "A411386C-144E-9165-F374-60A7F8FB4421";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
createNode multDoubleLinear -name "upperLength_lf_01_multDL";
	rename -uuid "295805CF-BB41-8621-4D88-EDAB8B591C06";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
createNode multDoubleLinear -name "lowerLength_lf_01_multDL";
	rename -uuid "5EEE921B-EA4D-9ACF-5312-B0A999617F5B";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
createNode addDoubleLinear -name "length_lf_01_multDL";
	rename -uuid "B06C08F9-5645-0DEA-CF19-BCA908519E5F";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
createNode multDoubleLinear -name "elbow_lf_01_jnt__fkBoost_multDL";
	rename -uuid "D81CD5C7-5A4B-909D-271A-E5B77DCC48AB";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".input2" 1;
createNode multDoubleLinear -name "wrist_lf_01_jnt__fkBoost_multDL";
	rename -uuid "C3573F4F-324E-AA3F-070C-36A344FB3AA0";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
	setAttr ".input2" 1;
createNode reverse -name "token_ikFkSwitchVis_cn_01_rev";
	rename -uuid "CD13D329-9542-F899-BFB0-4CBE56D8DD27";
	addAttr -storable false -cachedInternally true -shortName "module" -longName "module" 
		-attributeType "message";
	setAttr ".isHistoricallyInteresting" 0;
select -noExpand :time1;
	setAttr ".outTime" 1;
	setAttr ".unwarpedTime" 1;
select -noExpand :hardwareRenderingGlobals;
	setAttr ".objectTypeFilterNameArray" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".objectTypeFilterValueArray" -type "Int32Array" 22 0 1 1
		 1 1 1 1 1 1 0 0 0 0 0 0
		 0 0 0 0 0 0 0 ;
	setAttr ".floatingPointRTEnable" yes;
select -noExpand :renderPartition;
	setAttr -size 2 ".sets";
select -noExpand :renderGlobalsList1;
select -noExpand :defaultShaderList1;
	setAttr -size 4 ".shaders";
select -noExpand :postProcessList1;
	setAttr -size 2 ".postProcesses";
select -noExpand :defaultRenderingList1;
select -noExpand :initialShadingGroup;
	setAttr ".renderableOnlySet" yes;
select -noExpand :initialParticleSE;
	setAttr ".renderableOnlySet" yes;
select -noExpand :defaultResolution;
	setAttr ".pixelAspect" 1;
select -noExpand :hardwareRenderGlobals;
	setAttr ".colorTextureResolution" 256;
	setAttr ".bumpTextureResolution" 512;
select -noExpand :ikSystem;
	setAttr -size 4 ".ikSolver";
connectAttr "shoulder_lf_01_jnt__rigRoot_parentConstraint1.constraintTranslateX" "shoulder_lf_01_jnt__rigRoot.translateX"
		;
connectAttr "shoulder_lf_01_jnt__rigRoot_parentConstraint1.constraintTranslateY" "shoulder_lf_01_jnt__rigRoot.translateY"
		;
connectAttr "shoulder_lf_01_jnt__rigRoot_parentConstraint1.constraintTranslateZ" "shoulder_lf_01_jnt__rigRoot.translateZ"
		;
connectAttr "shoulder_lf_01_jnt__rigRoot_parentConstraint1.constraintRotateX" "shoulder_lf_01_jnt__rigRoot.rotateX"
		;
connectAttr "shoulder_lf_01_jnt__rigRoot_parentConstraint1.constraintRotateY" "shoulder_lf_01_jnt__rigRoot.rotateY"
		;
connectAttr "shoulder_lf_01_jnt__rigRoot_parentConstraint1.constraintRotateZ" "shoulder_lf_01_jnt__rigRoot.rotateZ"
		;
connectAttr "shoulder_lf_01_jnt__rigRoot_scaleConstraint1.constraintScaleX" "shoulder_lf_01_jnt__rigRoot.scaleX"
		;
connectAttr "shoulder_lf_01_jnt__rigRoot_scaleConstraint1.constraintScaleY" "shoulder_lf_01_jnt__rigRoot.scaleY"
		;
connectAttr "shoulder_lf_01_jnt__rigRoot_scaleConstraint1.constraintScaleZ" "shoulder_lf_01_jnt__rigRoot.scaleZ"
		;
connectAttr "solver_lf_01_grim_vik.outTranslate[0]" "shoulder_lf_01_jnt.translate"
		;
connectAttr "solver_lf_01_grim_vik.outRotate[0]" "shoulder_lf_01_jnt.rotate";
connectAttr "ARM_LF_MODULE.message" "shoulder_lf_01_jnt.module";
connectAttr "ARM_ROOT_LF_01_INPUT.message" "shoulder_lf_01_jnt.WT_rootInput";
connectAttr "ARM_GOAL_LF_01_INPUT.message" "shoulder_lf_01_jnt.WT_goalInput";
connectAttr "solver_lf_01_grim_vik.outTranslate[1]" "elbow_lf_01_jnt.translate";
connectAttr "solver_lf_01_grim_vik.outRotate[1]" "elbow_lf_01_jnt.rotate";
connectAttr "ARM_LF_MODULE.message" "elbow_lf_01_jnt.module";
connectAttr "elbow_lf_01_jnt.scale" "wrist_lf_01_jnt.inverseScale";
connectAttr "solver_lf_01_grim_vik.outTranslate[2]" "wrist_lf_01_jnt.translate";
connectAttr "solver_lf_01_grim_vik.outRotate[2]" "wrist_lf_01_jnt.rotate";
connectAttr "ARM_LF_MODULE.message" "wrist_lf_01_jnt.module";
connectAttr "wrist_lf_01_jnt.scale" "wrist_lf_01_jnt1.inverseScale";
connectAttr "ARM_LF_MODULE.message" "wrist_lf_01_jnt1.module";
connectAttr "shoulder_lf_01_jnt__rigRoot.rotateOrder" "shoulder_lf_01_jnt__rigRoot_parentConstraint1.constraintRotateOrder"
		;
connectAttr "shoulder_lf_01_jnt__rigRoot.parentInverseMatrix" "shoulder_lf_01_jnt__rigRoot_parentConstraint1.constraintParentInverseMatrix"
		;
connectAttr "shoulder_lf_01_jnt__rigRoot.rotatePivot" "shoulder_lf_01_jnt__rigRoot_parentConstraint1.constraintRotatePivot"
		;
connectAttr "shoulder_lf_01_jnt__rigRoot.rotatePivotTranslate" "shoulder_lf_01_jnt__rigRoot_parentConstraint1.constraintRotateTranslate"
		;
connectAttr "ARM_ROOT_LF_01_INPUT.translate" "shoulder_lf_01_jnt__rigRoot_parentConstraint1.target[0].targetTranslate"
		;
connectAttr "ARM_ROOT_LF_01_INPUT.rotatePivot" "shoulder_lf_01_jnt__rigRoot_parentConstraint1.target[0].targetRotatePivot"
		;
connectAttr "ARM_ROOT_LF_01_INPUT.rotatePivotTranslate" "shoulder_lf_01_jnt__rigRoot_parentConstraint1.target[0].targetRotateTranslate"
		;
connectAttr "ARM_ROOT_LF_01_INPUT.rotate" "shoulder_lf_01_jnt__rigRoot_parentConstraint1.target[0].targetRotate"
		;
connectAttr "ARM_ROOT_LF_01_INPUT.rotateOrder" "shoulder_lf_01_jnt__rigRoot_parentConstraint1.target[0].targetRotateOrder"
		;
connectAttr "ARM_ROOT_LF_01_INPUT.scale" "shoulder_lf_01_jnt__rigRoot_parentConstraint1.target[0].targetScale"
		;
connectAttr "ARM_ROOT_LF_01_INPUT.parentMatrix" "shoulder_lf_01_jnt__rigRoot_parentConstraint1.target[0].targetParentMatrix"
		;
connectAttr "shoulder_lf_01_jnt__rigRoot_parentConstraint1.ARM_ROOT_LF_01_INPUTW0" "shoulder_lf_01_jnt__rigRoot_parentConstraint1.target[0].targetWeight"
		;
connectAttr "ARM_LF_MODULE.message" "shoulder_lf_01_jnt__rigRoot_parentConstraint1.module"
		;
connectAttr "shoulder_lf_01_jnt__rigRoot.parentInverseMatrix" "shoulder_lf_01_jnt__rigRoot_scaleConstraint1.constraintParentInverseMatrix"
		;
connectAttr "ARM_ROOT_LF_01_INPUT.scale" "shoulder_lf_01_jnt__rigRoot_scaleConstraint1.target[0].targetScale"
		;
connectAttr "ARM_ROOT_LF_01_INPUT.parentMatrix" "shoulder_lf_01_jnt__rigRoot_scaleConstraint1.target[0].targetParentMatrix"
		;
connectAttr "shoulder_lf_01_jnt__rigRoot_scaleConstraint1.ARM_ROOT_LF_01_INPUTW0" "shoulder_lf_01_jnt__rigRoot_scaleConstraint1.target[0].targetWeight"
		;
connectAttr "ARM_LF_MODULE.message" "shoulder_lf_01_jnt__rigRoot_scaleConstraint1.module"
		;
connectAttr "ARM_LF_MODULE.message" "ARM_LF_MODULE.module";
connectAttr "ARM_LF_MODULE_controls.message" "ARM_LF_MODULE.controls";
connectAttr "ARM_LF_MODULE_rig.message" "ARM_LF_MODULE.rig";
connectAttr "ARM_LF_MODULE_extras.message" "ARM_LF_MODULE.extras";
connectAttr "shoulder_lf_01_jnt.message" "ARM_LF_MODULE.chain[0]";
connectAttr "elbow_lf_01_jnt.message" "ARM_LF_MODULE.chain[1]";
connectAttr "wrist_lf_01_jnt.message" "ARM_LF_MODULE.chain[2]";
connectAttr "wrist_lf_01_jnt1.message" "ARM_LF_MODULE.chain[3]";
connectAttr "ARM_LF_MODULE__frozen_rev.outputX" "ARM_LF_MODULE.frozen_sum";
connectAttr "ARM_LF_MODULE__vis_mult.message" "ARM_LF_MODULE.freezeNodes[0]";
connectAttr "ARM_LF_MODULE__enable_mult.message" "ARM_LF_MODULE.freezeNodes[1]";
connectAttr "ARM_LF_MODULE__frozen_rev.message" "ARM_LF_MODULE.freezeNodes[2]";
connectAttr "ARM__WRIST_LF_01_CON.message" "ARM_LF_MODULE.goal";
connectAttr "ARM__ATTRS_LF_01_CON.message" "ARM_LF_MODULE.attributes";
connectAttr "ARM__WRIST_LF_01_CON.message" "ARM_LF_MODULE.ikDriver";
connectAttr "ARM__POLE_LF_01_CON.message" "ARM_LF_MODULE.pole";
connectAttr "ARM_LF_MODULE_controls.message" "ARM_LF_MODULE.nodes[0]";
connectAttr "ARM_LF_MODULE_rig.message" "ARM_LF_MODULE.nodes[1]";
connectAttr "ARM_LF_MODULE_extras.message" "ARM_LF_MODULE.nodes[2]";
connectAttr "ARM_LF_MODULE__vis_mult.message" "ARM_LF_MODULE.nodes[3]";
connectAttr "ARM_LF_MODULE__enable_mult.message" "ARM_LF_MODULE.nodes[4]";
connectAttr "ARM_LF_MODULE__frozen_rev.message" "ARM_LF_MODULE.nodes[5]";
connectAttr "ARM__WRIST_LF_01_CON.message" "ARM_LF_MODULE.nodes[6]";
connectAttr "ARM__ATTRS_LF_01_CON.message" "ARM_LF_MODULE.nodes[7]";
connectAttr "ARM__POLE_LF_01_CON.message" "ARM_LF_MODULE.nodes[8]";
connectAttr "solver_lf_01_grim_vik.message" "ARM_LF_MODULE.nodes[9]";
connectAttr "shoulder_lf_01_jnt__rigRoot_scaleConstraint1.message" "ARM_LF_MODULE.nodes[10]"
		;
connectAttr "ARM__ikSC_lf_01_handle.message" "ARM_LF_MODULE.nodes[11]";
connectAttr "ARM__FKELBOW_LF_01_CON.message" "ARM_LF_MODULE.nodes[12]";
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1GroupId.message" "ARM_LF_MODULE.nodes[13]"
		;
connectAttr "ARM__FKSHOULDER_LF_01_CONZero.message" "ARM_LF_MODULE.nodes[14]";
connectAttr "tweak2.message" "ARM_LF_MODULE.nodes[15]";
connectAttr "ARM__FKELBOW_LF_01_CONZero.message" "ARM_LF_MODULE.nodes[16]";
connectAttr "tweak1.message" "ARM_LF_MODULE.nodes[17]";
connectAttr "tweakSet1.message" "ARM_LF_MODULE.nodes[18]";
connectAttr "tweakSet2.message" "ARM_LF_MODULE.nodes[19]";
connectAttr "elbow_lf_01_jnt__fkBoost_multDL.message" "ARM_LF_MODULE.nodes[20]";
connectAttr "ARM_distanceAim_lf_02_EM.message" "ARM_LF_MODULE.nodes[21]";
connectAttr "ARM__ikSC_lf_01_effector.message" "ARM_LF_MODULE.nodes[22]";
connectAttr "ARM__POLE_LF_01_CONZero.message" "ARM_LF_MODULE.nodes[23]";
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.message" "ARM_LF_MODULE.nodes[24]"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1.message" "ARM_LF_MODULE.nodes[25]"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster.message" "ARM_LF_MODULE.nodes[26]"
		;
connectAttr "groupParts4.message" "ARM_LF_MODULE.nodes[27]";
connectAttr "groupParts2.message" "ARM_LF_MODULE.nodes[28]";
connectAttr "lowerLengthBoost_lf_01_multDL.message" "ARM_LF_MODULE.nodes[29]";
connectAttr "length_lf_01_multDL.message" "ARM_LF_MODULE.nodes[30]";
connectAttr "wrist_lf_01_jnt__fkBoost_multDL.message" "ARM_LF_MODULE.nodes[31]";
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle.message" "ARM_LF_MODULE.nodes[32]"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1GroupParts.message" "ARM_LF_MODULE.nodes[33]"
		;
connectAttr "ARM__POLE_LF_01_CON_01_indicator.message" "ARM_LF_MODULE.nodes[34]"
		;
connectAttr "ARM__POLE_LF_01_CON_02_indicator.message" "ARM_LF_MODULE.nodes[35]"
		;
connectAttr "ARM__FKWRIST_LF_01_CON.message" "ARM_LF_MODULE.nodes[36]";
connectAttr "ARM__POLE_LF_01_CON_01_indicator.message" "ARM_LF_MODULE.nodes[37]"
		;
connectAttr "groupId4.message" "ARM_LF_MODULE.nodes[38]";
connectAttr "groupId2.message" "ARM_LF_MODULE.nodes[39]";
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle.message" "ARM_LF_MODULE.nodes[40]"
		;
connectAttr "ARM__POLE_LF_01_CON.message" "ARM_LF_MODULE.nodes[41]";
connectAttr "ARM__ATTRS_LF_01_CONZero.message" "ARM_LF_MODULE.nodes[42]";
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterGroupParts.message" "ARM_LF_MODULE.nodes[43]"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle.message" "ARM_LF_MODULE.nodes[44]"
		;
connectAttr "upperLengthBoost_lf_01_multDL.message" "ARM_LF_MODULE.nodes[45]";
connectAttr "ARM__POLE_LF_01_CON_01_indicator.message" "ARM_LF_MODULE.nodes[46]"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle_pointConstraint1.message" "ARM_LF_MODULE.nodes[47]"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterGroupParts.message" "ARM_LF_MODULE.nodes[48]"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle.message" "ARM_LF_MODULE.nodes[49]"
		;
connectAttr "ARM__POLE_LF_01_CON.message" "ARM_LF_MODULE.nodes[50]";
connectAttr "ARM__POLE_LF_01_CON.message" "ARM_LF_MODULE.nodes[51]";
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterGroupId.message" "ARM_LF_MODULE.nodes[52]"
		;
connectAttr "upperLength_lf_01_multDL.message" "ARM_LF_MODULE.nodes[53]";
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Set.message" "ARM_LF_MODULE.nodes[54]"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle.message" "ARM_LF_MODULE.nodes[55]"
		;
connectAttr "ARM__ikSC_lf_01_handleZero.message" "ARM_LF_MODULE.nodes[56]";
connectAttr "ARM__POLE_LF_01_CON_02_indicator.message" "ARM_LF_MODULE.nodes[57]"
		;
connectAttr "ARM__WRIST_LF_01_CONZero.message" "ARM_LF_MODULE.nodes[58]";
connectAttr "lowerLengthRemap_lf_01_multDL.message" "ARM_LF_MODULE.nodes[59]";
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle.message" "ARM_LF_MODULE.nodes[60]"
		;
connectAttr "ARM__ATTRS_LF_01_CONZero_parentConstraint1.message" "ARM_LF_MODULE.nodes[61]"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Set.message" "ARM_LF_MODULE.nodes[62]"
		;
connectAttr "ARM__WRIST_LF_01_CON.message" "ARM_LF_MODULE.nodes[63]";
connectAttr "upperLengthRemap_lf_01_multDL.message" "ARM_LF_MODULE.nodes[64]";
connectAttr "ARM__POLE_LF_01_CON_02_indicator.message" "ARM_LF_MODULE.nodes[65]"
		;
connectAttr "ARM__POLE_LF_01_CON__tfmGeo.message" "ARM_LF_MODULE.nodes[66]";
connectAttr "ARM_distanceAim_lf_01_EM.message" "ARM_LF_MODULE.nodes[67]";
connectAttr "ARM__FKWRIST_LF_01_CONZero.message" "ARM_LF_MODULE.nodes[68]";
connectAttr "shoulder_lf_01_jnt__rigRoot_parentConstraint1.message" "ARM_LF_MODULE.nodes[69]"
		;
connectAttr "token_ikFkSwitchVis_cn_01_rev.message" "ARM_LF_MODULE.nodes[70]";
connectAttr "ARM__ATTRS_LF_01_CON.message" "ARM_LF_MODULE.nodes[71]";
connectAttr "ARM__ikSC_lf_01_handle_pointConstraint1.message" "ARM_LF_MODULE.nodes[72]"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterGroupId.message" "ARM_LF_MODULE.nodes[73]"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1GroupId.message" "ARM_LF_MODULE.nodes[74]"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1GroupParts.message" "ARM_LF_MODULE.nodes[75]"
		;
connectAttr "ARM__FKELBOW_LF_01_CON.message" "ARM_LF_MODULE.nodes[76]";
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterSet.message" "ARM_LF_MODULE.nodes[77]"
		;
connectAttr "ARM__FKSHOULDER_LF_01_CON.message" "ARM_LF_MODULE.nodes[78]";
connectAttr "lengthBoost_lf_01_addDL.message" "ARM_LF_MODULE.nodes[79]";
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle_pointConstraint1.message" "ARM_LF_MODULE.nodes[80]"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster.message" "ARM_LF_MODULE.nodes[81]"
		;
connectAttr "ARM__POLE_LF_01_CON__tfmGeo1.message" "ARM_LF_MODULE.nodes[82]";
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle.message" "ARM_LF_MODULE.nodes[83]"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle.message" "ARM_LF_MODULE.nodes[84]"
		;
connectAttr "ARM__FKSHOULDER_LF_01_CON.message" "ARM_LF_MODULE.nodes[85]";
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1.message" "ARM_LF_MODULE.nodes[86]"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterSet.message" "ARM_LF_MODULE.nodes[87]"
		;
connectAttr "lowerLength_lf_01_multDL.message" "ARM_LF_MODULE.nodes[88]";
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.message" "ARM_LF_MODULE.nodes[89]"
		;
connectAttr "lengthRemap_lf_01_multDL.message" "ARM_LF_MODULE.nodes[90]";
connectAttr "ARM__FKWRIST_LF_01_CON.message" "ARM_LF_MODULE.nodes[91]";
connectAttr "ARM__FKSHOULDER_LF_01_CON.message" "ARM_LF_MODULE.fkControls[0]";
connectAttr "ARM__FKELBOW_LF_01_CON.message" "ARM_LF_MODULE.fkControls[1]";
connectAttr "ARM__FKWRIST_LF_01_CON.message" "ARM_LF_MODULE.fkControls[2]";
connectAttr "ARM__WRIST_LF_01_CON.message" "ARM_LF_MODULE.ikControls[0]";
connectAttr "ARM__ATTRS_LF_01_CON.message" "ARM_LF_MODULE.attributesControls[0]"
		;
connectAttr "ARM__POLE_LF_01_CON.message" "ARM_LF_MODULE.poleControls[0]";
connectAttr "ARM_LF_MODULE.message" "ARM_LF_MODULE_controls.module";
connectAttr "ARM_LF_MODULE_controls_decompose_matrixConstraint.outputTranslate" "ARM_LF_MODULE_controls.translate"
		;
connectAttr "ARM_LF_MODULE_controls_decompose_matrixConstraint.outputRotate" "ARM_LF_MODULE_controls.rotate"
		;
connectAttr "ARM_LF_MODULE_controls_decompose_matrixConstraint.outputScale" "ARM_LF_MODULE_controls.scale"
		;
connectAttr "ARM_LF_MODULE_controls_decompose_matrixConstraint.message" "ARM_LF_MODULE_controls.constraints[0]"
		;
connectAttr "ARM_LF_MODULE_controls_mult_matrixConstraint.message" "ARM_LF_MODULE_controls.constraints[1]"
		;
connectAttr "controlsVis_ARM_lf_rev.outputX" "ARM_LF_MODULE_controls.visibility"
		;
connectAttr "ARM__ATTRS_LF_01_CON.showFkControls" "ARM__FKSHOULDER_LF_01_CONZero.visibility"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__FKSHOULDER_LF_01_CONZero.module";
connectAttr "shoulder_lf_01_jnt.message" "ARM__FKSHOULDER_LF_01_CON.target";
connectAttr "shoulder_lf_01_jnt.WT_fkControllerColor" "ARM__FKSHOULDER_LF_01_CON.overrideColor"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__FKSHOULDER_LF_01_CON.module";
connectAttr "ARM_LF_MODULE.message" "ARM__FKSHOULDER_LF_01_CONShape.module";
connectAttr "elbow_lf_01_jnt__fkBoost_multDL.output" "ARM__FKELBOW_LF_01_CONZero.translateX"
		;
connectAttr "ARM__ATTRS_LF_01_CON.showFkControls" "ARM__FKELBOW_LF_01_CONZero.visibility"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__FKELBOW_LF_01_CONZero.module";
connectAttr "elbow_lf_01_jnt.message" "ARM__FKELBOW_LF_01_CON.target";
connectAttr "shoulder_lf_01_jnt.WT_fkControllerColor" "ARM__FKELBOW_LF_01_CON.overrideColor"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__FKELBOW_LF_01_CON.module";
connectAttr "wrist_lf_01_jnt__fkBoost_multDL.output" "ARM__FKWRIST_LF_01_CONZero.translateX"
		;
connectAttr "ARM__ATTRS_LF_01_CON.showFkControls" "ARM__FKWRIST_LF_01_CONZero.visibility"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__FKWRIST_LF_01_CONZero.module";
connectAttr "wrist_lf_01_jnt.message" "ARM__FKWRIST_LF_01_CON.target";
connectAttr "shoulder_lf_01_jnt.WT_fkControllerColor" "ARM__FKWRIST_LF_01_CON.overrideColor"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__FKWRIST_LF_01_CON.module";
connectAttr "ARM_LF_MODULE.message" "ARM__FKWRIST_LF_01_CONShape.module";
connectAttr "ARM__ATTRS_LF_01_CONZero_parentConstraint1.constraintTranslateX" "ARM__ATTRS_LF_01_CONZero.translateX"
		;
connectAttr "ARM__ATTRS_LF_01_CONZero_parentConstraint1.constraintTranslateY" "ARM__ATTRS_LF_01_CONZero.translateY"
		;
connectAttr "ARM__ATTRS_LF_01_CONZero_parentConstraint1.constraintTranslateZ" "ARM__ATTRS_LF_01_CONZero.translateZ"
		;
connectAttr "ARM__ATTRS_LF_01_CONZero_parentConstraint1.constraintRotateX" "ARM__ATTRS_LF_01_CONZero.rotateX"
		;
connectAttr "ARM__ATTRS_LF_01_CONZero_parentConstraint1.constraintRotateY" "ARM__ATTRS_LF_01_CONZero.rotateY"
		;
connectAttr "ARM__ATTRS_LF_01_CONZero_parentConstraint1.constraintRotateZ" "ARM__ATTRS_LF_01_CONZero.rotateZ"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__ATTRS_LF_01_CONZero.module";
connectAttr "wrist_lf_01_jnt.message" "ARM__ATTRS_LF_01_CON.target";
connectAttr "ARM__ATTRS_LF_01_CON.fkIkBlend" "ARM__ATTRS_LF_01_CON.showIkControls"
		 -lock on;
connectAttr "token_ikFkSwitchVis_cn_01_rev.outputX" "ARM__ATTRS_LF_01_CON.showFkControls"
		 -lock on;
connectAttr "lengthRemap_lf_01_multDL.output" "ARM__ATTRS_LF_01_CON.twisterScaleComp"
		 -lock on;
connectAttr "upperLength_lf_01_multDL.output" "ARM__ATTRS_LF_01_CON.upperLengthCurrent"
		;
connectAttr "lowerLength_lf_01_multDL.output" "ARM__ATTRS_LF_01_CON.lowerLengthCurrent"
		;
connectAttr "length_lf_01_multDL.output" "ARM__ATTRS_LF_01_CON.lengthCurrent";
connectAttr "ARM_LF_MODULE.message" "ARM__ATTRS_LF_01_CON.module";
connectAttr "ARM_LF_MODULE.message" "ARM__ATTRS_LF_01_CONShape.module";
connectAttr "ARM__ATTRS_LF_01_CONZero.rotateOrder" "ARM__ATTRS_LF_01_CONZero_parentConstraint1.constraintRotateOrder"
		;
connectAttr "ARM__ATTRS_LF_01_CONZero.parentInverseMatrix" "ARM__ATTRS_LF_01_CONZero_parentConstraint1.constraintParentInverseMatrix"
		;
connectAttr "ARM__ATTRS_LF_01_CONZero.rotatePivot" "ARM__ATTRS_LF_01_CONZero_parentConstraint1.constraintRotatePivot"
		;
connectAttr "ARM__ATTRS_LF_01_CONZero.rotatePivotTranslate" "ARM__ATTRS_LF_01_CONZero_parentConstraint1.constraintRotateTranslate"
		;
connectAttr "wrist_lf_01_jnt.translate" "ARM__ATTRS_LF_01_CONZero_parentConstraint1.target[0].targetTranslate"
		;
connectAttr "wrist_lf_01_jnt.rotatePivot" "ARM__ATTRS_LF_01_CONZero_parentConstraint1.target[0].targetRotatePivot"
		;
connectAttr "wrist_lf_01_jnt.rotatePivotTranslate" "ARM__ATTRS_LF_01_CONZero_parentConstraint1.target[0].targetRotateTranslate"
		;
connectAttr "wrist_lf_01_jnt.rotate" "ARM__ATTRS_LF_01_CONZero_parentConstraint1.target[0].targetRotate"
		;
connectAttr "wrist_lf_01_jnt.rotateOrder" "ARM__ATTRS_LF_01_CONZero_parentConstraint1.target[0].targetRotateOrder"
		;
connectAttr "wrist_lf_01_jnt.scale" "ARM__ATTRS_LF_01_CONZero_parentConstraint1.target[0].targetScale"
		;
connectAttr "wrist_lf_01_jnt.parentMatrix" "ARM__ATTRS_LF_01_CONZero_parentConstraint1.target[0].targetParentMatrix"
		;
connectAttr "wrist_lf_01_jnt.jointOrient" "ARM__ATTRS_LF_01_CONZero_parentConstraint1.target[0].targetJointOrient"
		;
connectAttr "wrist_lf_01_jnt.segmentScaleCompensate" "ARM__ATTRS_LF_01_CONZero_parentConstraint1.target[0].targetScaleCompensate"
		;
connectAttr "wrist_lf_01_jnt.inverseScale" "ARM__ATTRS_LF_01_CONZero_parentConstraint1.target[0].targetInverseScale"
		;
connectAttr "ARM__ATTRS_LF_01_CONZero_parentConstraint1.wrist_lf_01_jntW0" "ARM__ATTRS_LF_01_CONZero_parentConstraint1.target[0].targetWeight"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__ATTRS_LF_01_CONZero_parentConstraint1.module"
		;
connectAttr "ARM_LF_MODULE.message" "ARM_distanceAim_lf_01_EM.module";
connectAttr "ARM_distanceAim_lf_01_EM.scale" "ARM_distanceAim_lf_02_EM.inverseScale"
		;
connectAttr "ARM_LF_MODULE.message" "ARM_distanceAim_lf_02_EM.module";
connectAttr "ARM_distanceAim_lf_02_EM.translateX" "ARM__ikSC_lf_01_effector.translateX"
		;
connectAttr "ARM_distanceAim_lf_02_EM.translateY" "ARM__ikSC_lf_01_effector.translateY"
		;
connectAttr "ARM_distanceAim_lf_02_EM.translateZ" "ARM__ikSC_lf_01_effector.translateZ"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__ikSC_lf_01_effector.module";
connectAttr "ARM__ATTRS_LF_01_CON.showIkControls" "ARM__POLE_LF_01_CONZero.visibility"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CONZero.module";
connectAttr "elbow_lf_01_jnt.message" "ARM__POLE_LF_01_CON.target";
connectAttr "shoulder_lf_01_jnt.WT_poleControllerColor" "ARM__POLE_LF_01_CON.overrideColor"
		;
connectAttr "ARM__WRIST_LF_01_CON.showPoleVector" "ARM__POLE_LF_01_CON.visibility"
		 -lock on;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON.module";
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CONShape.module";
connectAttr "ARM__POLE_LF_01_CON.showIndicatorLines" "ARM__POLE_LF_01_CON__indicator1.visibility"
		;
connectAttr "ARM__POLE_LF_01_CON__tfmGeo.outputGeometry" "ARM__POLE_LF_01_CON__indicator1.create"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__indicator1.module";
connectAttr "ARM__POLE_LF_01_CON.showIndicatorLines" "ARM__POLE_LF_01_CON__indicator2.visibility"
		;
connectAttr "ARM__POLE_LF_01_CON__tfmGeo1.outputGeometry" "ARM__POLE_LF_01_CON__indicator2.create"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__indicator2.module";
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle_pointConstraint1.constraintTranslateX" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle.translateX"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle_pointConstraint1.constraintTranslateY" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle.translateY"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle_pointConstraint1.constraintTranslateZ" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle.translateZ"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle.module"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandleShape.module"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle.parentInverseMatrix" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle_pointConstraint1.constraintParentInverseMatrix"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle.rotatePivot" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle_pointConstraint1.constraintRotatePivot"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle.rotatePivotTranslate" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle_pointConstraint1.constraintRotateTranslate"
		;
connectAttr "ARM__POLE_LF_01_CON.translate" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle_pointConstraint1.target[0].targetTranslate"
		;
connectAttr "ARM__POLE_LF_01_CON.rotatePivot" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle_pointConstraint1.target[0].targetRotatePivot"
		;
connectAttr "ARM__POLE_LF_01_CON.rotatePivotTranslate" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle_pointConstraint1.target[0].targetRotateTranslate"
		;
connectAttr "ARM__POLE_LF_01_CON.parentMatrix" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle_pointConstraint1.target[0].targetParentMatrix"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle_pointConstraint1.ARM__POLE_LF_01_CONW0" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle_pointConstraint1.target[0].targetWeight"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle_pointConstraint1.module"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.constraintTranslateX" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle.translateX"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.constraintTranslateY" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle.translateY"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.constraintTranslateZ" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle.translateZ"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle.module"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle.parentInverseMatrix" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.constraintParentInverseMatrix"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle.rotatePivot" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.constraintRotatePivot"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle.rotatePivotTranslate" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.constraintRotateTranslate"
		;
connectAttr "shoulder_lf_01_jnt.translate" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.target[0].targetTranslate"
		;
connectAttr "shoulder_lf_01_jnt.rotatePivot" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.target[0].targetRotatePivot"
		;
connectAttr "shoulder_lf_01_jnt.rotatePivotTranslate" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.target[0].targetRotateTranslate"
		;
connectAttr "shoulder_lf_01_jnt.parentMatrix" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.target[0].targetParentMatrix"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.shoulder_lf_01_jntW0" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.target[0].targetWeight"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.module"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle_pointConstraint1.constraintTranslateX" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle.translateX"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle_pointConstraint1.constraintTranslateY" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle.translateY"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle_pointConstraint1.constraintTranslateZ" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle.translateZ"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle.module"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle.parentInverseMatrix" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle_pointConstraint1.constraintParentInverseMatrix"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle.rotatePivot" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle_pointConstraint1.constraintRotatePivot"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle.rotatePivotTranslate" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle_pointConstraint1.constraintRotateTranslate"
		;
connectAttr "ARM__POLE_LF_01_CON.translate" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle_pointConstraint1.target[0].targetTranslate"
		;
connectAttr "ARM__POLE_LF_01_CON.rotatePivot" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle_pointConstraint1.target[0].targetRotatePivot"
		;
connectAttr "ARM__POLE_LF_01_CON.rotatePivotTranslate" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle_pointConstraint1.target[0].targetRotateTranslate"
		;
connectAttr "ARM__POLE_LF_01_CON.parentMatrix" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle_pointConstraint1.target[0].targetParentMatrix"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle_pointConstraint1.ARM__POLE_LF_01_CONW0" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle_pointConstraint1.target[0].targetWeight"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle_pointConstraint1.module"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.constraintTranslateX" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle.translateX"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.constraintTranslateY" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle.translateY"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.constraintTranslateZ" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle.translateZ"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle.module"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1HandleShape.module"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle.parentInverseMatrix" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.constraintParentInverseMatrix"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle.rotatePivot" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.constraintRotatePivot"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle.rotatePivotTranslate" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.constraintRotateTranslate"
		;
connectAttr "wrist_lf_01_jnt.translate" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.target[0].targetTranslate"
		;
connectAttr "wrist_lf_01_jnt.rotatePivot" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.target[0].targetRotatePivot"
		;
connectAttr "wrist_lf_01_jnt.rotatePivotTranslate" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.target[0].targetRotateTranslate"
		;
connectAttr "wrist_lf_01_jnt.parentMatrix" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.target[0].targetParentMatrix"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.wrist_lf_01_jntW0" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.target[0].targetWeight"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle_pointConstraint1.module"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__ikSC_lf_01_handleZero.module";
connectAttr "ARM_distanceAim_lf_01_EM.message" "ARM__ikSC_lf_01_handle.startJoint"
		;
connectAttr "ARM__ikSC_lf_01_effector.handlePath" "ARM__ikSC_lf_01_handle.endEffector"
		;
connectAttr "ikSCsolver.message" "ARM__ikSC_lf_01_handle.ikSolver";
connectAttr "ARM__ikSC_lf_01_handle_pointConstraint1.constraintTranslateX" "ARM__ikSC_lf_01_handle.translateX"
		;
connectAttr "ARM__ikSC_lf_01_handle_pointConstraint1.constraintTranslateY" "ARM__ikSC_lf_01_handle.translateY"
		;
connectAttr "ARM__ikSC_lf_01_handle_pointConstraint1.constraintTranslateZ" "ARM__ikSC_lf_01_handle.translateZ"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__ikSC_lf_01_handle.module";
connectAttr "ARM__ikSC_lf_01_handle.parentInverseMatrix" "ARM__ikSC_lf_01_handle_pointConstraint1.constraintParentInverseMatrix"
		;
connectAttr "ARM__ikSC_lf_01_handle.rotatePivot" "ARM__ikSC_lf_01_handle_pointConstraint1.constraintRotatePivot"
		;
connectAttr "ARM__ikSC_lf_01_handle.rotatePivotTranslate" "ARM__ikSC_lf_01_handle_pointConstraint1.constraintRotateTranslate"
		;
connectAttr "ARM__WRIST_LF_01_CON.translate" "ARM__ikSC_lf_01_handle_pointConstraint1.target[0].targetTranslate"
		;
connectAttr "ARM__WRIST_LF_01_CON.rotatePivot" "ARM__ikSC_lf_01_handle_pointConstraint1.target[0].targetRotatePivot"
		;
connectAttr "ARM__WRIST_LF_01_CON.rotatePivotTranslate" "ARM__ikSC_lf_01_handle_pointConstraint1.target[0].targetRotateTranslate"
		;
connectAttr "ARM__WRIST_LF_01_CON.parentMatrix" "ARM__ikSC_lf_01_handle_pointConstraint1.target[0].targetParentMatrix"
		;
connectAttr "ARM__ikSC_lf_01_handle_pointConstraint1.ARM__WRIST_LF_01_CONW0" "ARM__ikSC_lf_01_handle_pointConstraint1.target[0].targetWeight"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__ikSC_lf_01_handle_pointConstraint1.module"
		;
connectAttr "ARM_LF_MODULE.message" "ARM_LF_MODULE_rig.module";
connectAttr "ARM_LF_MODULE_controls_decompose_matrixConstraint.outputTranslate" "ARM_LF_MODULE_rig.translate"
		;
connectAttr "ARM_LF_MODULE_controls_decompose_matrixConstraint.outputRotate" "ARM_LF_MODULE_rig.rotate"
		;
connectAttr "ARM_LF_MODULE_controls_decompose_matrixConstraint.outputScale" "ARM_LF_MODULE_rig.scale"
		;
connectAttr "ARM_LF_MODULE.message" "ARM_LF_MODULE_extras.module";
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON_01_indicator.module";
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1.outputGeometry[0]" "ARM__POLE_LF_01_CON_01_indicatorShape.create"
		;
connectAttr "tweak1.plist[0].controlPoints[0]" "ARM__POLE_LF_01_CON_01_indicatorShape.tweakLocation"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterGroupId.groupId" "ARM__POLE_LF_01_CON_01_indicatorShape.instObjGroups.objectGroups[0].objectGroupId"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterSet.memberWireframeColor" "ARM__POLE_LF_01_CON_01_indicatorShape.instObjGroups.objectGroups[0].objectGrpColor"
		;
connectAttr "groupId2.groupId" "ARM__POLE_LF_01_CON_01_indicatorShape.instObjGroups.objectGroups[1].objectGroupId"
		;
connectAttr "tweakSet1.memberWireframeColor" "ARM__POLE_LF_01_CON_01_indicatorShape.instObjGroups.objectGroups[1].objectGrpColor"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1GroupId.groupId" "ARM__POLE_LF_01_CON_01_indicatorShape.instObjGroups.objectGroups[2].objectGroupId"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Set.memberWireframeColor" "ARM__POLE_LF_01_CON_01_indicatorShape.instObjGroups.objectGroups[2].objectGrpColor"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON_01_indicatorShape1Orig.module"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON_02_indicator.module";
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1.outputGeometry[0]" "ARM__POLE_LF_01_CON_02_indicatorShape.create"
		;
connectAttr "tweak2.plist[0].controlPoints[0]" "ARM__POLE_LF_01_CON_02_indicatorShape.tweakLocation"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterGroupId.groupId" "ARM__POLE_LF_01_CON_02_indicatorShape.instObjGroups.objectGroups[0].objectGroupId"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterSet.memberWireframeColor" "ARM__POLE_LF_01_CON_02_indicatorShape.instObjGroups.objectGroups[0].objectGrpColor"
		;
connectAttr "groupId4.groupId" "ARM__POLE_LF_01_CON_02_indicatorShape.instObjGroups.objectGroups[1].objectGroupId"
		;
connectAttr "tweakSet2.memberWireframeColor" "ARM__POLE_LF_01_CON_02_indicatorShape.instObjGroups.objectGroups[1].objectGrpColor"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1GroupId.groupId" "ARM__POLE_LF_01_CON_02_indicatorShape.instObjGroups.objectGroups[2].objectGroupId"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Set.memberWireframeColor" "ARM__POLE_LF_01_CON_02_indicatorShape.instObjGroups.objectGroups[2].objectGrpColor"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON_02_indicatorShape1Orig.module"
		;
connectAttr "controlsVis_ARM_lf_rev.outputX" "ARM_GOAL_LF_01_INPUTZero.visibility"
		;
connectAttr "ARM__ATTRS_LF_01_CON.showIkControls" "ARM__WRIST_LF_01_CONZero.visibility"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__WRIST_LF_01_CONZero.module";
connectAttr "wrist_lf_01_jnt.message" "ARM__WRIST_LF_01_CON.target";
connectAttr "shoulder_lf_01_jnt.WT_ikControllerColor" "ARM__WRIST_LF_01_CON.overrideColor"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__WRIST_LF_01_CON.module";
connectAttr "ARM_LF_MODULE.message" "ARM__WRIST_LF_01_CONShape.module";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.displayLayerId[0]" "defaultLayer.identification";
connectAttr "renderLayerManager.renderLayerId[0]" "defaultRenderLayer.identification"
		;
connectAttr "elbow_lf_01_jnt.message" "MayaNodeEditorSavedTabsInfo.tabGraphInfo[0].nodeInfo[0].dependNode"
		;
connectAttr "shoulder_lf_01_jnt.message" "MayaNodeEditorSavedTabsInfo.tabGraphInfo[0].nodeInfo[1].dependNode"
		;
connectAttr "wrist_lf_01_jnt.message" "MayaNodeEditorSavedTabsInfo.tabGraphInfo[0].nodeInfo[2].dependNode"
		;
connectAttr "shoulder_lf_01_jntZero.message" "MayaNodeEditorSavedTabsInfo.tabGraphInfo[0].nodeInfo[3].dependNode"
		;
connectAttr "ARM_LF_MODULE_controls_mult_matrixConstraint.matrixSum" "ARM_LF_MODULE_controls_decompose_matrixConstraint.inputMatrix"
		;
connectAttr "ARM_ROOT_LF_01_INPUT.worldMatrix" "ARM_LF_MODULE_controls_mult_matrixConstraint.matrixIn[0]"
		;
connectAttr "ARM_LF_MODULE_controls.parentInverseMatrix" "ARM_LF_MODULE_controls_mult_matrixConstraint.matrixIn[1]"
		;
connectAttr "shoulder_lf_01_jnt.WT_hideControls" "controlsVis_ARM_lf_rev.inputX"
		;
connectAttr "ARM_LF_MODULE.visibility" "ARM_LF_MODULE__vis_mult.input1";
connectAttr "ARM_LF_MODULE.overrideVisibility" "ARM_LF_MODULE__vis_mult.input2";
connectAttr "ARM_LF_MODULE.message" "ARM_LF_MODULE__vis_mult.module";
connectAttr "ARM_LF_MODULE.enable" "ARM_LF_MODULE__enable_mult.input1";
connectAttr "ARM_LF_MODULE__vis_mult.output" "ARM_LF_MODULE__enable_mult.input2"
		;
connectAttr "ARM_LF_MODULE.message" "ARM_LF_MODULE__enable_mult.module";
connectAttr "ARM_LF_MODULE__enable_mult.output" "ARM_LF_MODULE__frozen_rev.inputX"
		;
connectAttr "ARM_LF_MODULE.message" "ARM_LF_MODULE__frozen_rev.module";
connectAttr "ARM__FKSHOULDER_LF_01_CON.worldMatrix" "solver_lf_01_grim_vik.fkMatrix[0]"
		;
connectAttr "ARM__FKELBOW_LF_01_CON.worldMatrix" "solver_lf_01_grim_vik.fkMatrix[1]"
		;
connectAttr "ARM__FKWRIST_LF_01_CON.worldMatrix" "solver_lf_01_grim_vik.fkMatrix[2]"
		;
connectAttr "ARM_ROOT_LF_01_INPUT.worldMatrix" "solver_lf_01_grim_vik.rootMatrix"
		;
connectAttr "ARM__WRIST_LF_01_CON.worldMatrix" "solver_lf_01_grim_vik.goalMatrix"
		;
connectAttr "ARM__POLE_LF_01_CON.worldMatrix" "solver_lf_01_grim_vik.poleMatrix"
		;
connectAttr "ARM__ATTRS_LF_01_CON.fkIkBlend" "solver_lf_01_grim_vik.fkIkBlend" -lock
		 on;
connectAttr "ARM__ATTRS_LF_01_CON.length" "solver_lf_01_grim_vik.lengthBoost" -lock
		 on;
connectAttr "ARM__ATTRS_LF_01_CON.upperLength" "solver_lf_01_grim_vik.upperLengthBoost"
		 -lock on;
connectAttr "ARM__ATTRS_LF_01_CON.lowerLength" "solver_lf_01_grim_vik.lowerLengthBoost"
		 -lock on;
connectAttr "ARM__WRIST_LF_01_CON.softness" "solver_lf_01_grim_vik.softness" -lock
		 on;
connectAttr "ARM__WRIST_LF_01_CON.stretchBlend" "solver_lf_01_grim_vik.stretchBlend"
		 -lock on;
connectAttr "ARM__WRIST_LF_01_CON.pinBlend" "solver_lf_01_grim_vik.pinBlend" -lock
		 on;
connectAttr "ARM__WRIST_LF_01_CON.reverseBlend" "solver_lf_01_grim_vik.reverseBlend"
		 -lock on;
connectAttr "ARM__WRIST_LF_01_CON.orientTipBlend" "solver_lf_01_grim_vik.orientTipBlend"
		 -lock on;
connectAttr "ARM__WRIST_LF_01_CON.twist" "solver_lf_01_grim_vik.twist" -lock on;
connectAttr "ARM_LF_MODULE.message" "solver_lf_01_grim_vik.module";
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterGroupParts.outputGeometry" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster.input[0].inputGeometry"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterGroupId.groupId" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster.input[0].groupId"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandle.worldMatrix" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster.matrix"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterHandleShape.clusterTransforms" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster.clusterXforms"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster.module"
		;
connectAttr "groupParts2.outputGeometry" "tweak1.input[0].inputGeometry";
connectAttr "groupId2.groupId" "tweak1.input[0].groupId";
connectAttr "ARM_LF_MODULE.message" "tweak1.module";
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterGroupId.message" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterSet.groupNodes"
		 -nextAvailable;
connectAttr "ARM__POLE_LF_01_CON_01_indicatorShape.instObjGroups.objectGroups[0]" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterSet.dagSetMembers"
		 -nextAvailable;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster.message" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterSet.usedBy[0]"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterSet.module"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterGroupId.module"
		;
connectAttr "tweak1.outputGeometry[0]" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterGroupParts.inputGeometry"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterGroupId.groupId" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterGroupParts.groupId"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorClusterGroupParts.module"
		;
connectAttr "groupId2.message" "tweakSet1.groupNodes" -nextAvailable;
connectAttr "ARM__POLE_LF_01_CON_01_indicatorShape.instObjGroups.objectGroups[1]" "tweakSet1.dagSetMembers"
		 -nextAvailable;
connectAttr "tweak1.message" "tweakSet1.usedBy[0]";
connectAttr "ARM_LF_MODULE.message" "tweakSet1.module";
connectAttr "ARM_LF_MODULE.message" "groupId2.module";
connectAttr "ARM__POLE_LF_01_CON_01_indicatorShape1Orig.worldSpace" "groupParts2.inputGeometry"
		;
connectAttr "groupId2.groupId" "groupParts2.groupId";
connectAttr "ARM_LF_MODULE.message" "groupParts2.module";
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1GroupParts.outputGeometry" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1.input[0].inputGeometry"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1GroupId.groupId" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1.input[0].groupId"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Handle.worldMatrix" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1.matrix"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1HandleShape.clusterTransforms" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1.clusterXforms"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1.module"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1GroupId.message" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Set.groupNodes"
		 -nextAvailable;
connectAttr "ARM__POLE_LF_01_CON_01_indicatorShape.instObjGroups.objectGroups[2]" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Set.dagSetMembers"
		 -nextAvailable;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1.message" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Set.usedBy[0]"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1Set.module"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1GroupId.module"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster.outputGeometry[0]" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1GroupParts.inputGeometry"
		;
connectAttr "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1GroupId.groupId" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1GroupParts.groupId"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__shoulder_lf_01_jnt__indicatorCluster1GroupParts.module"
		;
connectAttr "ARM__POLE_LF_01_CON_01_indicatorShape.worldSpace" "ARM__POLE_LF_01_CON__tfmGeo.inputGeometry"
		;
connectAttr "ARM__POLE_LF_01_CON.worldInverseMatrix" "ARM__POLE_LF_01_CON__tfmGeo.transform"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__tfmGeo.module";
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterGroupParts.outputGeometry" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster.input[0].inputGeometry"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterGroupId.groupId" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster.input[0].groupId"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandle.worldMatrix" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster.matrix"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterHandleShape.clusterTransforms" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster.clusterXforms"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster.module"
		;
connectAttr "groupParts4.outputGeometry" "tweak2.input[0].inputGeometry";
connectAttr "groupId4.groupId" "tweak2.input[0].groupId";
connectAttr "ARM_LF_MODULE.message" "tweak2.module";
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterGroupId.message" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterSet.groupNodes"
		 -nextAvailable;
connectAttr "ARM__POLE_LF_01_CON_02_indicatorShape.instObjGroups.objectGroups[0]" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterSet.dagSetMembers"
		 -nextAvailable;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster.message" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterSet.usedBy[0]"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterSet.module"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterGroupId.module"
		;
connectAttr "tweak2.outputGeometry[0]" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterGroupParts.inputGeometry"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterGroupId.groupId" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterGroupParts.groupId"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorClusterGroupParts.module"
		;
connectAttr "groupId4.message" "tweakSet2.groupNodes" -nextAvailable;
connectAttr "ARM__POLE_LF_01_CON_02_indicatorShape.instObjGroups.objectGroups[1]" "tweakSet2.dagSetMembers"
		 -nextAvailable;
connectAttr "tweak2.message" "tweakSet2.usedBy[0]";
connectAttr "ARM_LF_MODULE.message" "tweakSet2.module";
connectAttr "ARM_LF_MODULE.message" "groupId4.module";
connectAttr "ARM__POLE_LF_01_CON_02_indicatorShape1Orig.worldSpace" "groupParts4.inputGeometry"
		;
connectAttr "groupId4.groupId" "groupParts4.groupId";
connectAttr "ARM_LF_MODULE.message" "groupParts4.module";
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1GroupParts.outputGeometry" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1.input[0].inputGeometry"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1GroupId.groupId" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1.input[0].groupId"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Handle.worldMatrix" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1.matrix"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1HandleShape.clusterTransforms" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1.clusterXforms"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1.module"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1GroupId.message" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Set.groupNodes"
		 -nextAvailable;
connectAttr "ARM__POLE_LF_01_CON_02_indicatorShape.instObjGroups.objectGroups[2]" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Set.dagSetMembers"
		 -nextAvailable;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1.message" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Set.usedBy[0]"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1Set.module"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1GroupId.module"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster.outputGeometry[0]" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1GroupParts.inputGeometry"
		;
connectAttr "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1GroupId.groupId" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1GroupParts.groupId"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__wrist_lf_01_jnt__indicatorCluster1GroupParts.module"
		;
connectAttr "ARM__POLE_LF_01_CON_02_indicatorShape.worldSpace" "ARM__POLE_LF_01_CON__tfmGeo1.inputGeometry"
		;
connectAttr "ARM__POLE_LF_01_CON.worldInverseMatrix" "ARM__POLE_LF_01_CON__tfmGeo1.transform"
		;
connectAttr "ARM_LF_MODULE.message" "ARM__POLE_LF_01_CON__tfmGeo1.module";
connectAttr "ARM__ATTRS_LF_01_CON.length" "lengthBoost_lf_01_addDL.input1";
connectAttr "ARM__ATTRS_LF_01_CON.lengthBoost" "lengthBoost_lf_01_addDL.input2";
connectAttr "ARM_LF_MODULE.message" "lengthBoost_lf_01_addDL.module";
connectAttr "lengthBoost_lf_01_addDL.output" "lengthRemap_lf_01_multDL.input1";
connectAttr "ARM_LF_MODULE.message" "lengthRemap_lf_01_multDL.module";
connectAttr "ARM__ATTRS_LF_01_CON.upperLength" "upperLengthRemap_lf_01_multDL.input1"
		;
connectAttr "ARM_LF_MODULE.message" "upperLengthRemap_lf_01_multDL.module";
connectAttr "ARM__ATTRS_LF_01_CON.lowerLength" "lowerLengthRemap_lf_01_multDL.input1"
		;
connectAttr "ARM_LF_MODULE.message" "lowerLengthRemap_lf_01_multDL.module";
connectAttr "lengthRemap_lf_01_multDL.output" "upperLengthBoost_lf_01_multDL.input1"
		;
connectAttr "upperLengthRemap_lf_01_multDL.output" "upperLengthBoost_lf_01_multDL.input2"
		;
connectAttr "ARM_LF_MODULE.message" "upperLengthBoost_lf_01_multDL.module";
connectAttr "lengthRemap_lf_01_multDL.output" "lowerLengthBoost_lf_01_multDL.input1"
		;
connectAttr "lowerLengthRemap_lf_01_multDL.output" "lowerLengthBoost_lf_01_multDL.input2"
		;
connectAttr "ARM_LF_MODULE.message" "lowerLengthBoost_lf_01_multDL.module";
connectAttr "upperLengthBoost_lf_01_multDL.output" "upperLength_lf_01_multDL.input1"
		;
connectAttr "ARM__ATTRS_LF_01_CON.upperLengthOrig" "upperLength_lf_01_multDL.input2"
		;
connectAttr "ARM_LF_MODULE.message" "upperLength_lf_01_multDL.module";
connectAttr "lowerLengthBoost_lf_01_multDL.output" "lowerLength_lf_01_multDL.input1"
		;
connectAttr "ARM__ATTRS_LF_01_CON.lowerLengthOrig" "lowerLength_lf_01_multDL.input2"
		;
connectAttr "ARM_LF_MODULE.message" "lowerLength_lf_01_multDL.module";
connectAttr "upperLength_lf_01_multDL.output" "length_lf_01_multDL.input1";
connectAttr "lowerLength_lf_01_multDL.output" "length_lf_01_multDL.input2";
connectAttr "ARM_LF_MODULE.message" "length_lf_01_multDL.module";
connectAttr "ARM__ATTRS_LF_01_CON.upperLengthCurrent" "elbow_lf_01_jnt__fkBoost_multDL.input1"
		;
connectAttr "ARM_LF_MODULE.message" "elbow_lf_01_jnt__fkBoost_multDL.module";
connectAttr "ARM__ATTRS_LF_01_CON.lowerLengthCurrent" "wrist_lf_01_jnt__fkBoost_multDL.input1"
		;
connectAttr "ARM_LF_MODULE.message" "wrist_lf_01_jnt__fkBoost_multDL.module";
connectAttr "ARM__ATTRS_LF_01_CON.fkIkBlend" "token_ikFkSwitchVis_cn_01_rev.inputX"
		;
connectAttr "ARM_LF_MODULE.message" "token_ikFkSwitchVis_cn_01_rev.module";
connectAttr "defaultRenderLayer.message" ":defaultRenderingList1.rendering" -nextAvailable
		;
connectAttr "ikSCsolver.message" ":ikSystem.ikSolver" -nextAvailable;
// End of test_scene_02.ma
