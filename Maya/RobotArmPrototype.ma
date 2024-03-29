//Maya ASCII 2024 scene
//Name: RobotArmPrototype.ma
//Last modified: Thu, Feb 08, 2024 12:05:24 PM
//Codeset: 1252
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "substanceNode" -nodeType "substanceOutputNode" "substancemaya" "2.3.2";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiStandardSurface"
		 "mtoa" "5.3.1.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202304191415-7fa20164c6";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "7411762B-46C2-7ECC-960E-0A80F3F675BE";
createNode transform -s -n "persp";
	rename -uid "F974F30E-4CDA-9B8B-7F49-14A9802C6FE2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 22.697512652621864 16.085394965365079 -19.473146352546841 ;
	setAttr ".r" -type "double3" -18.338352724327692 -241.80000000011214 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "9B132721-434D-BFA4-9AF9-EE8B9AED5907";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 22.44455625371312;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.017874118612153378 9.3176950067506947 -12.023739124606525 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "BE3C60A7-413B-8A32-26E8-658CAD102479";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.0021435546875002 1000.1 -4.188960058593751 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "56899278-4319-3E24-DFA1-85B59EAB06A6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 39.170209980849577;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "8F27A1B1-4448-CBA0-4FE2-949043E787A3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.25896720170582999 5.2944405682080946 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "4A96A119-4ECE-A669-97C3-4B8DDFB037BB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 28.676281214030872;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "2537A4BE-4684-BE7A-F3D0-66877D62DFBC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 5.7734635951337658 -3.6201536195729775 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "3066622E-4CD7-5247-9C47-6EB9BF0EF799";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30.560959129883663;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "Main_Jnt";
	rename -uid "7F28CF95-4DE4-1281-7E84-2EA98DB4E2B0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 89.999604846053188 -0.16076257862182708 90.140832759182103 ;
	setAttr ".radi" 0.5;
createNode joint -n "Stem_Jnt" -p "Main_Jnt";
	rename -uid "1A84D1FE-4686-5C62-456F-1F99C5EFF0DD";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0.00019757670206019707 -0.14083165044295717 -0.16076354990142366 ;
	setAttr ".radi" 0.86206896551724133;
createNode joint -n "Arm_Jnt" -p "Stem_Jnt";
	rename -uid "C80BC576-452D-1434-88A5-AC85031B9AA1";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.00019757688296036436 0.00019757688296036431 -90 ;
	setAttr ".pa" -type "double3" 0 0 -5.9952029902455039e-14 ;
	setAttr ".radi" 1.0172413793103448;
createNode joint -n "Robot_Wrist_Jnt" -p "Arm_Jnt";
	rename -uid "EE010A32-49AB-F2B6-A92F-C8AFB531DD54";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 1.0172413793103448;
createNode parentConstraint -n "Robot_Wrist_Jnt_parentConstraint1" -p "Robot_Wrist_Jnt";
	rename -uid "68CD0FAD-45CA-B463-87EE-E090FCC0EF8A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle4W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 0 -6.7762635780344027e-21 ;
	setAttr ".rst" -type "double3" 10.999999999999998 0 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Robot_Wrist_Jnt_scaleConstraint1" -p "Robot_Wrist_Jnt";
	rename -uid "7A0DAEAB-4E2D-50B6-5AA3-C0875CFAFBA0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle4W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "Arm_Jnt";
	rename -uid "EE5CB2CE-41C1-A275-D2B5-00A352E9874D";
	setAttr ".v" no;
	setAttr ".ra" -type "double3" 0.00019757688296036436 0 0 ;
	setAttr ".hd" yes;
createNode parentConstraint -n "Arm_Jnt_parentConstraint1" -p "Arm_Jnt";
	rename -uid "C44A106F-44C4-673B-E870-819B31A16FE4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle3W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.6469729114598951e-23 0 0 ;
	setAttr ".tg[0].tor" -type "double3" -5.9846269266865958e-15 -2.9838568646304535e-15 
		1.2722218623035097e-12 ;
	setAttr ".lr" -type "double3" 6.0343958907039112e-15 2.9542348048168772e-15 -1.2849440758208571e-12 ;
	setAttr ".rst" -type "double3" 8 7.5356159899186218e-15 -6.6092704579404224e-15 ;
	setAttr ".rsrr" -type "double3" 5.9846026609800727e-15 2.9838543858047826e-15 -1.2658607477667489e-12 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Arm_Jnt_scaleConstraint1" -p "Arm_Jnt";
	rename -uid "9FCDDD6A-445F-F40F-74B3-B5A5FC8194FD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle3W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "Stem_Jnt_parentConstraint1" -p "Stem_Jnt";
	rename -uid "2C138707-4076-B96F-2CF2-018B5C8C4456";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle2W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -6.6613381477509392e-16 3.6977854932234928e-32 
		5.9164567891575885e-31 ;
	setAttr ".tg[0].tor" -type "double3" -2.677453788742088e-14 -5.8889957773972931e-15 
		1.2671995756155509e-12 ;
	setAttr ".lr" -type "double3" 2.677478054448575e-14 5.8045145261470449e-15 -1.2671876933947944e-12 ;
	setAttr ".rst" -type "double3" 2.0000139145233238 5.4210108624275222e-16 6.1582683397176652e-17 ;
	setAttr ".rsrr" -type "double3" 2.6774634950246793e-14 5.8542106249590771e-15 -1.267212541418599e-12 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Stem_Jnt_scaleConstraint1" -p "Stem_Jnt";
	rename -uid "F4E55AF1-46AC-CEAF-23E7-18AB377C71FA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle2W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "Main_Jnt_parentConstraint1" -p "Main_Jnt";
	rename -uid "60D9F8E9-4927-7574-EF5E-9F80471B1E61";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 8.6736173798840355e-19 0 ;
	setAttr ".tg[0].tor" -type "double3" 9.7062825972397362e-20 -9.562204964936959e-18 
		-2.4848083448933725e-17 ;
	setAttr ".rst" -type "double3" 0.0049160005851967004 4.3425372164527137e-21 -0.0056117043005357017 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Main_Jnt_scaleConstraint1" -p "Main_Jnt";
	rename -uid "70FB6588-491C-00E6-6F1B-CEA9B41407E7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode ikHandle -n "ikHandle1";
	rename -uid "FB46745B-4B38-9E25-063A-EEB6DBF013D5";
	setAttr ".t" -type "double3" 1.2928579965461544e-16 10.000000000000242 -10.999999999999815 ;
	setAttr ".pv" -type "double3" 1.6510383667504513 -0.66388986776320147 0.91286502561953609 ;
	setAttr ".roc" yes;
createNode transform -n "Body_Ctrls";
	rename -uid "D253E5DA-4761-88C2-1BDE-68B03217D37A";
	setAttr ".t" -type "double3" 0.0049160005851967004 0 -0.0056117043005357026 ;
	setAttr ".r" -type "double3" 89.999604846053188 -0.16076257862182389 90.140832759182103 ;
createNode transform -n "Overall_Ctrl" -p "Body_Ctrls";
	rename -uid "1A91311B-47E3-77B9-0464-688A95648933";
	setAttr ".rp" -type "double3" 6.7762635780344027e-21 0 0 ;
	setAttr ".sp" -type "double3" 6.7762635780344027e-21 0 0 ;
createNode nurbsCurve -n "Overall_CtrlShape" -p "Overall_Ctrl";
	rename -uid "104F6DD6-4B93-85F1-3587-C89AEFFA83F6";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Robot_Stem_Grp" -p "Overall_Ctrl";
	rename -uid "059FC0AF-480F-D46C-8739-F1A9C6F61261";
	setAttr ".t" -type "double3" 2.0000139145233247 5.4123372450476381e-16 6.3317406873153459e-17 ;
	setAttr ".r" -type "double3" 0.00019757670209008646 -0.14083165044295129 -0.16076354990269087 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "Robot_Stem_Ctrl" -p "Robot_Stem_Grp";
	rename -uid "0007A7DF-4BAC-6BD3-CC80-B387C7BE9D72";
createNode nurbsCurve -n "Robot_Stem_CtrlShape" -p "Robot_Stem_Ctrl";
	rename -uid "9BFB646D-4F89-FD35-5C95-1A9174F6BF09";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Robot_Arm_Grp" -p "Robot_Stem_Ctrl";
	rename -uid "778ECF0A-4AB3-BAA6-1414-35BD2383AD43";
	setAttr ".t" -type "double3" 8 1.8447094340033066e-13 -5.782931945402831e-15 ;
	setAttr ".r" -type "double3" -0.00019757688294846584 0.0001975768829365394 -90.000000000000014 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "Robot_Arm_Ctrl" -p "Robot_Arm_Grp";
	rename -uid "C00D3E68-42AE-C876-2CBF-BD98D660D8FF";
createNode nurbsCurve -n "Robot_Arm_CtrlShape" -p "Robot_Arm_Ctrl";
	rename -uid "4864EE90-4158-8E67-F1CA-97BDED77E4F4";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Robot_Writs_Grp" -p "Robot_Arm_Ctrl";
	rename -uid "97B97AA2-4D80-FE23-45D3-6589F97AD555";
	setAttr ".t" -type "double3" 11 2.4336088699783431e-13 5.7285854662345037e-16 ;
createNode transform -n "Robot_Wrist_Ctrl" -p "Robot_Writs_Grp";
	rename -uid "921C17EE-4CCD-4B60-30CC-D4B055E80C05";
createNode nurbsCurve -n "Robot_Wrist_CtrlShape" -p "Robot_Wrist_Ctrl";
	rename -uid "B2A098F3-4956-605F-46C8-80BEBA6FBE05";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Left_Finger_Grp_1" -p "Body_Ctrls";
	rename -uid "45DD4234-4521-6514-D3BF-C7A8E30EBD73";
	setAttr ".t" -type "double3" 10.163807939205784 -12.509222936143164 0.60612798903435372 ;
	setAttr ".r" -type "double3" 0.14083165044626242 0.00039515239006602035 -90.160762578625665 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "Left_Finger_Ctrl_1" -p "Left_Finger_Grp_1";
	rename -uid "E16615B1-4219-CA03-9E3D-37896EF8494A";
	setAttr ".r" -type "double3" 0 0 -2.3051836030788602 ;
createNode nurbsCurve -n "Left_Finger_Ctrl_Shape1" -p "Left_Finger_Ctrl_1";
	rename -uid "93AC1775-4FED-E3B2-F2DF-07AC3AD87ECA";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Left_Finger_Grp_2" -p "Left_Finger_Ctrl_1";
	rename -uid "CA70A92B-4355-1DA9-4E59-F099CB7723AB";
	setAttr ".t" -type "double3" 0.76315212249755859 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "Left_Finger_Ctrl_2" -p "Left_Finger_Grp_2";
	rename -uid "8B38226B-4C27-607C-37F4-FA9C6B75E83B";
	setAttr ".r" -type "double3" 0 0 -2.3051836030788602 ;
createNode nurbsCurve -n "Left_Finger_Ctrl_Shape2" -p "Left_Finger_Ctrl_2";
	rename -uid "28B6A663-4639-AC23-9E7E-FA89037F322A";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Left_Finger_Grp_3" -p "Left_Finger_Ctrl_2";
	rename -uid "AAA88DDE-4402-5FF9-C335-3F8C3B40D398";
	setAttr ".t" -type "double3" 0.91639709472656428 -8.8817841970012523e-15 -3.6637359812630166e-15 ;
createNode transform -n "Left_Finger_Ctrl_3" -p "Left_Finger_Grp_3";
	rename -uid "7640895E-4CD9-7A9F-E998-EC884CD749B7";
	setAttr ".r" -type "double3" 0 0 -2.3051836030788602 ;
createNode nurbsCurve -n "Left_Finger_Ctrl_Shape3" -p "Left_Finger_Ctrl_3";
	rename -uid "CEA2CB09-4A36-C763-3539-9B96403455BC";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Right_Finger_Grp_1" -p "Body_Ctrls";
	rename -uid "139DEAC4-4D3B-2F83-3D70-EB85E5A213A9";
	setAttr ".t" -type "double3" 10.136432202615927 -12.556314482143184 -0.58120899820124405 ;
	setAttr ".r" -type "double3" 0.14083165044626242 0.00039515239006602035 -90.160762578625665 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "Right_Finger_Ctrl_1" -p "Right_Finger_Grp_1";
	rename -uid "970BDC9A-4287-5145-2413-9F9EE2EC8206";
createNode nurbsCurve -n "Right_Finger_Ctrl_Shape1" -p "Right_Finger_Ctrl_1";
	rename -uid "D639080F-4F81-843D-6BA7-3CBC41C69966";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Right_Finger_Grp_2" -p "Right_Finger_Ctrl_1";
	rename -uid "1F4F7069-4DA3-8DF4-2BAF-61B23C6704A8";
	setAttr ".t" -type "double3" 0.77414512634277344 0 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "Right_Finger_Ctrl_2" -p "Right_Finger_Grp_2";
	rename -uid "C98C4281-4A8A-6330-8016-6BA32620A4F9";
createNode nurbsCurve -n "Right_Finger_Ctrl_Shape2" -p "Right_Finger_Ctrl_2";
	rename -uid "5ABAA84D-4982-8E5D-9471-EF8BF87AF98B";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Right_Finger_Grp_3" -p "Right_Finger_Ctrl_2";
	rename -uid "F2E47218-4C48-FB74-85D9-C0AFDC54D73E";
	setAttr ".t" -type "double3" 0.91674232482910334 1.7763568394002505e-15 -2.9976021664879227e-15 ;
createNode transform -n "Right_Finger_Ctrl_3" -p "Right_Finger_Grp_3";
	rename -uid "9F8D5188-45FB-47F8-5A1F-3A83E73A6A8E";
createNode nurbsCurve -n "Right_Finger_Ctrl_Shape3" -p "Right_Finger_Ctrl_3";
	rename -uid "20A25F2F-4D8E-4578-EB09-1CB7B995BBB5";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Bottom_Finger_Grp_1" -p "Body_Ctrls";
	rename -uid "4B820628-4AA1-0B04-0E29-4EB855744A38";
	setAttr ".t" -type "double3" 9.7171962107214274 -12.55514225271196 0.010552640501198425 ;
	setAttr ".r" -type "double3" 0.14083165044626242 0.00039515239006602035 -90.160762578625665 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "Bottom_FInger_Ctrl_1" -p "Bottom_Finger_Grp_1";
	rename -uid "0805B2E7-46D8-5E42-4864-B49B1018DED5";
createNode nurbsCurve -n "Bottom_FInger_Ctrl_Shape1" -p "Bottom_FInger_Ctrl_1";
	rename -uid "DDA745A9-48F1-11E5-E144-89BB756D4A5E";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Btm_FInger_Grp_2" -p "Bottom_FInger_Ctrl_1";
	rename -uid "ECCC567A-42D0-AA1F-9906-D58ABAEE9090";
	setAttr ".t" -type "double3" 0.59303474426269531 -1.7763568394002505e-15 -1.7780915628762273e-15 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
createNode transform -n "Btm_Finger_Ctrl_2" -p "Btm_FInger_Grp_2";
	rename -uid "1A4BD370-473E-55E8-2CAD-E4BED61EF2AF";
createNode nurbsCurve -n "Btm_Finger_Ctrl_Shape2" -p "Btm_Finger_Ctrl_2";
	rename -uid "EC213C30-4493-9B32-9D31-3B9177CC2300";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Btm_FInger_Grp_3" -p "Btm_Finger_Ctrl_2";
	rename -uid "BE1A9933-44A3-8179-3CC4-D59154C88BF2";
	setAttr ".t" -type "double3" 0.76229953765869318 4.9737991503207013e-14 -1.4068607390171906e-15 ;
createNode transform -n "Btm_Finger_Ctrl_3" -p "Btm_FInger_Grp_3";
	rename -uid "5708FB7B-4C72-8383-E86E-7FA9340DE2B7";
createNode nurbsCurve -n "Btm_Finger_Ctrl_Shape3" -p "Btm_Finger_Ctrl_3";
	rename -uid "C8CFA870-4966-88C8-8915-1C9CE00A84E5";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Mesh";
	rename -uid "1A695D57-42FE-C99B-0CAE-6887678B812E";
	setAttr ".v" no;
createNode transform -n "pCylinder1" -p "Mesh";
	rename -uid "2A9E2890-4694-23CB-19CE-DBAE340E0BD3";
	setAttr ".t" -type "double3" 0 10 0 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.31931302285716645 1.0732817393295897 0.31931302285716645 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "5A107CC6-4C4B-FC03-55F6-7782B40B9B9F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[60:79]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[1]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:59]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[80:99]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.52034514458999936 0.23844317434465184 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 124 ".uvst[0].uvsp[0:123]" -type "float2" 0.53865385 0.099519789
		 0.53865385 0.092553318 0.58129179 0.092553318 0.58129179 0.099519789 0.53844988 0.084802538
		 0.58108711 0.084637463 0.53865385 0.10724223 0.58129179 0.10724223 0.53865379 0.11496466
		 0.58129179 0.11496466 0.53865379 0.12193114 0.58129174 0.12193114 0.53881508 0.12840134
		 0.58145308 0.12840134 0.53917611 0.19592726 0.53917611 0.18896076 0.58181399 0.18896073
		 0.58181399 0.19592726 0.53917611 0.18123832 0.58181399 0.18123835 0.53917611 0.20145588
		 0.58181399 0.20145589 0.53917611 0.17351592 0.58181399 0.17351592 0.53917611 0.16654941
		 0.58181399 0.16654938 0.53907627 0.15987077 0.58171415 0.1598708 0.23536846 0.2149567
		 0.21990122 0.21998236 0.21759063 0.21544769 0.23074779 0.20588847 0.2369605 0.22500902
		 0.2206974 0.22500902 0.2044308 0.22500902 0.21399206 0.21184906 0.22355127 0.19869184
		 0.23536846 0.23506124 0.21990122 0.23003556 0.20945729 0.20953849 0.21448302 0.19407128
		 0.23074779 0.24412954 0.21759063 0.23457025 0.2044308 0.20874235 0.2044308 0.19247921
		 0.22355127 0.25132608 0.21399206 0.23816895 0.19940417 0.20953849 0.1943785 0.19407137
		 0.21448302 0.25594667 0.20945729 0.24047948 0.19486949 0.211849 0.18531016 0.19869187
		 0.2044308 0.25753874 0.2044308 0.24127559 0.19127083 0.21544775 0.17811358 0.20588845
		 0.1943785 0.25594667 0.19940417 0.24047948 0.18896031 0.21998236 0.17349301 0.21495676
		 0.18531016 0.25132608 0.19486949 0.23816895 0.18816411 0.22500902 0.17190096 0.22500902
		 0.17811358 0.24412954 0.19127083 0.23457025 0.18896031 0.23003556 0.17349301 0.23506124
		 0.54982036 0.24802023 0.53508431 0.24323216 0.5358429 0.2384432 0.551337 0.2384432
		 0.54541814 0.25665981 0.53288281 0.24755242 0.52034515 0.2384432 0.53508431 0.23365416
		 0.54982036 0.2288661 0.53856164 0.26351625 0.52945447 0.250981 0.53288281 0.22933386
		 0.54541814 0.22022657 0.52992225 0.26791823 0.52513415 0.25318223 0.52945447 0.22590533
		 0.53856164 0.2133701 0.52034515 0.26943511 0.52034515 0.25394079 0.52513415 0.22370407
		 0.52992225 0.20896803 0.51076812 0.26791823 0.51555604 0.25318229 0.52034515 0.22294554
		 0.52034515 0.20745121 0.5021286 0.26351613 0.51123595 0.250981 0.51555604 0.22370407
		 0.51076812 0.20896804 0.49527216 0.25665981 0.50780749 0.24755251 0.51123595 0.2259053
		 0.5021286 0.2133701 0.49087003 0.2480202 0.505606 0.2432321 0.50780749 0.22933386
		 0.49527216 0.2202265 0.48935333 0.2384432 0.50484753 0.2384432 0.505606 0.23365416
		 0.49087003 0.2288661 0.53819197 0.075614095 0.58082861 0.075283945 0.53813219 0.067891955
		 0.58076876 0.067561805 0.53807241 0.060169786 0.58070904 0.059839547 0.53801841 0.053203464
		 0.5806551 0.052873254 0.53897637 0.15175425 0.58161432 0.15175426 0.53897643 0.14403182
		 0.58161432 0.14403182 0.53897637 0.13630944 0.58161432 0.13630944;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 82 ".vt[0:81]"  0 -1 0 0 1 0 0.95105934 -0.8530913 -0.30901718
		 0.47557831 -1 -0.15452419 0.80901527 -0.8530913 -0.5877856 0.40454865 -1 -0.29392353
		 0.58778572 -0.8530913 -0.80901742 0.29392433 -1 -0.40455115 0.30901527 -0.8530913 -0.95105702
		 0.15452194 -1 -0.47557819 0 -0.8530913 -1.000000476837 0 -1 -0.50005251 -0.30901718 -0.8530913 -0.9510569
		 -0.15452385 -1 -0.47557816 -0.58778763 -0.8530913 -0.80901724 -0.29392433 -1 -0.404551
		 -0.80901718 -0.8530913 -0.58778536 -0.40455055 -1 -0.29392332 -0.95105934 -0.8530913 -0.30901706
		 -0.47557831 -1 -0.15452403 -1 -0.8530913 0 -0.50005341 -1 0 -0.95105934 -0.8530913 0.30901706
		 -0.47557831 -1 0.15452401 -0.80901718 -0.8530913 0.58778536 -0.40455055 -1 0.29392323
		 -0.58778763 -0.8530913 0.80901706 -0.29392433 -1 0.40455073 -0.30901718 -0.8530913 0.95105666
		 -0.15452385 -1 0.47557783 0 -0.8530913 1.000000119209 0 -1 0.50005209 0.30901527 -0.8530913 0.95105654
		 0.15452194 -1 0.47557777 0.58778572 -0.8530913 0.80901706 0.29392433 -1 0.40455067
		 0.80901527 -0.8530913 0.5877853 0.40454865 -1 0.29392323 0.95105934 -0.8530913 0.309017
		 0.47557831 -1 0.15452394 0.99999809 -0.8530913 0 0.50005341 -1 -2.3330085e-08 0.95105934 0.8530913 -0.30901718
		 0.47557831 1 -0.15452419 0.80901527 0.8530913 -0.5877856 0.40454865 1 -0.29392353
		 0.58778572 0.8530913 -0.80901742 0.29392433 1 -0.40455115 0.30901527 0.8530913 -0.95105702
		 0.15452194 1 -0.47557819 0 0.8530913 -1.000000476837 0 1 -0.50005251 -0.30901718 0.8530913 -0.9510569
		 -0.15452385 1 -0.47557816 -0.58778763 0.8530913 -0.80901724 -0.29392433 1 -0.404551
		 -0.80901718 0.8530913 -0.58778536 -0.40455055 1 -0.29392332 -0.95105934 0.8530913 -0.30901706
		 -0.47557831 1 -0.15452403 -1 0.8530913 0 -0.50005341 1 0 -0.95105934 0.8530913 0.30901706
		 -0.47557831 1 0.15452401 -0.80901718 0.8530913 0.58778536 -0.40455055 1 0.29392323
		 -0.58778763 0.8530913 0.80901706 -0.29392433 1 0.40455073 -0.30901718 0.8530913 0.95105666
		 -0.15452385 1 0.47557783 0 0.8530913 1.000000119209 0 1 0.50005209 0.30901527 0.8530913 0.95105654
		 0.15452194 1 0.47557777 0.58778572 0.8530913 0.80901706 0.29392433 1 0.40455067 0.80901527 0.8530913 0.5877853
		 0.40454865 1 0.29392323 0.95105934 0.8530913 0.309017 0.47557831 1 0.15452394 0.99999809 0.8530913 0
		 0.50005341 1 -2.3330085e-08;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  2 3 1 3 5 0 5 4 1 4 2 0 2 40 0 40 41 1 41 3 0 5 7 0
		 7 6 1 6 4 0 7 9 0 9 8 1 8 6 0 9 11 0 11 10 1 10 8 0 11 13 0 13 12 1 12 10 0 13 15 0
		 15 14 1 14 12 0 15 17 0 17 16 1 16 14 0 17 19 0 19 18 1 18 16 0 19 21 0 21 20 1 20 18 0
		 21 23 0 23 22 1 22 20 0 23 25 0 25 24 1 24 22 0 25 27 0 27 26 1 26 24 0 27 29 0 29 28 1
		 28 26 0 29 31 0 31 30 1 30 28 0 31 33 0 33 32 1 32 30 0 33 35 0 35 34 1 34 32 0 35 37 0
		 37 36 1 36 34 0 37 39 0 39 38 1 38 36 0 39 41 0 40 38 0 42 43 1 43 81 0 81 80 1 80 42 0
		 42 44 0 44 45 1 45 43 0 44 46 0 46 47 1 47 45 0 46 48 0 48 49 1 49 47 0 48 50 0 50 51 1
		 51 49 0 50 52 0 52 53 1 53 51 0 52 54 0 54 55 1 55 53 0 54 56 0 56 57 1 57 55 0 56 58 0
		 58 59 1 59 57 0 58 60 0 60 61 1 61 59 0 60 62 0 62 63 1 63 61 0 62 64 0 64 65 1 65 63 0
		 64 66 0 66 67 1 67 65 0 66 68 0 68 69 1 69 67 0 68 70 0 70 71 1 71 69 0 70 72 0 72 73 1
		 73 71 0 72 74 0 74 75 1 75 73 0 74 76 0 76 77 1 77 75 0 76 78 0 78 79 1 79 77 0 78 80 0
		 81 79 0 4 44 1 42 2 1 6 46 1 8 48 1 10 50 1 12 52 1 14 54 1 16 56 1 18 58 1 20 60 1
		 22 62 1 24 64 1 26 66 1 28 68 1 30 70 1 32 72 1 34 74 1 36 76 1 38 78 1 40 80 1 3 0 1
		 0 5 1 0 7 1 0 9 1 0 11 1 0 13 1 0 15 1 0 17 1 0 19 1 0 21 1 0 23 1 0 25 1 0 27 1
		 0 29 1 0 31 1 0 33 1 0 35 1 0 37 1 0 39 1 0 41 1 45 1 1 1 43 1 47 1 1 49 1 1 51 1 1
		 53 1 1;
	setAttr ".ed[166:179]" 55 1 1 57 1 1 59 1 1 61 1 1 63 1 1 65 1 1 67 1 1 69 1 1
		 71 1 1 73 1 1 75 1 1 77 1 1 79 1 1 81 1 1;
	setAttr -s 100 -ch 360 ".fc[0:99]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 28 29 30 31
		f 4 -1 4 5 6
		mu 0 4 29 28 32 33
		f 4 -3 7 8 9
		mu 0 4 31 30 35 36
		f 4 -9 10 11 12
		mu 0 4 36 35 39 40
		f 4 -12 13 14 15
		mu 0 4 40 39 43 44
		f 4 -15 16 17 18
		mu 0 4 44 43 47 48
		f 4 -18 19 20 21
		mu 0 4 48 47 51 52
		f 4 -21 22 23 24
		mu 0 4 52 51 55 56
		f 4 -24 25 26 27
		mu 0 4 56 55 59 60
		f 4 -27 28 29 30
		mu 0 4 60 59 63 64
		f 4 -30 31 32 33
		mu 0 4 64 63 67 68
		f 4 -33 34 35 36
		mu 0 4 68 67 66 65
		f 4 -36 37 38 39
		mu 0 4 65 66 62 61
		f 4 -39 40 41 42
		mu 0 4 61 62 58 57
		f 4 -42 43 44 45
		mu 0 4 57 58 54 53
		f 4 -45 46 47 48
		mu 0 4 53 54 50 49
		f 4 -48 49 50 51
		mu 0 4 49 50 46 45
		f 4 -51 52 53 54
		mu 0 4 45 46 42 41
		f 4 -54 55 56 57
		mu 0 4 41 42 38 37
		f 4 -57 58 -6 59
		mu 0 4 37 38 33 32
		f 4 60 61 62 63
		mu 0 4 69 70 71 72
		f 4 -61 64 65 66
		mu 0 4 70 69 73 74
		f 4 -66 67 68 69
		mu 0 4 74 73 78 79
		f 4 -69 70 71 72
		mu 0 4 79 78 82 83
		f 4 -72 73 74 75
		mu 0 4 83 82 86 87
		f 4 -75 76 77 78
		mu 0 4 87 86 90 91
		f 4 -78 79 80 81
		mu 0 4 91 90 94 95
		f 4 -81 82 83 84
		mu 0 4 95 94 98 99
		f 4 -84 85 86 87
		mu 0 4 99 98 102 103
		f 4 -87 88 89 90
		mu 0 4 103 102 106 107
		f 4 -90 91 92 93
		mu 0 4 107 106 109 108
		f 4 -93 94 95 96
		mu 0 4 108 109 105 104
		f 4 -96 97 98 99
		mu 0 4 104 105 101 100
		f 4 -99 100 101 102
		mu 0 4 100 101 97 96
		f 4 -102 103 104 105
		mu 0 4 96 97 93 92
		f 4 -105 106 107 108
		mu 0 4 92 93 89 88
		f 4 -108 109 110 111
		mu 0 4 88 89 85 84
		f 4 -111 112 113 114
		mu 0 4 84 85 81 80
		f 4 -114 115 116 117
		mu 0 4 80 81 77 76
		f 4 -117 118 -63 119
		mu 0 4 76 77 72 71
		f 4 -4 120 -65 121
		mu 0 4 0 1 2 3
		f 4 -10 122 -68 -121
		mu 0 4 1 4 5 2
		f 4 -13 123 -71 -123
		mu 0 4 4 110 111 5
		f 4 -16 124 -74 -124
		mu 0 4 110 112 113 111
		f 4 -19 125 -77 -125
		mu 0 4 112 114 115 113
		f 4 -22 126 -80 -126
		mu 0 4 114 116 117 115
		f 4 -25 127 -83 -127
		mu 0 4 20 14 17 21
		f 4 -28 128 -86 -128
		mu 0 4 14 15 16 17
		f 4 -31 129 -89 -129
		mu 0 4 15 18 19 16
		f 4 -34 130 -92 -130
		mu 0 4 18 22 23 19
		f 4 -37 131 -95 -131
		mu 0 4 22 24 25 23
		f 4 -40 132 -98 -132
		mu 0 4 24 26 27 25
		f 4 -43 133 -101 -133
		mu 0 4 26 118 119 27
		f 4 -46 134 -104 -134
		mu 0 4 118 120 121 119
		f 4 -49 135 -107 -135
		mu 0 4 120 122 123 121
		f 4 -52 136 -110 -136
		mu 0 4 122 12 13 123
		f 4 -55 137 -113 -137
		mu 0 4 12 10 11 13
		f 4 -58 138 -116 -138
		mu 0 4 10 8 9 11
		f 4 -60 139 -119 -139
		mu 0 4 8 6 7 9
		f 4 -5 -122 -64 -140
		mu 0 4 6 0 3 7
		f 3 -2 140 141
		mu 0 3 30 29 34
		f 3 -8 -142 142
		mu 0 3 35 30 34
		f 3 -11 -143 143
		mu 0 3 39 35 34
		f 3 -14 -144 144
		mu 0 3 43 39 34
		f 3 -17 -145 145
		mu 0 3 47 43 34
		f 3 -20 -146 146
		mu 0 3 51 47 34
		f 3 -23 -147 147
		mu 0 3 55 51 34
		f 3 -26 -148 148
		mu 0 3 59 55 34
		f 3 -29 -149 149
		mu 0 3 63 59 34
		f 3 -32 -150 150
		mu 0 3 67 63 34
		f 3 -35 -151 151
		mu 0 3 66 67 34
		f 3 -38 -152 152
		mu 0 3 62 66 34
		f 3 -41 -153 153
		mu 0 3 58 62 34
		f 3 -44 -154 154
		mu 0 3 54 58 34
		f 3 -47 -155 155
		mu 0 3 50 54 34
		f 3 -50 -156 156
		mu 0 3 46 50 34
		f 3 -53 -157 157
		mu 0 3 42 46 34
		f 3 -56 -158 158
		mu 0 3 38 42 34
		f 3 -59 -159 159
		mu 0 3 33 38 34
		f 3 -7 -160 -141
		mu 0 3 29 33 34
		f 3 -67 160 161
		mu 0 3 70 74 75
		f 3 -70 162 -161
		mu 0 3 74 79 75
		f 3 -73 163 -163
		mu 0 3 79 83 75
		f 3 -76 164 -164
		mu 0 3 83 87 75
		f 3 -79 165 -165
		mu 0 3 87 91 75
		f 3 -82 166 -166
		mu 0 3 91 95 75
		f 3 -85 167 -167
		mu 0 3 95 99 75
		f 3 -88 168 -168
		mu 0 3 99 103 75
		f 3 -91 169 -169
		mu 0 3 103 107 75
		f 3 -94 170 -170
		mu 0 3 107 108 75
		f 3 -97 171 -171
		mu 0 3 108 104 75
		f 3 -100 172 -172
		mu 0 3 104 100 75
		f 3 -103 173 -173
		mu 0 3 100 96 75
		f 3 -106 174 -174
		mu 0 3 96 92 75
		f 3 -109 175 -175
		mu 0 3 92 88 75
		f 3 -112 176 -176
		mu 0 3 88 84 75
		f 3 -115 177 -177
		mu 0 3 84 80 75
		f 3 -118 178 -178
		mu 0 3 80 76 75
		f 3 -120 179 -179
		mu 0 3 76 71 75
		f 3 -62 -162 -180
		mu 0 3 71 70 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 6 
		4 0 
		5 0 
		12 0 
		13 0 
		26 0 
		27 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere2" -p "Mesh";
	rename -uid "B7726E79-4BB9-49E8-B407-849F14B7F4B9";
	setAttr ".t" -type "double3" 0 10 -11 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.5426308884922203 0.5426308884922203 0.5426308884922203 ;
createNode mesh -n "pSphereShape2" -p "pSphere2";
	rename -uid "80EF545C-4A49-DD7E-2C40-FDA4BA8B60AB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.12996460497379303 0.22482099126263883 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 482 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.14168972 0.20548809 0.15226698
		 0.20548809 0.15376997 0.21166167 0.14247978 0.21166167 0.14061069 0.19979054 0.15021467
		 0.19979054 0.16066116 0.20548809 0.16272992 0.21166167 0.15468693 0.21815935 0.14296192
		 0.21815935 0.12996459 0.20548809 0.12996459 0.21166167 0.13926965 0.19470924 0.14766389
		 0.19470924 0.1578365 0.19979054 0.12996459 0.19979054 0.16399199 0.21815935 0.15499514
		 0.22482103 0.14312387 0.22482103 0.12996459 0.21815935 0.11823958 0.20548809 0.1174494
		 0.21166167 0.13769948 0.19036946 0.14467722 0.19036946 0.15432549 0.19470924 0.12996459
		 0.19470924 0.11931849 0.19979054 0.16441619 0.22482103 0.15468693 0.23148268 0.14296192
		 0.23148268 0.12996459 0.22482103 0.11696726 0.21815935 0.1076622 0.20548809 0.10615909
		 0.21166167 0.12996459 0.19036946 0.12065953 0.19470924 0.10971439 0.19979054 0.16399199
		 0.23148268 0.15376997 0.23798034 0.14247978 0.23798034 0.12996459 0.23148268 0.11680532
		 0.22482103 0.10524219 0.21815935 0.099268019 0.20548809 0.097199202 0.21166167 0.12996459
		 0.18687797 0.13593882 0.18687797 0.1222297 0.19036946 0.11226529 0.19470924 0.10209268
		 0.19979054 0.16272992 0.23798034 0.15226698 0.24415398 0.14168972 0.24415398 0.12996459
		 0.23798034 0.11696726 0.23148268 0.10493404 0.22482103 0.095937163 0.21815935 0.12399042
		 0.18687797 0.11525196 0.19036946 0.10560369 0.19470924 0.16066116 0.24415398 0.15021467
		 0.24985158 0.14061069 0.24985158 0.12996459 0.24415398 0.1174494 0.23798034 0.10524219
		 0.23148268 0.095513016 0.22482103 0.1578365 0.24985158 0.14766389 0.25493282 0.13926965
		 0.25493282 0.12996459 0.24985158 0.11823958 0.24415398 0.10615909 0.23798034 0.095937163
		 0.23148268 0.15432549 0.25493282 0.14467722 0.25927258 0.13769948 0.25927258 0.12996459
		 0.25493282 0.11931849 0.24985158 0.1076622 0.24415398 0.097199202 0.23798034 0.12996459
		 0.25927258 0.12065953 0.25493282 0.10971439 0.24985158 0.099268019 0.24415398 0.13593882
		 0.26276404 0.12996459 0.26276404 0.1222297 0.25927258 0.11226529 0.25493282 0.10209268
		 0.24985158 0.12399042 0.26276404 0.11525196 0.25927258 0.10560369 0.25493282 0.031939596
		 0.19917363 0.042516917 0.19917363 0.041726738 0.2053473 0.030436516 0.2053473 0.033991843
		 0.1934761 0.04359585 0.1934761 0.054241985 0.19917363 0.054241985 0.2053473 0.041244656
		 0.211845 0.029519618 0.211845 0.023545414 0.19917363 0.021476567 0.2053473 0.036542684
		 0.18839486 0.044936925 0.18839486 0.054241985 0.1934761 0.026370078 0.1934761 0.065966964
		 0.19917363 0.066757232 0.2053473 0.054241985 0.211845 0.04108268 0.21850665 0.029211432
		 0.21850665 0.020214558 0.211845 0.039529413 0.18405506 0.04650712 0.18405506 0.054241985
		 0.18839486 0.02988103 0.18839486 0.06488806 0.1934761 0.076544285 0.19917363 0.078047395
		 0.2053473 0.067239285 0.211845 0.054241985 0.21850665 0.041244656 0.22516829 0.029519618
		 0.22516829 0.019790411 0.21850665 0.054241985 0.18405506 0.063547015 0.18839486 0.074492097
		 0.1934761 0.084938467 0.19917363 0.087007403 0.2053473 0.078964293 0.211845 0.06740129
		 0.21850665 0.054241985 0.22516829 0.041726738 0.23166588 0.030436516 0.23166588 0.020214558
		 0.22516829 0.048267752 0.18056361 0.054241985 0.18056361 0.06197679 0.18405506 0.071941197
		 0.18839486 0.082113862 0.1934761 0.088269353 0.211845 0.079272449 0.21850665 0.067239285
		 0.22516829 0.054241985 0.23166588 0.042516917 0.23783958 0.031939596 0.23783958 0.021476567
		 0.23166588 0.060216188 0.18056361 0.068954527 0.18405506 0.07860285 0.18839486 0.0886935
		 0.21850665 0.078964293 0.22516829 0.066757232 0.23166588 0.054241985 0.23783958 0.04359585
		 0.24353713 0.033991843 0.24353713 0.023545414 0.23783958 0.088269353 0.22516829 0.078047395
		 0.23166588 0.065966964 0.23783958 0.054241985 0.24353713 0.044936925 0.24861833 0.036542684
		 0.24861833 0.026370078 0.24353713 0.087007403 0.23166588 0.076544285 0.23783958 0.06488806
		 0.24353713 0.054241985 0.24861833 0.04650712 0.25295815 0.039529413 0.25295815 0.02988103
		 0.24861833 0.084938467 0.23783958 0.074492097 0.24353713 0.063547015 0.24861833 0.054241985
		 0.25295815 0.082113862 0.24353713 0.071941197 0.24861833 0.06197679 0.25295815 0.054241985
		 0.25644961 0.048267752 0.25644961 0.07860285 0.24861833 0.068954527 0.25295815 0.060216188
		 0.25644961 0.48298585 0.31577474 0.48180729 0.31346157 0.48835477 0.30870453 0.49068296
		 0.31327385 0.4750945 0.31833872 0.47997159 0.31162602 0.4847286 0.30507842 0.49457574
		 0.30418473 0.49799609 0.31089756 0.48339194 0.31833872 0.49148506 0.31833872 0.47765857
		 0.31044737 0.48015946 0.30275026 0.48924845 0.29885742 0.50031704 0.30001348 0.50474548
		 0.30870453 0.49917459 0.31833872 0.48298585 0.32090288 0.4906829 0.32340369 0.4750945
		 0.31004131 0.4750945 0.3019481 0.48253566 0.29543722 0.49341977 0.29311621 0.49799609
		 0.32577994 0.48180732 0.32321581 0.48835474 0.32797286 0.47253039 0.31044737 0.47002953
		 0.30275041 0.4750945 0.29425856 0.4847286 0.28868783 0.49713987 0.28799585 0.50543725
		 0.29629341 0.49457574 0.33249268 0.47997159 0.32505152 0.48472869 0.33159903 0.47021741
		 0.31162602 0.4654603 0.30507851 0.46765327 0.29543716 0.4750945 0.28716201 0.48668444
		 0.28266859 0.50474548 0.32797286 0.50031716 0.33666408 0.48924851 0.33782002 0.47765857
		 0.32623002 0.48015952 0.33392712 0.46838167 0.31346166 0.46183419 0.30870461 0.46094048
		 0.29885745 0.4654603 0.28868786 0.4750945 0.28083298 0.48835486 0.27752778 0.50031704
		 0.28362286 0.49341977 0.34356138 0.48253566 0.34124044 0.4750945 0.32663622 0.4750945
		 0.33472934 0.46720308 0.31577474 0.45950603 0.31327385 0.45561323 0.30418471 0.45676923
		 0.29311624 0.46350455 0.28266859 0.4750945 0.27542758 0.48969871 0.27339181 0.50287318
		 0.28010461;
	setAttr ".uvst[0].uvsp[250:481]" 0.50543749 0.3403841 0.49713987 0.34868151
		 0.48472869 0.34798971 0.4750945 0.34241897 0.47253039 0.32623002 0.47002953 0.33392712
		 0.46679705 0.31833872 0.45870388 0.31833872 0.45219284 0.31089759 0.44987193 0.30001348
		 0.45304912 0.28799585 0.46183419 0.27752778 0.4750945 0.27107871 0.48668444 0.35400888
		 0.4750945 0.34951556 0.46765327 0.34124044 0.47021741 0.32505152 0.46546039 0.33159903
		 0.46720308 0.32090288 0.45950603 0.32340378 0.45101425 0.31833872 0.44544357 0.30870461
		 0.44475168 0.29629344 0.44987199 0.28362286 0.46049029 0.27339181 0.50031716 0.35305467
		 0.48835474 0.35914978 0.4750945 0.35584462 0.46546039 0.34798971 0.46094048 0.33782002
		 0.46838167 0.32321581 0.46183419 0.32797286 0.45219284 0.32577994 0.44731569 0.28010452
		 0.50287336 0.35657293 0.48969859 0.36328569 0.4750945 0.36124995 0.46350458 0.35400888
		 0.45676923 0.34356138 0.45561323 0.33249268 0.4750945 0.36559871 0.46183419 0.35914978
		 0.45304912 0.34868151 0.44987193 0.33666408 0.44544357 0.32797286 0.46049035 0.36328569
		 0.44987193 0.35305467 0.44475168 0.3403841 0.44731575 0.35657293 0.58433211 0.34210345
		 0.57603472 0.35040089 0.57231468 0.34528068 0.57921189 0.33838338 0.56557924 0.35572818
		 0.56362349 0.349709 0.56814331 0.33953938 0.57347059 0.33421206 0.57921189 0.35477403
		 0.5672496 0.36086908 0.55398941 0.35756385 0.55398941 0.35123491 0.56143039 0.3429597
		 0.56362349 0.33331841 0.5672496 0.32969224 0.58364028 0.32969224 0.57689089 0.32749924
		 0.5817681 0.35829228 0.5685935 0.36500505 0.55398941 0.36296931 0.54239947 0.35572818
		 0.54435521 0.349709 0.55398941 0.34413829 0.5590542 0.33564651 0.55886656 0.3267709
		 0.56070209 0.32493523 0.56957775 0.32512307 0.55398941 0.36731815 0.54072911 0.36086908
		 0.53194404 0.35040089 0.53566408 0.34528068 0.54654819 0.3429597 0.55398941 0.33644873
		 0.5565533 0.32794943 0.55398941 0.32005811 0.56188077 0.32262215 0.57806951 0.32005811
		 0.57037991 0.32005811 0.53938508 0.36500505 0.52876693 0.35477397 0.52364653 0.34210345
		 0.52876693 0.33838338 0.53983533 0.33953938 0.54892439 0.33564651 0.55398941 0.32835552
		 0.56228685 0.32005811 0.57689089 0.31261691 0.56957775 0.31499311 0.52621055 0.35829228
		 0.53450811 0.33421206 0.54435521 0.33331841 0.55142528 0.32794943 0.56188077 0.31749403
		 0.57347059 0.30590415 0.5672496 0.31042391 0.52433842 0.32969224 0.53108782 0.32749924
		 0.54072911 0.32969224 0.54911226 0.32677084 0.56070209 0.31518096 0.57921189 0.30173281
		 0.58364028 0.31042391 0.56814331 0.30057681 0.56362361 0.30679783 0.53840095 0.32512307
		 0.54727662 0.32493523 0.55886632 0.31334528 0.57231468 0.29483551 0.56143051 0.29715648
		 0.5590542 0.3044697 0.52990919 0.32005811 0.53759879 0.32005811 0.54609793 0.32262215
		 0.5565533 0.31216672 0.57603472 0.28971535 0.58433211 0.2980127 0.56362361 0.29040718
		 0.55398941 0.29597789 0.55398941 0.30366755 0.53108782 0.31261688 0.53840095 0.31499311
		 0.54569197 0.32005811 0.55398941 0.31176063 0.56557924 0.28438795 0.55398941 0.28888124
		 0.54654819 0.29715648 0.54892439 0.3044697 0.53450811 0.30590415 0.54072911 0.31042391
		 0.54609793 0.31749403 0.55142528 0.31216672 0.5672496 0.27924711 0.57921189 0.28534216
		 0.55398941 0.28255236 0.54435521 0.29040718 0.53983533 0.30057681 0.54435521 0.30679783
		 0.52433842 0.31042391 0.52876675 0.30173281 0.54727662 0.31518096 0.54911226 0.31334528
		 0.5685935 0.2751112 0.5817681 0.28182393 0.55398941 0.27714688 0.54239947 0.28438795
		 0.53566408 0.29483551 0.55398941 0.27279806 0.54072911 0.27924711 0.53194404 0.28971535
		 0.52364653 0.2980127 0.53938526 0.27511114 0.52876675 0.28534216 0.52621055 0.28182393
		 0.50527406 0.38952044 0.50527406 0.40527388 0.49607903 0.40409708 0.49607903 0.38728169
		 0.50527406 0.42273718 0.49607903 0.42273718 0.48640156 0.40337905 0.48640156 0.38591602
		 0.50527406 0.44020027 0.49607903 0.44137728 0.48640156 0.42273718 0.47647965 0.40313777
		 0.47647965 0.38545707 0.50527406 0.45595396 0.49607903 0.45819262 0.48640156 0.44209516
		 0.47647965 0.42273718 0.46655792 0.40337905 0.46655792 0.38591602 0.48640156 0.45955822
		 0.47647965 0.44233644 0.46655792 0.42273718 0.45688051 0.40409708 0.45688051 0.38728169
		 0.47647965 0.46001723 0.46655792 0.44209516 0.45688051 0.42273718 0.4476856 0.40527388
		 0.4476856 0.38952044 0.46655792 0.45955822 0.45688051 0.44137728 0.4476856 0.42273718
		 0.45688051 0.45819262 0.4476856 0.44020027 0.4476856 0.45595396 0.52941412 0.45612735
		 0.52941412 0.4409737 0.53825879 0.44210577 0.53825879 0.45828074 0.52941412 0.42417565
		 0.53825879 0.42417565 0.54756773 0.44279644 0.54756773 0.45959437 0.52941412 0.40737769
		 0.53825879 0.40624559 0.54756773 0.42417565 0.5571115 0.44302848 0.5571115 0.46003586
		 0.52941412 0.39222401 0.53825879 0.39007062 0.54756773 0.40555495 0.5571115 0.42417565
		 0.5666554 0.44279644 0.5666554 0.45959437 0.54756773 0.38875699 0.5571115 0.40532282
		 0.5666554 0.42417565 0.57596433 0.44210577 0.57596433 0.45828074 0.5571115 0.3883155
		 0.5666554 0.40555495 0.57596433 0.42417565 0.58480906 0.4409737 0.58480906 0.45612735
		 0.5666554 0.38875699 0.57596433 0.40624559 0.58480906 0.42417565 0.57596433 0.39007062
		 0.58480906 0.40737769 0.58480906 0.39222401;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048340943 0.12655823 -0.98768836 -0.091949932
		 0.091949932 -0.98768836 -0.12655823 0.048340935 -0.98768836 -0.14877811 0 -0.98768836 -0.15643455
		 -0.048340935 -0.98768836 -0.1487781 -0.091949917 -0.98768836 -0.1265582 -0.12655818 -0.98768836 -0.091949902
		 -0.14877807 -0.98768836 -0.048340924 -0.15643452 -0.98768836 0 -0.14877807 -0.98768836 0.048340924
		 -0.12655818 -0.98768836 0.091949895 -0.091949895 -0.98768836 0.12655817 -0.048340924 -0.98768836 0.14877805
		 -4.6621107e-09 -0.98768836 0.15643449 0.048340909 -0.98768836 0.14877804 0.09194988 -0.98768836 0.12655815
		 0.12655815 -0.98768836 0.091949888 0.14877804 -0.98768836 0.048340913 0.15643448 -0.98768836 0
		 0.29389283 -0.95105654 -0.095491566 0.25000018 -0.95105654 -0.18163574 0.18163574 -0.95105654 -0.25000015
		 0.095491551 -0.95105654 -0.2938928 0 -0.95105654 -0.30901715 -0.095491551 -0.95105654 -0.29389277
		 -0.18163571 -0.95105654 -0.25000009 -0.25000009 -0.95105654 -0.18163569 -0.29389271 -0.95105654 -0.095491529
		 -0.30901706 -0.95105654 0 -0.29389271 -0.95105654 0.095491529 -0.25000006 -0.95105654 0.18163568
		 -0.18163568 -0.95105654 0.25000006 -0.095491529 -0.95105654 0.29389268 -9.2094243e-09 -0.95105654 0.30901703
		 0.095491499 -0.95105654 0.29389265 0.18163563 -0.95105654 0.25000003 0.25 -0.95105654 0.18163565
		 0.29389265 -0.95105654 0.095491506 0.309017 -0.95105654 0 0.43177092 -0.89100653 -0.14029087
		 0.36728629 -0.89100653 -0.2668491 0.2668491 -0.89100653 -0.36728626 0.14029086 -0.89100653 -0.43177086
		 0 -0.89100653 -0.45399073 -0.14029086 -0.89100653 -0.43177083 -0.26684904 -0.89100653 -0.36728618
		 -0.36728615 -0.89100653 -0.26684901 -0.43177077 -0.89100653 -0.14029081 -0.45399064 -0.89100653 0
		 -0.43177077 -0.89100653 0.14029081 -0.36728612 -0.89100653 0.26684898 -0.26684898 -0.89100653 0.36728612
		 -0.14029081 -0.89100653 0.43177071 -1.3529972e-08 -0.89100653 0.45399058 0.14029078 -0.89100653 0.43177068
		 0.26684892 -0.89100653 0.36728609 0.36728606 -0.89100653 0.26684895 0.43177065 -0.89100653 0.1402908
		 0.45399052 -0.89100653 0 0.55901736 -0.809017 -0.18163574 0.47552857 -0.809017 -0.34549171
		 0.34549171 -0.809017 -0.47552854 0.18163572 -0.809017 -0.5590173 0 -0.809017 -0.58778554
		 -0.18163572 -0.809017 -0.55901724 -0.34549165 -0.809017 -0.47552842 -0.47552839 -0.809017 -0.34549159
		 -0.55901712 -0.809017 -0.18163566 -0.58778536 -0.809017 0 -0.55901712 -0.809017 0.18163566
		 -0.47552836 -0.809017 0.34549156 -0.34549156 -0.809017 0.47552833 -0.18163566 -0.809017 0.55901706
		 -1.7517365e-08 -0.809017 0.5877853 0.18163562 -0.809017 0.55901706 0.3454915 -0.809017 0.4755283
		 0.47552827 -0.809017 0.34549153 0.559017 -0.809017 0.18163563 0.58778524 -0.809017 0
		 0.67249894 -0.70710677 -0.21850814 0.57206178 -0.70710677 -0.41562718 0.41562718 -0.70710677 -0.57206172
		 0.21850812 -0.70710677 -0.67249888 0 -0.70710677 -0.70710713 -0.21850812 -0.70710677 -0.67249882
		 -0.41562709 -0.70710677 -0.5720616 -0.57206154 -0.70710677 -0.41562706 -0.6724987 -0.70710677 -0.21850805
		 -0.70710695 -0.70710677 0 -0.6724987 -0.70710677 0.21850805 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206148 -0.21850805 -0.70710677 0.67249858 -2.1073424e-08 -0.70710677 0.70710683
		 0.21850799 -0.70710677 0.67249858 0.41562691 -0.70710677 0.57206142 0.57206142 -0.70710677 0.41562697
		 0.67249852 -0.70710677 0.21850802 0.70710677 -0.70710677 0 0.7694214 -0.58778524 -0.25000015
		 0.65450895 -0.58778524 -0.47552854 0.47552854 -0.58778524 -0.65450889 0.25000012 -0.58778524 -0.76942128
		 0 -0.58778524 -0.80901736 -0.25000012 -0.58778524 -0.76942122 -0.47552845 -0.58778524 -0.65450877
		 -0.65450871 -0.58778524 -0.47552839 -0.7694211 -0.58778524 -0.25000006 -0.80901718 -0.58778524 0
		 -0.7694211 -0.58778524 0.25000006 -0.65450865 -0.58778524 0.47552836 -0.47552836 -0.58778524 0.65450859
		 -0.25000006 -0.58778524 0.76942098 -2.4110586e-08 -0.58778524 0.80901712 0.24999999 -0.58778524 0.76942098
		 0.47552827 -0.58778524 0.65450853 0.65450853 -0.58778524 0.4755283 0.76942092 -0.58778524 0.25
		 0.809017 -0.58778524 0 0.8473981 -0.45399052 -0.27533633 0.72083992 -0.45399052 -0.5237208
		 0.5237208 -0.45399052 -0.72083986 0.2753363 -0.45399052 -0.84739798 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739798 -0.52372068 -0.45399052 -0.72083968 -0.72083962 -0.45399052 -0.52372062
		 -0.8473978 -0.45399052 -0.27533621 -0.89100677 -0.45399052 0 -0.8473978 -0.45399052 0.27533621
		 -0.72083962 -0.45399052 0.52372062 -0.52372062 -0.45399052 0.72083956 -0.27533621 -0.45399052 0.84739769
		 -2.6554064e-08 -0.45399052 0.89100665 0.27533615 -0.45399052 0.84739763 0.5237205 -0.45399052 0.7208395
		 0.72083944 -0.45399052 0.52372056 0.84739757 -0.45399052 0.27533618 0.89100653 -0.45399052 0
		 0.90450913 -0.30901697 -0.2938928 0.7694214 -0.30901697 -0.55901736 0.55901736 -0.30901697 -0.76942134
		 0.29389277 -0.30901697 -0.90450901 0 -0.30901697 -0.95105702 -0.29389277 -0.30901697 -0.90450895
		 -0.55901724 -0.30901697 -0.76942122 -0.76942116 -0.30901697 -0.55901718 -0.90450877 -0.30901697 -0.29389271
		 -0.95105678 -0.30901697 0 -0.90450877 -0.30901697 0.29389271 -0.7694211 -0.30901697 0.55901712
		 -0.55901712 -0.30901697 0.76942104 -0.29389271 -0.30901697 0.90450865 -2.8343694e-08 -0.30901697 0.95105666
		 0.29389262 -0.30901697 0.90450859 0.559017 -0.30901697 0.76942098 0.76942092 -0.30901697 0.55901706
		 0.90450853 -0.30901697 0.29389265 0.95105654 -0.30901697 0 0.93934804 -0.15643437 -0.30521268
		 0.79905719 -0.15643437 -0.580549 0.580549 -0.15643437 -0.79905713 0.30521265 -0.15643437 -0.93934792
		 0 -0.15643437 -0.98768884 -0.30521265 -0.15643437 -0.93934786;
	setAttr ".vt[166:331]" -0.58054888 -0.15643437 -0.79905695 -0.79905689 -0.15643437 -0.58054882
		 -0.93934768 -0.15643437 -0.30521256 -0.9876886 -0.15643437 0 -0.93934768 -0.15643437 0.30521256
		 -0.79905683 -0.15643437 0.58054876 -0.58054876 -0.15643437 0.79905677 -0.30521256 -0.15643437 0.93934757
		 -2.9435407e-08 -0.15643437 0.98768848 0.30521247 -0.15643437 0.93934757 0.58054864 -0.15643437 0.79905671
		 0.79905665 -0.15643437 0.5805487 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 0
		 0.95105714 0 -0.30901718 0.80901754 0 -0.5877856 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542
		 -0.95105678 0 -0.30901706 -1.000000238419 0 0 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536
		 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666 -2.9802322e-08 0 1.000000119209
		 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853 0.95105654 0 0.309017
		 1 0 0 0.93934804 0.15643437 -0.30521268 0.79905719 0.15643437 -0.580549 0.580549 0.15643437 -0.79905713
		 0.30521265 0.15643437 -0.93934792 0 0.15643437 -0.98768884 -0.30521265 0.15643437 -0.93934786
		 -0.58054888 0.15643437 -0.79905695 -0.79905689 0.15643437 -0.58054882 -0.93934768 0.15643437 -0.30521256
		 -0.9876886 0.15643437 0 -0.93934768 0.15643437 0.30521256 -0.79905683 0.15643437 0.58054876
		 -0.58054876 0.15643437 0.79905677 -0.30521256 0.15643437 0.93934757 -2.9435407e-08 0.15643437 0.98768848
		 0.30521247 0.15643437 0.93934757 0.58054864 0.15643437 0.79905671 0.79905665 0.15643437 0.5805487
		 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 0 0.90450913 0.30901697 -0.2938928
		 0.7694214 0.30901697 -0.55901736 0.55901736 0.30901697 -0.76942134 0.29389277 0.30901697 -0.90450901
		 0 0.30901697 -0.95105702 -0.29389277 0.30901697 -0.90450895 -0.55901724 0.30901697 -0.76942122
		 -0.76942116 0.30901697 -0.55901718 -0.90450877 0.30901697 -0.29389271 -0.95105678 0.30901697 0
		 -0.90450877 0.30901697 0.29389271 -0.7694211 0.30901697 0.55901712 -0.55901712 0.30901697 0.76942104
		 -0.29389271 0.30901697 0.90450865 -2.8343694e-08 0.30901697 0.95105666 0.29389262 0.30901697 0.90450859
		 0.559017 0.30901697 0.76942098 0.76942092 0.30901697 0.55901706 0.90450853 0.30901697 0.29389265
		 0.95105654 0.30901697 0 0.8473981 0.45399052 -0.27533633 0.72083992 0.45399052 -0.5237208
		 0.5237208 0.45399052 -0.72083986 0.2753363 0.45399052 -0.84739798 0 0.45399052 -0.89100695
		 -0.2753363 0.45399052 -0.84739798 -0.52372068 0.45399052 -0.72083968 -0.72083962 0.45399052 -0.52372062
		 -0.8473978 0.45399052 -0.27533621 -0.89100677 0.45399052 0 -0.8473978 0.45399052 0.27533621
		 -0.72083962 0.45399052 0.52372062 -0.52372062 0.45399052 0.72083956 -0.27533621 0.45399052 0.84739769
		 -2.6554064e-08 0.45399052 0.89100665 0.27533615 0.45399052 0.84739763 0.5237205 0.45399052 0.7208395
		 0.72083944 0.45399052 0.52372056 0.84739757 0.45399052 0.27533618 0.89100653 0.45399052 0
		 0.7694214 0.58778524 -0.25000015 0.65450895 0.58778524 -0.47552854 0.47552854 0.58778524 -0.65450889
		 0.25000012 0.58778524 -0.76942128 0 0.58778524 -0.80901736 -0.25000012 0.58778524 -0.76942122
		 -0.47552845 0.58778524 -0.65450877 -0.65450871 0.58778524 -0.47552839 -0.7694211 0.58778524 -0.25000006
		 -0.80901718 0.58778524 0 -0.7694211 0.58778524 0.25000006 -0.65450865 0.58778524 0.47552836
		 -0.47552836 0.58778524 0.65450859 -0.25000006 0.58778524 0.76942098 -2.4110586e-08 0.58778524 0.80901712
		 0.24999999 0.58778524 0.76942098 0.47552827 0.58778524 0.65450853 0.65450853 0.58778524 0.4755283
		 0.76942092 0.58778524 0.25 0.809017 0.58778524 0 0.67249894 0.70710677 -0.21850814
		 0.57206178 0.70710677 -0.41562718 0.41562718 0.70710677 -0.57206172 0.21850812 0.70710677 -0.67249888
		 0 0.70710677 -0.70710713 -0.21850812 0.70710677 -0.67249882 -0.41562709 0.70710677 -0.5720616
		 -0.57206154 0.70710677 -0.41562706 -0.6724987 0.70710677 -0.21850805 -0.70710695 0.70710677 0
		 -0.6724987 0.70710677 0.21850805 -0.57206154 0.70710677 0.415627 -0.415627 0.70710677 0.57206148
		 -0.21850805 0.70710677 0.67249858 -2.1073424e-08 0.70710677 0.70710683 0.21850799 0.70710677 0.67249858
		 0.41562691 0.70710677 0.57206142 0.57206142 0.70710677 0.41562697 0.67249852 0.70710677 0.21850802
		 0.70710677 0.70710677 0 0.55901736 0.809017 -0.18163574 0.47552857 0.809017 -0.34549171
		 0.34549171 0.809017 -0.47552854 0.18163572 0.809017 -0.5590173 0 0.809017 -0.58778554
		 -0.18163572 0.809017 -0.55901724 -0.34549165 0.809017 -0.47552842 -0.47552839 0.809017 -0.34549159
		 -0.55901712 0.809017 -0.18163566 -0.58778536 0.809017 0 -0.55901712 0.809017 0.18163566
		 -0.47552836 0.809017 0.34549156 -0.34549156 0.809017 0.47552833 -0.18163566 0.809017 0.55901706
		 -1.7517365e-08 0.809017 0.5877853 0.18163562 0.809017 0.55901706 0.3454915 0.809017 0.4755283
		 0.47552827 0.809017 0.34549153 0.559017 0.809017 0.18163563 0.58778524 0.809017 0
		 0.43177092 0.89100653 -0.14029087 0.36728629 0.89100653 -0.2668491 0.2668491 0.89100653 -0.36728626
		 0.14029086 0.89100653 -0.43177086 0 0.89100653 -0.45399073 -0.14029086 0.89100653 -0.43177083
		 -0.26684904 0.89100653 -0.36728618 -0.36728615 0.89100653 -0.26684901 -0.43177077 0.89100653 -0.14029081
		 -0.45399064 0.89100653 0 -0.43177077 0.89100653 0.14029081 -0.36728612 0.89100653 0.26684898;
	setAttr ".vt[332:381]" -0.26684898 0.89100653 0.36728612 -0.14029081 0.89100653 0.43177071
		 -1.3529972e-08 0.89100653 0.45399058 0.14029078 0.89100653 0.43177068 0.26684892 0.89100653 0.36728609
		 0.36728606 0.89100653 0.26684895 0.43177065 0.89100653 0.1402908 0.45399052 0.89100653 0
		 0.29389283 0.95105654 -0.095491566 0.25000018 0.95105654 -0.18163574 0.18163574 0.95105654 -0.25000015
		 0.095491551 0.95105654 -0.2938928 0 0.95105654 -0.30901715 -0.095491551 0.95105654 -0.29389277
		 -0.18163571 0.95105654 -0.25000009 -0.25000009 0.95105654 -0.18163569 -0.29389271 0.95105654 -0.095491529
		 -0.30901706 0.95105654 0 -0.29389271 0.95105654 0.095491529 -0.25000006 0.95105654 0.18163568
		 -0.18163568 0.95105654 0.25000006 -0.095491529 0.95105654 0.29389268 -9.2094243e-09 0.95105654 0.30901703
		 0.095491499 0.95105654 0.29389265 0.18163563 0.95105654 0.25000003 0.25 0.95105654 0.18163565
		 0.29389265 0.95105654 0.095491506 0.309017 0.95105654 0 0.14877813 0.98768836 -0.048340943
		 0.12655823 0.98768836 -0.091949932 0.091949932 0.98768836 -0.12655823 0.048340935 0.98768836 -0.14877811
		 0 0.98768836 -0.15643455 -0.048340935 0.98768836 -0.1487781 -0.091949917 0.98768836 -0.1265582
		 -0.12655818 0.98768836 -0.091949902 -0.14877807 0.98768836 -0.048340924 -0.15643452 0.98768836 0
		 -0.14877807 0.98768836 0.048340924 -0.12655818 0.98768836 0.091949895 -0.091949895 0.98768836 0.12655817
		 -0.048340924 0.98768836 0.14877805 -4.6621107e-09 0.98768836 0.15643449 0.048340909 0.98768836 0.14877804
		 0.09194988 0.98768836 0.12655815 0.12655815 0.98768836 0.091949888 0.14877804 0.98768836 0.048340913
		 0.15643448 0.98768836 0 0 -1 0 0 1 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 186 187 188 189
		f 4 1 382 -22 -382
		mu 0 4 187 191 192 188
		f 4 2 383 -23 -383
		mu 0 4 191 197 198 192
		f 4 3 384 -24 -384
		mu 0 4 197 205 206 198
		f 4 4 385 -25 -385
		mu 0 4 205 212 213 206
		f 4 5 386 -26 -386
		mu 0 4 212 221 222 213
		f 4 6 387 -27 -387
		mu 0 4 221 231 232 222
		f 4 7 388 -28 -388
		mu 0 4 231 242 243 232
		f 4 8 389 -29 -389
		mu 0 4 242 256 257 243
		f 4 9 390 -30 -390
		mu 0 4 256 268 269 257
		f 4 10 391 -31 -391
		mu 0 4 268 280 281 269
		f 4 11 392 -32 -392
		mu 0 4 280 266 267 281
		f 4 12 393 -33 -393
		mu 0 4 266 254 255 267
		f 4 13 394 -34 -394
		mu 0 4 254 240 241 255
		f 4 14 395 -35 -395
		mu 0 4 240 229 230 241
		f 4 15 396 -36 -396
		mu 0 4 229 219 220 230
		f 4 16 397 -37 -397
		mu 0 4 219 210 211 220
		f 4 17 398 -38 -398
		mu 0 4 210 203 204 211
		f 4 18 399 -39 -399
		mu 0 4 203 195 196 204
		f 4 19 380 -40 -400
		mu 0 4 195 186 189 196
		f 4 20 401 -41 -401
		mu 0 4 189 188 193 194
		f 4 21 402 -42 -402
		mu 0 4 188 192 199 193
		f 4 22 403 -43 -403
		mu 0 4 192 198 207 199
		f 4 23 404 -44 -404
		mu 0 4 198 206 214 207
		f 4 24 405 -45 -405
		mu 0 4 206 213 223 214
		f 4 25 406 -46 -406
		mu 0 4 213 222 233 223
		f 4 26 407 -47 -407
		mu 0 4 222 232 244 233
		f 4 27 408 -48 -408
		mu 0 4 232 243 258 244
		f 4 28 409 -49 -409
		mu 0 4 243 257 270 258
		f 4 29 410 -50 -410
		mu 0 4 257 269 282 270
		f 4 30 411 -51 -411
		mu 0 4 269 281 289 282
		f 4 31 412 -52 -412
		mu 0 4 281 267 279 289
		f 4 32 413 -53 -413
		mu 0 4 267 255 265 279
		f 4 33 414 -54 -414
		mu 0 4 255 241 253 265
		f 4 34 415 -55 -415
		mu 0 4 241 230 239 253
		f 4 35 416 -56 -416
		mu 0 4 230 220 228 239
		f 4 36 417 -57 -417
		mu 0 4 220 211 218 228
		f 4 37 418 -58 -418
		mu 0 4 211 204 209 218
		f 4 38 419 -59 -419
		mu 0 4 204 196 202 209
		f 4 39 400 -60 -420
		mu 0 4 196 189 194 202
		f 4 40 421 -61 -421
		mu 0 4 194 193 200 201
		f 4 41 422 -62 -422
		mu 0 4 193 199 208 200
		f 4 42 423 -63 -423
		mu 0 4 199 207 215 208
		f 4 43 424 -64 -424
		mu 0 4 207 214 224 215
		f 4 44 425 -65 -425
		mu 0 4 214 223 234 224
		f 4 45 426 -66 -426
		mu 0 4 223 233 245 234
		f 4 46 427 -67 -427
		mu 0 4 233 244 259 245
		f 4 47 428 -68 -428
		mu 0 4 244 258 271 259
		f 4 48 429 -69 -429
		mu 0 4 138 139 127 116
		f 4 49 430 -70 -430
		mu 0 4 139 150 140 127
		f 4 50 431 -71 -431
		mu 0 4 282 289 293 294
		f 4 51 432 -72 -432
		mu 0 4 289 279 288 293
		f 4 52 433 -73 -433
		mu 0 4 279 265 278 288
		f 4 53 434 -74 -434
		mu 0 4 265 253 264 278
		f 4 54 435 -75 -435
		mu 0 4 253 239 252 264
		f 4 55 436 -76 -436
		mu 0 4 239 228 238 252
		f 4 56 437 -77 -437
		mu 0 4 228 218 227 238
		f 4 57 438 -78 -438
		mu 0 4 218 209 226 227
		f 4 58 439 -79 -439
		mu 0 4 57 45 34 47
		f 4 59 420 -80 -440
		mu 0 4 45 46 22 34
		f 4 60 441 -81 -441
		mu 0 4 22 23 13 12
		f 4 61 442 -82 -442
		mu 0 4 200 208 216 217
		f 4 62 443 -83 -443
		mu 0 4 208 215 225 216
		f 4 63 444 -84 -444
		mu 0 4 215 224 235 225
		f 4 64 445 -85 -445
		mu 0 4 224 234 246 235
		f 4 65 446 -86 -446
		mu 0 4 234 245 260 246
		f 4 66 447 -87 -447
		mu 0 4 245 259 272 260
		f 4 67 448 -88 -448
		mu 0 4 115 116 106 105
		f 4 68 449 -89 -449
		mu 0 4 116 127 117 106
		f 4 69 450 -90 -450
		mu 0 4 127 140 128 117
		f 4 70 451 -91 -451
		mu 0 4 140 151 141 128
		f 4 71 452 -92 -452
		mu 0 4 293 288 292 297
		f 4 72 453 -93 -453
		mu 0 4 288 278 287 292
		f 4 73 454 -94 -454
		mu 0 4 278 264 277 287
		f 4 74 455 -95 -455
		mu 0 4 264 252 263 277
		f 4 75 456 -96 -456
		mu 0 4 252 238 251 263
		f 4 76 457 -97 -457
		mu 0 4 238 227 250 251
		f 4 77 458 -98 -458
		mu 0 4 58 47 35 48
		f 4 78 459 -99 -459
		mu 0 4 47 34 25 35
		f 4 79 440 -100 -460
		mu 0 4 34 22 12 25
		f 4 80 461 -101 -461
		mu 0 4 12 13 5 4
		f 4 81 462 -102 -462
		mu 0 4 13 24 14 5
		f 4 82 463 -103 -463
		mu 0 4 216 225 236 237
		f 4 83 464 -104 -464
		mu 0 4 225 235 247 236
		f 4 84 465 -105 -465
		mu 0 4 235 246 261 247
		f 4 85 466 -106 -466
		mu 0 4 246 260 273 261
		f 4 86 467 -107 -467
		mu 0 4 118 105 97 108
		f 4 87 468 -108 -468
		mu 0 4 105 106 98 97
		f 4 88 469 -109 -469
		mu 0 4 106 117 107 98
		f 4 89 470 -110 -470
		mu 0 4 117 128 119 107
		f 4 90 471 -111 -471
		mu 0 4 128 141 129 119
		f 4 91 472 -112 -472
		mu 0 4 141 152 142 129
		f 4 92 473 -113 -473
		mu 0 4 292 287 291 296
		f 4 93 474 -114 -474
		mu 0 4 287 277 286 291
		f 4 94 475 -115 -475
		mu 0 4 277 263 276 286
		f 4 95 476 -116 -476
		mu 0 4 263 251 275 276
		f 4 96 477 -117 -477
		mu 0 4 59 48 36 49
		f 4 97 478 -118 -478
		mu 0 4 48 35 26 36
		f 4 98 479 -119 -479
		mu 0 4 35 25 15 26
		f 4 99 460 -120 -480
		mu 0 4 25 12 4 15
		f 4 100 481 -121 -481
		mu 0 4 4 5 1 0
		f 4 101 482 -122 -482
		mu 0 4 5 14 6 1
		f 4 102 483 -123 -483
		mu 0 4 237 236 248 249
		f 4 103 484 -124 -484
		mu 0 4 236 247 262 248
		f 4 104 485 -125 -485
		mu 0 4 247 261 274 262
		f 4 105 486 -126 -486
		mu 0 4 261 273 283 274
		f 4 106 487 -127 -487
		mu 0 4 108 97 93 103
		f 4 107 488 -128 -488
		mu 0 4 97 98 94 93
		f 4 108 489 -129 -489
		mu 0 4 98 107 99 94
		f 4 109 490 -130 -490
		mu 0 4 107 119 109 99
		f 4 110 491 -131 -491
		mu 0 4 119 129 120 109
		f 4 111 492 -132 -492
		mu 0 4 129 142 130 120
		f 4 112 493 -133 -493
		mu 0 4 296 291 295 298
		f 4 113 494 -134 -494
		mu 0 4 291 286 290 295
		f 4 114 495 -135 -495
		mu 0 4 286 276 285 290
		f 4 115 496 -136 -496
		mu 0 4 276 275 284 285
		f 4 116 497 -137 -497
		mu 0 4 49 36 32 43
		f 4 117 498 -138 -498
		mu 0 4 36 26 20 32
		f 4 118 499 -139 -499
		mu 0 4 26 15 10 20
		f 4 119 480 -140 -500
		mu 0 4 15 4 0 10
		f 4 120 501 -141 -501
		mu 0 4 0 1 2 3
		f 4 121 502 -142 -502
		mu 0 4 1 6 7 2
		f 4 122 503 -143 -503
		mu 0 4 412 413 414 415
		f 4 123 504 -144 -504
		mu 0 4 413 416 417 414
		f 4 124 505 -145 -505
		mu 0 4 416 420 421 417
		f 4 125 506 -146 -506
		mu 0 4 420 425 426 421
		f 4 126 507 -147 -507
		mu 0 4 103 93 96 104
		f 4 127 508 -148 -508
		mu 0 4 93 94 95 96
		f 4 128 509 -149 -509
		mu 0 4 94 99 100 95
		f 4 129 510 -150 -510
		mu 0 4 99 109 110 100
		f 4 130 511 -151 -511
		mu 0 4 109 120 121 110
		f 4 131 512 -152 -512
		mu 0 4 120 130 131 121
		f 4 132 513 -153 -513
		mu 0 4 447 448 449 450
		f 4 133 514 -154 -514
		mu 0 4 448 451 452 449
		f 4 134 515 -155 -515
		mu 0 4 451 455 456 452
		f 4 135 516 -156 -516
		mu 0 4 455 460 461 456
		f 4 136 517 -157 -517
		mu 0 4 43 32 33 44
		f 4 137 518 -158 -518
		mu 0 4 32 20 21 33
		f 4 138 519 -159 -519
		mu 0 4 20 10 11 21
		f 4 139 500 -160 -520
		mu 0 4 10 0 3 11
		f 4 140 521 -161 -521
		mu 0 4 3 2 8 9
		f 4 141 522 -162 -522
		mu 0 4 2 7 16 8
		f 4 142 523 -163 -523
		mu 0 4 415 414 418 419
		f 4 143 524 -164 -524
		mu 0 4 414 417 422 418
		f 4 144 525 -165 -525
		mu 0 4 417 421 427 422
		f 4 145 526 -166 -526
		mu 0 4 421 426 431 427
		f 4 146 527 -167 -527
		mu 0 4 104 96 102 114
		f 4 147 528 -168 -528
		mu 0 4 96 95 101 102
		f 4 148 529 -169 -529
		mu 0 4 95 100 111 101
		f 4 149 530 -170 -530
		mu 0 4 100 110 122 111
		f 4 150 531 -171 -531
		mu 0 4 110 121 132 122
		f 4 151 532 -172 -532
		mu 0 4 121 131 143 132
		f 4 152 533 -173 -533
		mu 0 4 450 449 453 454
		f 4 153 534 -174 -534
		mu 0 4 449 452 457 453
		f 4 154 535 -175 -535
		mu 0 4 452 456 462 457
		f 4 155 536 -176 -536
		mu 0 4 456 461 466 462
		f 4 156 537 -177 -537
		mu 0 4 44 33 42 56
		f 4 157 538 -178 -538
		mu 0 4 33 21 31 42
		f 4 158 539 -179 -539
		mu 0 4 21 11 19 31
		f 4 159 520 -180 -540
		mu 0 4 11 3 9 19
		f 4 160 541 -181 -541
		mu 0 4 9 8 17 18
		f 4 161 542 -182 -542
		mu 0 4 8 16 27 17
		f 4 162 543 -183 -543
		mu 0 4 419 418 423 424
		f 4 163 544 -184 -544
		mu 0 4 418 422 428 423
		f 4 164 545 -185 -545
		mu 0 4 422 427 432 428
		f 4 165 546 -186 -546
		mu 0 4 427 431 436 432
		f 4 166 547 -187 -547
		mu 0 4 114 102 113 126
		f 4 167 548 -188 -548
		mu 0 4 102 101 112 113
		f 4 168 549 -189 -549
		mu 0 4 101 111 123 112
		f 4 169 550 -190 -550
		mu 0 4 111 122 133 123
		f 4 170 551 -191 -551
		mu 0 4 122 132 144 133
		f 4 171 552 -192 -552
		mu 0 4 132 143 153 144
		f 4 172 553 -193 -553
		mu 0 4 454 453 458 459
		f 4 173 554 -194 -554
		mu 0 4 453 457 463 458
		f 4 174 555 -195 -555
		mu 0 4 457 462 467 463
		f 4 175 556 -196 -556
		mu 0 4 462 466 471 467
		f 4 176 557 -197 -557
		mu 0 4 56 42 55 66
		f 4 177 558 -198 -558
		mu 0 4 42 31 41 55
		f 4 178 559 -199 -559
		mu 0 4 31 19 30 41
		f 4 179 540 -200 -560
		mu 0 4 19 9 18 30
		f 4 180 561 -201 -561
		mu 0 4 18 17 28 29
		f 4 181 562 -202 -562
		mu 0 4 17 27 37 28
		f 4 182 563 -203 -563
		mu 0 4 424 423 429 430
		f 4 183 564 -204 -564
		mu 0 4 423 428 433 429
		f 4 184 565 -205 -565
		mu 0 4 428 432 437 433
		f 4 185 566 -206 -566
		mu 0 4 432 436 441 437
		f 4 186 567 -207 -567
		mu 0 4 126 113 125 137
		f 4 187 568 -208 -568
		mu 0 4 113 112 124 125
		f 4 188 569 -209 -569
		mu 0 4 112 123 134 124
		f 4 189 570 -210 -570
		mu 0 4 123 133 145 134
		f 4 190 571 -211 -571
		mu 0 4 133 144 154 145
		f 4 191 572 -212 -572
		mu 0 4 144 153 160 154
		f 4 192 573 -213 -573
		mu 0 4 459 458 464 465
		f 4 193 574 -214 -574
		mu 0 4 458 463 468 464
		f 4 194 575 -215 -575
		mu 0 4 463 467 472 468
		f 4 195 576 -216 -576
		mu 0 4 467 471 476 472
		f 4 196 577 -217 -577
		mu 0 4 66 55 65 73
		f 4 197 578 -218 -578
		mu 0 4 55 41 54 65
		f 4 198 579 -219 -579
		mu 0 4 41 30 40 54
		f 4 199 560 -220 -580
		mu 0 4 30 18 29 40
		f 4 200 581 -221 -581
		mu 0 4 29 28 38 39
		f 4 201 582 -222 -582
		mu 0 4 28 37 50 38
		f 4 202 583 -223 -583
		mu 0 4 430 429 434 435
		f 4 203 584 -224 -584
		mu 0 4 429 433 438 434
		f 4 204 585 -225 -585
		mu 0 4 433 437 442 438
		f 4 205 586 -226 -586
		mu 0 4 437 441 444 442
		f 4 206 587 -227 -587
		mu 0 4 137 125 136 149
		f 4 207 588 -228 -588
		mu 0 4 125 124 135 136
		f 4 208 589 -229 -589
		mu 0 4 124 134 146 135
		f 4 209 590 -230 -590
		mu 0 4 134 145 155 146
		f 4 210 591 -231 -591
		mu 0 4 145 154 161 155
		f 4 211 592 -232 -592
		mu 0 4 154 160 167 161
		f 4 212 593 -233 -593
		mu 0 4 465 464 469 470
		f 4 213 594 -234 -594
		mu 0 4 464 468 473 469
		f 4 214 595 -235 -595
		mu 0 4 468 472 477 473
		f 4 215 596 -236 -596
		mu 0 4 472 476 479 477
		f 4 216 597 -237 -597
		mu 0 4 73 65 72 80
		f 4 217 598 -238 -598
		mu 0 4 65 54 64 72
		f 4 218 599 -239 -599
		mu 0 4 54 40 53 64
		f 4 219 580 -240 -600
		mu 0 4 40 29 39 53
		f 4 220 601 -241 -601
		mu 0 4 39 38 51 52
		f 4 221 602 -242 -602
		mu 0 4 38 50 60 51
		f 4 222 603 -243 -603
		mu 0 4 435 434 439 440
		f 4 223 604 -244 -604
		mu 0 4 434 438 443 439
		f 4 224 605 -245 -605
		mu 0 4 438 442 445 443
		f 4 225 606 -246 -606
		mu 0 4 442 444 446 445
		f 4 226 607 -247 -607
		mu 0 4 149 136 148 159
		f 4 227 608 -248 -608
		mu 0 4 136 135 147 148
		f 4 228 609 -249 -609
		mu 0 4 135 146 156 147
		f 4 229 610 -250 -610
		mu 0 4 146 155 162 156
		f 4 230 611 -251 -611
		mu 0 4 155 161 168 162
		f 4 231 612 -252 -612
		mu 0 4 161 167 174 168
		f 4 232 613 -253 -613
		mu 0 4 470 469 474 475
		f 4 233 614 -254 -614
		mu 0 4 469 473 478 474
		f 4 234 615 -255 -615
		mu 0 4 473 477 480 478
		f 4 235 616 -256 -616
		mu 0 4 477 479 481 480
		f 4 236 617 -257 -617
		mu 0 4 80 72 79 84
		f 4 237 618 -258 -618
		mu 0 4 72 64 71 79
		f 4 238 619 -259 -619
		mu 0 4 64 53 63 71
		f 4 239 600 -260 -620
		mu 0 4 53 39 52 63
		f 4 240 621 -261 -621
		mu 0 4 52 51 61 62
		f 4 241 622 -262 -622
		mu 0 4 51 60 67 61
		f 4 242 623 -263 -623
		mu 0 4 316 317 308 307
		f 4 243 624 -264 -624
		mu 0 4 317 326 318 308
		f 4 244 625 -265 -625
		mu 0 4 326 337 327 318
		f 4 245 626 -266 -626
		mu 0 4 337 347 338 327
		f 4 246 627 -267 -627
		mu 0 4 159 148 158 166
		f 4 247 628 -268 -628
		mu 0 4 148 147 157 158
		f 4 248 629 -269 -629
		mu 0 4 147 156 163 157
		f 4 249 630 -270 -630
		mu 0 4 156 162 169 163
		f 4 250 631 -271 -631
		mu 0 4 162 168 175 169
		f 4 251 632 -272 -632
		mu 0 4 168 174 178 175
		f 4 252 633 -273 -633
		mu 0 4 411 409 406 410
		f 4 253 634 -274 -634
		mu 0 4 409 405 402 406
		f 4 254 635 -275 -635
		mu 0 4 405 400 390 402
		f 4 255 636 -276 -636
		mu 0 4 400 401 391 390
		f 4 256 637 -277 -637
		mu 0 4 84 79 83 89
		f 4 257 638 -278 -638
		mu 0 4 79 71 78 83
		f 4 258 639 -279 -639
		mu 0 4 71 63 70 78
		f 4 259 620 -280 -640
		mu 0 4 63 52 62 70
		f 4 260 641 -281 -641
		mu 0 4 62 61 68 69
		f 4 261 642 -282 -642
		mu 0 4 61 67 74 68
		f 4 262 643 -283 -643
		mu 0 4 307 308 303 300
		f 4 263 644 -284 -644
		mu 0 4 308 318 309 303
		f 4 264 645 -285 -645
		mu 0 4 318 327 319 309
		f 4 265 646 -286 -646
		mu 0 4 327 338 328 319
		f 4 266 647 -287 -647
		mu 0 4 166 158 165 173
		f 4 267 648 -288 -648
		mu 0 4 158 157 164 165
		f 4 268 649 -289 -649
		mu 0 4 157 163 170 164
		f 4 269 650 -290 -650
		mu 0 4 163 169 176 170
		f 4 270 651 -291 -651
		mu 0 4 169 175 179 176
		f 4 271 652 -292 -652
		mu 0 4 175 178 183 179
		f 4 272 653 -293 -653
		mu 0 4 410 406 403 407
		f 4 273 654 -294 -654
		mu 0 4 406 402 392 403
		f 4 274 655 -295 -655
		mu 0 4 402 390 382 392
		f 4 275 656 -296 -656
		mu 0 4 390 391 373 382
		f 4 276 657 -297 -657
		mu 0 4 89 83 88 92
		f 4 277 658 -298 -658
		mu 0 4 83 78 82 88
		f 4 278 659 -299 -659
		mu 0 4 78 70 77 82
		f 4 279 640 -300 -660
		mu 0 4 70 62 69 77
		f 4 280 661 -301 -661
		mu 0 4 69 68 75 76
		f 4 281 662 -302 -662
		mu 0 4 299 300 301 302
		f 4 282 663 -303 -663
		mu 0 4 300 303 304 301
		f 4 283 664 -304 -664
		mu 0 4 303 309 310 304
		f 4 284 665 -305 -665
		mu 0 4 309 319 320 310
		f 4 285 666 -306 -666
		mu 0 4 319 328 329 320
		f 4 286 667 -307 -667
		mu 0 4 328 339 340 329
		f 4 287 668 -308 -668
		mu 0 4 165 164 171 172
		f 4 288 669 -309 -669
		mu 0 4 164 170 177 171
		f 4 289 670 -310 -670
		mu 0 4 170 176 180 177
		f 4 290 671 -311 -671
		mu 0 4 176 179 184 180
		f 4 291 672 -312 -672
		mu 0 4 408 407 404 397
		f 4 292 673 -313 -673
		mu 0 4 407 403 393 404
		f 4 293 674 -314 -674
		mu 0 4 403 392 383 393
		f 4 294 675 -315 -675
		mu 0 4 392 382 375 383
		f 4 295 676 -316 -676
		mu 0 4 382 373 366 375
		f 4 296 677 -317 -677
		mu 0 4 373 374 359 366
		f 4 297 678 -318 -678
		mu 0 4 88 82 87 91
		f 4 298 679 -319 -679
		mu 0 4 82 77 81 87
		f 4 299 660 -320 -680
		mu 0 4 77 69 76 81
		f 4 300 681 -321 -681
		mu 0 4 314 302 306 315
		f 4 301 682 -322 -682
		mu 0 4 302 301 305 306
		f 4 302 683 -323 -683
		mu 0 4 301 304 311 305
		f 4 303 684 -324 -684
		mu 0 4 304 310 321 311
		f 4 304 685 -325 -685
		mu 0 4 310 320 330 321
		f 4 305 686 -326 -686
		mu 0 4 320 329 341 330
		f 4 306 687 -327 -687
		mu 0 4 329 340 348 341
		f 4 307 688 -328 -688
		mu 0 4 340 354 355 348
		f 4 308 689 -329 -689
		mu 0 4 171 177 181 182
		f 4 309 690 -330 -690
		mu 0 4 177 180 185 181
		f 4 310 691 -331 -691
		mu 0 4 396 397 386 378
		f 4 311 692 -332 -692
		mu 0 4 397 404 394 386
		f 4 312 693 -333 -693
		mu 0 4 404 393 384 394
		f 4 313 694 -334 -694
		mu 0 4 393 383 376 384
		f 4 314 695 -335 -695
		mu 0 4 383 375 367 376
		f 4 315 696 -336 -696
		mu 0 4 375 366 361 367
		f 4 316 697 -337 -697
		mu 0 4 366 359 352 361
		f 4 317 698 -338 -698
		mu 0 4 359 360 345 352
		f 4 318 699 -339 -699
		mu 0 4 87 81 86 90
		f 4 319 680 -340 -700
		mu 0 4 81 76 85 86
		f 4 320 701 -341 -701
		mu 0 4 315 306 313 325
		f 4 321 702 -342 -702
		mu 0 4 306 305 312 313
		f 4 322 703 -343 -703
		mu 0 4 305 311 322 312
		f 4 323 704 -344 -704
		mu 0 4 311 321 331 322
		f 4 324 705 -345 -705
		mu 0 4 321 330 342 331
		f 4 325 706 -346 -706
		mu 0 4 330 341 349 342
		f 4 326 707 -347 -707
		mu 0 4 341 348 356 349
		f 4 327 708 -348 -708
		mu 0 4 348 355 363 356
		f 4 328 709 -349 -709
		mu 0 4 355 369 370 363
		f 4 329 710 -350 -710
		mu 0 4 369 378 379 370
		f 4 330 711 -351 -711
		mu 0 4 378 386 387 379
		f 4 331 712 -352 -712
		mu 0 4 386 394 395 387
		f 4 332 713 -353 -713
		mu 0 4 394 384 385 395
		f 4 333 714 -354 -714
		mu 0 4 384 376 377 385
		f 4 334 715 -355 -715
		mu 0 4 376 367 368 377
		f 4 335 716 -356 -716
		mu 0 4 367 361 362 368
		f 4 336 717 -357 -717
		mu 0 4 361 352 353 362
		f 4 337 718 -358 -718
		mu 0 4 352 345 346 353
		f 4 338 719 -359 -719
		mu 0 4 345 335 336 346
		f 4 339 700 -360 -720
		mu 0 4 335 315 325 336
		f 4 340 721 -361 -721
		mu 0 4 325 313 324 334
		f 4 341 722 -362 -722
		mu 0 4 313 312 323 324
		f 4 342 723 -363 -723
		mu 0 4 312 322 332 323
		f 4 343 724 -364 -724
		mu 0 4 322 331 343 332
		f 4 344 725 -365 -725
		mu 0 4 331 342 350 343
		f 4 345 726 -366 -726
		mu 0 4 342 349 357 350
		f 4 346 727 -367 -727
		mu 0 4 349 356 364 357
		f 4 347 728 -368 -728
		mu 0 4 356 363 371 364
		f 4 348 729 -369 -729
		mu 0 4 363 370 380 371
		f 4 349 730 -370 -730
		mu 0 4 370 379 388 380
		f 4 350 731 -371 -731
		mu 0 4 379 387 398 388
		f 4 351 732 -372 -732
		mu 0 4 387 395 399 398
		f 4 352 733 -373 -733
		mu 0 4 395 385 389 399
		f 4 353 734 -374 -734
		mu 0 4 385 377 381 389
		f 4 354 735 -375 -735
		mu 0 4 377 368 372 381
		f 4 355 736 -376 -736
		mu 0 4 368 362 365 372
		f 4 356 737 -377 -737
		mu 0 4 362 353 358 365
		f 4 357 738 -378 -738
		mu 0 4 353 346 351 358
		f 4 358 739 -379 -739
		mu 0 4 346 336 344 351
		f 4 359 720 -380 -740
		mu 0 4 336 325 334 344
		f 3 -1 -741 741
		mu 0 3 187 186 190
		f 3 -2 -742 742
		mu 0 3 191 187 190
		f 3 -3 -743 743
		mu 0 3 197 191 190
		f 3 -4 -744 744
		mu 0 3 205 197 190
		f 3 -5 -745 745
		mu 0 3 212 205 190
		f 3 -6 -746 746
		mu 0 3 221 212 190
		f 3 -7 -747 747
		mu 0 3 231 221 190
		f 3 -8 -748 748
		mu 0 3 242 231 190
		f 3 -9 -749 749
		mu 0 3 256 242 190
		f 3 -10 -750 750
		mu 0 3 268 256 190
		f 3 -11 -751 751
		mu 0 3 280 268 190
		f 3 -12 -752 752
		mu 0 3 266 280 190
		f 3 -13 -753 753
		mu 0 3 254 266 190
		f 3 -14 -754 754
		mu 0 3 240 254 190
		f 3 -15 -755 755
		mu 0 3 229 240 190
		f 3 -16 -756 756
		mu 0 3 219 229 190
		f 3 -17 -757 757
		mu 0 3 210 219 190
		f 3 -18 -758 758
		mu 0 3 203 210 190
		f 3 -19 -759 759
		mu 0 3 195 203 190
		f 3 -20 -760 740
		mu 0 3 186 195 190
		f 3 360 761 -761
		mu 0 3 334 324 333
		f 3 361 762 -762
		mu 0 3 324 323 333
		f 3 362 763 -763
		mu 0 3 323 332 333
		f 3 363 764 -764
		mu 0 3 332 343 333
		f 3 364 765 -765
		mu 0 3 343 350 333
		f 3 365 766 -766
		mu 0 3 350 357 333
		f 3 366 767 -767
		mu 0 3 357 364 333
		f 3 367 768 -768
		mu 0 3 364 371 333
		f 3 368 769 -769
		mu 0 3 371 380 333
		f 3 369 770 -770
		mu 0 3 380 388 333
		f 3 370 771 -771
		mu 0 3 388 398 333
		f 3 371 772 -772
		mu 0 3 398 399 333
		f 3 372 773 -773
		mu 0 3 399 389 333
		f 3 373 774 -774
		mu 0 3 389 381 333
		f 3 374 775 -775
		mu 0 3 381 372 333
		f 3 375 776 -776
		mu 0 3 372 365 333
		f 3 376 777 -777
		mu 0 3 365 358 333
		f 3 377 778 -778
		mu 0 3 358 351 333
		f 3 378 779 -779
		mu 0 3 351 344 333
		f 3 379 760 -780
		mu 0 3 344 334 333;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere1" -p "Mesh";
	rename -uid "AAF97835-4B40-573A-7F4E-54B4A9661C9C";
	setAttr ".t" -type "double3" 0 1.8608968582960048 0 ;
	setAttr ".s" -type "double3" 0.90699860274272448 0.90699860274272448 0.90699860274272448 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "117BC813-4C9F-97D9-D344-7AA1A8332CA5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.70421799200222301 0.63146688337969537 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 482 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.48602495 0.49490866 0.49527669
		 0.49490866 0.49659127 0.50030857 0.48671612 0.50030857 0.48508129 0.48992503 0.49348152
		 0.48992503 0.50261873 0.49490866 0.50442809 0.50030857 0.49739325 0.50599176 0.48713771
		 0.50599176 0.47576928 0.49490866 0.47576928 0.50030857 0.48390824 0.48548073 0.49125046
		 0.48548073 0.50014818 0.48992503 0.47576928 0.48992503 0.50553232 0.50599176 0.49766284
		 0.51181859 0.4872795 0.51181859 0.47576928 0.50599176 0.46551377 0.49490866 0.46482265
		 0.50030857 0.48253483 0.4816848 0.48863801 0.4816848 0.49707723 0.48548073 0.47576928
		 0.48548073 0.46645749 0.48992503 0.50590312 0.51181859 0.49739325 0.5176453 0.48713771
		 0.5176453 0.47576928 0.51181859 0.46440101 0.50599176 0.45626217 0.49490866 0.45494741
		 0.50030857 0.47576928 0.4816848 0.46763039 0.48548073 0.45805711 0.48992503 0.50553232
		 0.5176453 0.49659127 0.5233286 0.48671612 0.5233286 0.47576928 0.5176453 0.46425936
		 0.51181859 0.45414537 0.50599176 0.44891989 0.49490866 0.44711041 0.50030857 0.47576928
		 0.47863093 0.48099494 0.47863093 0.46900398 0.4816848 0.46028835 0.48548073 0.45139062
		 0.48992503 0.50442809 0.5233286 0.49527669 0.52872843 0.48602495 0.52872843 0.47576928
		 0.5233286 0.46440101 0.5176453 0.4538759 0.51181859 0.4460066 0.50599176 0.47054383
		 0.47863093 0.46290058 0.4816848 0.45446146 0.48548073 0.50261873 0.52872843 0.49348152
		 0.53371215 0.48508129 0.53371215 0.47576928 0.52872843 0.46482265 0.5233286 0.45414537
		 0.5176453 0.44563556 0.51181859 0.50014818 0.53371215 0.49125046 0.53815651 0.48390824
		 0.53815651 0.47576928 0.53371215 0.46551377 0.52872843 0.45494741 0.5233286 0.4460066
		 0.5176453 0.49707723 0.53815651 0.48863801 0.54195237 0.48253483 0.54195237 0.47576928
		 0.53815651 0.46645749 0.53371215 0.45626217 0.52872843 0.44711041 0.5233286 0.47576928
		 0.54195237 0.46763039 0.53815651 0.45805711 0.53371215 0.44891989 0.52872843 0.48099494
		 0.54500639 0.47576928 0.54500639 0.46900398 0.54195237 0.46028835 0.53815651 0.45139062
		 0.53371215 0.47054383 0.54500639 0.46290058 0.54195237 0.45446146 0.53815651 0.53890288
		 0.49647221 0.54781651 0.49647221 0.54715061 0.50167489 0.53763616 0.50167489 0.54063237
		 0.4916707 0.54872578 0.4916707 0.55769753 0.49647221 0.55769753 0.50167489 0.54674459
		 0.50715047 0.53686357 0.50715047 0.53182876 0.49647221 0.53008562 0.50167489 0.54278195
		 0.48738864 0.54985601 0.48738864 0.55769753 0.4916707 0.53420937 0.4916707 0.56757849
		 0.49647221 0.5682444 0.50167489 0.55769753 0.50715047 0.54660785 0.51276433 0.53660381
		 0.51276433 0.52902192 0.50715047 0.54529905 0.48373139 0.55117911 0.48373139 0.55769753
		 0.48738864 0.53716815 0.48738864 0.56666917 0.4916707 0.57649225 0.49647221 0.57775885
		 0.50167489 0.56865054 0.50715047 0.55769753 0.51276433 0.54674459 0.51837838 0.53686357
		 0.51837838 0.52866435 0.51276433 0.55769753 0.48373139 0.565539 0.48738864 0.57476282
		 0.4916707 0.58356607 0.49647221 0.58530945 0.50167489 0.57853162 0.50715047 0.56878716
		 0.51276433 0.55769753 0.51837838 0.54715061 0.52385408 0.53763616 0.52385408 0.52902192
		 0.51837838 0.55266297 0.4807891 0.55769753 0.4807891 0.56421572 0.48373139 0.57261312
		 0.48738864 0.58118558 0.4916707 0.58637309 0.50715047 0.57879138 0.51276433 0.56865054
		 0.51837838 0.55769753 0.52385408 0.54781651 0.52905673 0.53890288 0.52905673 0.53008562
		 0.52385408 0.56273204 0.4807891 0.57009614 0.48373139 0.57822698 0.48738864 0.58673054
		 0.51276433 0.57853162 0.51837838 0.5682444 0.52385408 0.55769753 0.52905673 0.54872578
		 0.53385824 0.54063237 0.53385824 0.53182876 0.52905673 0.58637309 0.51837838 0.57775885
		 0.52385408 0.56757849 0.52905673 0.55769753 0.53385824 0.54985601 0.53814024 0.54278195
		 0.53814024 0.53420937 0.53385824 0.58530945 0.52385408 0.57649225 0.52905673 0.56666917
		 0.53385824 0.55769753 0.53814024 0.55117911 0.54179746 0.54529905 0.54179746 0.53716815
		 0.53814024 0.58356607 0.52905673 0.57476282 0.53385824 0.565539 0.53814024 0.55769753
		 0.54179746 0.58118558 0.53385824 0.57261312 0.53814024 0.56421572 0.54179746 0.55769753
		 0.5447399 0.55266297 0.5447399 0.57822698 0.53814024 0.57009614 0.54179746 0.56273204
		 0.5447399 0.47854716 0.59964275 0.47756851 0.59772182 0.48300618 0.5937711 0.48493963
		 0.59756589 0.47199348 0.60177231 0.47604394 0.59619737 0.47999471 0.59075952 0.48817247
		 0.59001732 0.49101317 0.59559238 0.47888446 0.60177231 0.48560578 0.60177231 0.47412282
		 0.59521848 0.47619992 0.588826 0.48374838 0.58559293 0.49294084 0.5865531 0.49661845
		 0.5937711 0.49199194 0.60177231 0.47854716 0.60390168 0.48493958 0.60597861 0.47199348
		 0.59488112 0.47199348 0.58815986 0.47817332 0.58275229 0.48721263 0.58082479 0.49101317
		 0.607952 0.47756851 0.6058228 0.48300606 0.6097734 0.46986395 0.59521848 0.46778697
		 0.58882606 0.47199348 0.58177364 0.47999471 0.57714701 0.49030221 0.57657254 0.49719322
		 0.58346349 0.48817259 0.61352718 0.47604394 0.60734725 0.47999471 0.61278498 0.46794295
		 0.59619725 0.4639923 0.59075958 0.46581358 0.58275253 0.47199348 0.57587987 0.48161873
		 0.57214826 0.49661845 0.6097734 0.49294084 0.61699152 0.48374832 0.61795139 0.47412282
		 0.60832608 0.47619981 0.61471832 0.46641856 0.59772182 0.46098083 0.5937711 0.46023858
		 0.58559287 0.46399224 0.57714701 0.47199348 0.57062376 0.48300606 0.56787866 0.49294084
		 0.57294065 0.48721263 0.62271941 0.47817332 0.62079191 0.47199348 0.60866332 0.47199348
		 0.61538458 0.46543965 0.59964275 0.45904732 0.59756589 0.4558143 0.59001738 0.45677438
		 0.58082485 0.46236807 0.57214832 0.47199348 0.56613445 0.48412216 0.56444383 0.49506372
		 0.57001865;
	setAttr ".uvst[0].uvsp[250:481]" 0.49719322 0.62008095 0.49030215 0.62697184
		 0.47999471 0.62639737 0.47199348 0.62177074 0.46986401 0.60832608 0.46778697 0.61471832
		 0.4651024 0.60177231 0.45838109 0.60177231 0.45297372 0.59559238 0.45104617 0.58655322
		 0.45368478 0.57657254 0.46098083 0.56787866 0.47199348 0.56252289 0.48161888 0.63139629
		 0.47199348 0.62766457 0.46581352 0.62079191 0.46794295 0.60734725 0.4639923 0.61278498
		 0.46543965 0.60390168 0.45904732 0.60597873 0.45199487 0.60177231 0.44736841 0.59377098
		 0.44679376 0.58346367 0.45104611 0.57294065 0.45986474 0.56444383 0.49294084 0.63060367
		 0.48300606 0.6356656 0.47199348 0.63292092 0.4639923 0.62639737 0.46023858 0.61795139
		 0.46641856 0.6058228 0.46098071 0.6097734 0.45297372 0.607952 0.4489232 0.57001865
		 0.49506372 0.63352567 0.48412216 0.63910061 0.47199348 0.63740999 0.46236807 0.63139629
		 0.45677432 0.62271941 0.45581424 0.61352718 0.47199348 0.64102155 0.46098071 0.6356656
		 0.45368484 0.62697184 0.45104617 0.61699152 0.44736841 0.6097734 0.45986474 0.63910073
		 0.45104617 0.63060391 0.44679376 0.62008095 0.4489232 0.63352567 0.57798463 0.61893839
		 0.57080984 0.62611324 0.56759298 0.6216858 0.57355714 0.61572158 0.56176883 0.63071984
		 0.56007767 0.62551504 0.56398594 0.61672109 0.56859255 0.61211455 0.57355714 0.62989444
		 0.56321335 0.63516504 0.55174696 0.63230687 0.55174696 0.62683421 0.55818146 0.6196788
		 0.56007767 0.61134189 0.56321335 0.60820633 0.57738632 0.60820633 0.57155025 0.60631007
		 0.57576746 0.63293678 0.5643754 0.63874143 0.55174696 0.63698119 0.54172522 0.63071984
		 0.54341644 0.62551504 0.55174696 0.62069792 0.55612683 0.61335504 0.55596435 0.60568029
		 0.55755162 0.60409302 0.56522655 0.60425544 0.55174696 0.64074153 0.54028088 0.63516504
		 0.53268439 0.62611324 0.53590113 0.6216858 0.5453127 0.6196788 0.55174696 0.61404872
		 0.55396432 0.60669941 0.55174696 0.59987557 0.55857068 0.60209286 0.57256943 0.59987557
		 0.56592011 0.59987557 0.53911883 0.63874143 0.52993703 0.62989444 0.52550948 0.61893839
		 0.52993703 0.61572158 0.53950804 0.61672109 0.54736739 0.61335504 0.55174696 0.6070506
		 0.55892187 0.59987557 0.57155025 0.59344137 0.56522655 0.595496 0.52772677 0.63293678
		 0.53490156 0.61211455 0.54341644 0.61134189 0.54952985 0.60669941 0.55857068 0.59765857
		 0.56859255 0.58763671 0.56321335 0.59154505 0.52610791 0.60820633 0.53194398 0.60631007
		 0.54028088 0.60820633 0.54752988 0.60568029 0.55755168 0.59565836 0.57355714 0.58402979
		 0.57738632 0.59154505 0.56398594 0.58303034 0.56007767 0.5884096 0.53826761 0.60425544
		 0.54594249 0.60409302 0.55596435 0.59407121 0.56759298 0.57806569 0.55818146 0.58007252
		 0.55612683 0.5863964 0.53092498 0.59987557 0.53757411 0.59987557 0.54492337 0.60209286
		 0.55396432 0.59305197 0.57080984 0.5736382 0.57798457 0.58081305 0.56007767 0.57423639
		 0.55174696 0.57905352 0.55174696 0.58570278 0.53194398 0.59344137 0.53826761 0.595496
		 0.54457223 0.59987557 0.55174696 0.59270084 0.56176883 0.56903177 0.55174696 0.57291704
		 0.5453127 0.58007252 0.54736739 0.5863964 0.53490156 0.58763671 0.54028088 0.59154505
		 0.54492337 0.59765857 0.54952985 0.59305197 0.56321335 0.56458634 0.57355714 0.56985676
		 0.55174696 0.56744438 0.54341644 0.57423639 0.53950816 0.58303034 0.54341644 0.5884096
		 0.52610791 0.59154505 0.52993703 0.58402979 0.54594249 0.59565836 0.54752988 0.59407109
		 0.56437522 0.56100982 0.57576746 0.56681454 0.55174696 0.56277025 0.54172522 0.56903177
		 0.53590113 0.57806569 0.55174696 0.55900985 0.54028088 0.56458634 0.53268439 0.5736382
		 0.52550948 0.58081305 0.53911883 0.56100982 0.52993703 0.56985676 0.52772677 0.56681454
		 0.90433514 0.56557977 0.90433514 0.58359641 0.89381933 0.58225042 0.89381933 0.56301928
		 0.90433514 0.6035682 0.89381933 0.6035682 0.8827517 0.5814293 0.8827517 0.56145781
		 0.90433514 0.62353969 0.89381933 0.62488574 0.8827517 0.6035682 0.87140471 0.58115309
		 0.87140471 0.56093276 0.90433514 0.64155638 0.89381933 0.64411664 0.8827517 0.62570667
		 0.87140471 0.6035682 0.86005747 0.5814293 0.86005747 0.56145781 0.8827517 0.6456784
		 0.87140471 0.6259827 0.86005747 0.6035682 0.84899002 0.58225042 0.84899002 0.56301928
		 0.87140471 0.64620334 0.86005747 0.62570667 0.84899002 0.6035682 0.83847433 0.58359641
		 0.83847433 0.56557977 0.86005747 0.6456784 0.84899002 0.62488574 0.83847433 0.6035682
		 0.84899002 0.64411664 0.83847433 0.62353969 0.83847433 0.64155638 0.9258346 0.62182915
		 0.9258346 0.60412645 0.93616718 0.60544908 0.93616718 0.62434494 0.9258346 0.58450282
		 0.93616718 0.58450282 0.94704181 0.60625613 0.94704181 0.62587953 0.9258346 0.56487888
		 0.93616718 0.56355649 0.94704181 0.58450282 0.95819134 0.60652697 0.95819134 0.62639523
		 0.9258346 0.54717618 0.93616718 0.54466063 0.94704181 0.56274968 0.95819134 0.58450282
		 0.96934032 0.60625613 0.96934032 0.62587953 0.94704181 0.54312593 0.95819134 0.56247848
		 0.96934032 0.58450282 0.98021543 0.60544908 0.98021543 0.62434494 0.95819134 0.54261035
		 0.96934032 0.56274968 0.98021543 0.58450282 0.99054796 0.60412645 0.99054796 0.62182915
		 0.96934032 0.54312593 0.98021543 0.56355649 0.99054796 0.58450282 0.98021543 0.54466063
		 0.99054796 0.56487888 0.99054796 0.54717618;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048340943 0.12655823 -0.98768836 -0.091949932
		 0.091949932 -0.98768836 -0.12655823 0.048340935 -0.98768836 -0.14877811 0 -0.98768836 -0.15643455
		 -0.048340935 -0.98768836 -0.1487781 -0.091949917 -0.98768836 -0.1265582 -0.12655818 -0.98768836 -0.091949902
		 -0.14877807 -0.98768836 -0.048340924 -0.15643452 -0.98768836 0 -0.14877807 -0.98768836 0.048340924
		 -0.12655818 -0.98768836 0.091949895 -0.091949895 -0.98768836 0.12655817 -0.048340924 -0.98768836 0.14877805
		 -4.6621107e-09 -0.98768836 0.15643449 0.048340909 -0.98768836 0.14877804 0.09194988 -0.98768836 0.12655815
		 0.12655815 -0.98768836 0.091949888 0.14877804 -0.98768836 0.048340913 0.15643448 -0.98768836 0
		 0.29389283 -0.95105654 -0.095491566 0.25000018 -0.95105654 -0.18163574 0.18163574 -0.95105654 -0.25000015
		 0.095491551 -0.95105654 -0.2938928 0 -0.95105654 -0.30901715 -0.095491551 -0.95105654 -0.29389277
		 -0.18163571 -0.95105654 -0.25000009 -0.25000009 -0.95105654 -0.18163569 -0.29389271 -0.95105654 -0.095491529
		 -0.30901706 -0.95105654 0 -0.29389271 -0.95105654 0.095491529 -0.25000006 -0.95105654 0.18163568
		 -0.18163568 -0.95105654 0.25000006 -0.095491529 -0.95105654 0.29389268 -9.2094243e-09 -0.95105654 0.30901703
		 0.095491499 -0.95105654 0.29389265 0.18163563 -0.95105654 0.25000003 0.25 -0.95105654 0.18163565
		 0.29389265 -0.95105654 0.095491506 0.309017 -0.95105654 0 0.43177092 -0.89100653 -0.14029087
		 0.36728629 -0.89100653 -0.2668491 0.2668491 -0.89100653 -0.36728626 0.14029086 -0.89100653 -0.43177086
		 0 -0.89100653 -0.45399073 -0.14029086 -0.89100653 -0.43177083 -0.26684904 -0.89100653 -0.36728618
		 -0.36728615 -0.89100653 -0.26684901 -0.43177077 -0.89100653 -0.14029081 -0.45399064 -0.89100653 0
		 -0.43177077 -0.89100653 0.14029081 -0.36728612 -0.89100653 0.26684898 -0.26684898 -0.89100653 0.36728612
		 -0.14029081 -0.89100653 0.43177071 -1.3529972e-08 -0.89100653 0.45399058 0.14029078 -0.89100653 0.43177068
		 0.26684892 -0.89100653 0.36728609 0.36728606 -0.89100653 0.26684895 0.43177065 -0.89100653 0.1402908
		 0.45399052 -0.89100653 0 0.55901736 -0.809017 -0.18163574 0.47552857 -0.809017 -0.34549171
		 0.34549171 -0.809017 -0.47552854 0.18163572 -0.809017 -0.5590173 0 -0.809017 -0.58778554
		 -0.18163572 -0.809017 -0.55901724 -0.34549165 -0.809017 -0.47552842 -0.47552839 -0.809017 -0.34549159
		 -0.55901712 -0.809017 -0.18163566 -0.58778536 -0.809017 0 -0.55901712 -0.809017 0.18163566
		 -0.47552836 -0.809017 0.34549156 -0.34549156 -0.809017 0.47552833 -0.18163566 -0.809017 0.55901706
		 -1.7517365e-08 -0.809017 0.5877853 0.18163562 -0.809017 0.55901706 0.3454915 -0.809017 0.4755283
		 0.47552827 -0.809017 0.34549153 0.559017 -0.809017 0.18163563 0.58778524 -0.809017 0
		 0.67249894 -0.70710677 -0.21850814 0.57206178 -0.70710677 -0.41562718 0.41562718 -0.70710677 -0.57206172
		 0.21850812 -0.70710677 -0.67249888 0 -0.70710677 -0.70710713 -0.21850812 -0.70710677 -0.67249882
		 -0.41562709 -0.70710677 -0.5720616 -0.57206154 -0.70710677 -0.41562706 -0.6724987 -0.70710677 -0.21850805
		 -0.70710695 -0.70710677 0 -0.6724987 -0.70710677 0.21850805 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206148 -0.21850805 -0.70710677 0.67249858 -2.1073424e-08 -0.70710677 0.70710683
		 0.21850799 -0.70710677 0.67249858 0.41562691 -0.70710677 0.57206142 0.57206142 -0.70710677 0.41562697
		 0.67249852 -0.70710677 0.21850802 0.70710677 -0.70710677 0 0.7694214 -0.58778524 -0.25000015
		 0.65450895 -0.58778524 -0.47552854 0.47552854 -0.58778524 -0.65450889 0.25000012 -0.58778524 -0.76942128
		 0 -0.58778524 -0.80901736 -0.25000012 -0.58778524 -0.76942122 -0.47552845 -0.58778524 -0.65450877
		 -0.65450871 -0.58778524 -0.47552839 -0.7694211 -0.58778524 -0.25000006 -0.80901718 -0.58778524 0
		 -0.7694211 -0.58778524 0.25000006 -0.65450865 -0.58778524 0.47552836 -0.47552836 -0.58778524 0.65450859
		 -0.25000006 -0.58778524 0.76942098 -2.4110586e-08 -0.58778524 0.80901712 0.24999999 -0.58778524 0.76942098
		 0.47552827 -0.58778524 0.65450853 0.65450853 -0.58778524 0.4755283 0.76942092 -0.58778524 0.25
		 0.809017 -0.58778524 0 0.8473981 -0.45399052 -0.27533633 0.72083992 -0.45399052 -0.5237208
		 0.5237208 -0.45399052 -0.72083986 0.2753363 -0.45399052 -0.84739798 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739798 -0.52372068 -0.45399052 -0.72083968 -0.72083962 -0.45399052 -0.52372062
		 -0.8473978 -0.45399052 -0.27533621 -0.89100677 -0.45399052 0 -0.8473978 -0.45399052 0.27533621
		 -0.72083962 -0.45399052 0.52372062 -0.52372062 -0.45399052 0.72083956 -0.27533621 -0.45399052 0.84739769
		 -2.6554064e-08 -0.45399052 0.89100665 0.27533615 -0.45399052 0.84739763 0.5237205 -0.45399052 0.7208395
		 0.72083944 -0.45399052 0.52372056 0.84739757 -0.45399052 0.27533618 0.89100653 -0.45399052 0
		 0.90450913 -0.30901697 -0.2938928 0.7694214 -0.30901697 -0.55901736 0.55901736 -0.30901697 -0.76942134
		 0.29389277 -0.30901697 -0.90450901 0 -0.30901697 -0.95105702 -0.29389277 -0.30901697 -0.90450895
		 -0.55901724 -0.30901697 -0.76942122 -0.76942116 -0.30901697 -0.55901718 -0.90450877 -0.30901697 -0.29389271
		 -0.95105678 -0.30901697 0 -0.90450877 -0.30901697 0.29389271 -0.7694211 -0.30901697 0.55901712
		 -0.55901712 -0.30901697 0.76942104 -0.29389271 -0.30901697 0.90450865 -2.8343694e-08 -0.30901697 0.95105666
		 0.29389262 -0.30901697 0.90450859 0.559017 -0.30901697 0.76942098 0.76942092 -0.30901697 0.55901706
		 0.90450853 -0.30901697 0.29389265 0.95105654 -0.30901697 0 0.93934804 -0.15643437 -0.30521268
		 0.79905719 -0.15643437 -0.580549 0.580549 -0.15643437 -0.79905713 0.30521265 -0.15643437 -0.93934792
		 0 -0.15643437 -0.98768884 -0.30521265 -0.15643437 -0.93934786;
	setAttr ".vt[166:331]" -0.58054888 -0.15643437 -0.79905695 -0.79905689 -0.15643437 -0.58054882
		 -0.93934768 -0.15643437 -0.30521256 -0.9876886 -0.15643437 0 -0.93934768 -0.15643437 0.30521256
		 -0.79905683 -0.15643437 0.58054876 -0.58054876 -0.15643437 0.79905677 -0.30521256 -0.15643437 0.93934757
		 -2.9435407e-08 -0.15643437 0.98768848 0.30521247 -0.15643437 0.93934757 0.58054864 -0.15643437 0.79905671
		 0.79905665 -0.15643437 0.5805487 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 0
		 0.95105714 0 -0.30901718 0.80901754 0 -0.5877856 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542
		 -0.95105678 0 -0.30901706 -1.000000238419 0 0 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536
		 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666 -2.9802322e-08 0 1.000000119209
		 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853 0.95105654 0 0.309017
		 1 0 0 0.93934804 0.15643437 -0.30521268 0.79905719 0.15643437 -0.580549 0.580549 0.15643437 -0.79905713
		 0.30521265 0.15643437 -0.93934792 0 0.15643437 -0.98768884 -0.30521265 0.15643437 -0.93934786
		 -0.58054888 0.15643437 -0.79905695 -0.79905689 0.15643437 -0.58054882 -0.93934768 0.15643437 -0.30521256
		 -0.9876886 0.15643437 0 -0.93934768 0.15643437 0.30521256 -0.79905683 0.15643437 0.58054876
		 -0.58054876 0.15643437 0.79905677 -0.30521256 0.15643437 0.93934757 -2.9435407e-08 0.15643437 0.98768848
		 0.30521247 0.15643437 0.93934757 0.58054864 0.15643437 0.79905671 0.79905665 0.15643437 0.5805487
		 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 0 0.90450913 0.30901697 -0.2938928
		 0.7694214 0.30901697 -0.55901736 0.55901736 0.30901697 -0.76942134 0.29389277 0.30901697 -0.90450901
		 0 0.30901697 -0.95105702 -0.29389277 0.30901697 -0.90450895 -0.55901724 0.30901697 -0.76942122
		 -0.76942116 0.30901697 -0.55901718 -0.90450877 0.30901697 -0.29389271 -0.95105678 0.30901697 0
		 -0.90450877 0.30901697 0.29389271 -0.7694211 0.30901697 0.55901712 -0.55901712 0.30901697 0.76942104
		 -0.29389271 0.30901697 0.90450865 -2.8343694e-08 0.30901697 0.95105666 0.29389262 0.30901697 0.90450859
		 0.559017 0.30901697 0.76942098 0.76942092 0.30901697 0.55901706 0.90450853 0.30901697 0.29389265
		 0.95105654 0.30901697 0 0.8473981 0.45399052 -0.27533633 0.72083992 0.45399052 -0.5237208
		 0.5237208 0.45399052 -0.72083986 0.2753363 0.45399052 -0.84739798 0 0.45399052 -0.89100695
		 -0.2753363 0.45399052 -0.84739798 -0.52372068 0.45399052 -0.72083968 -0.72083962 0.45399052 -0.52372062
		 -0.8473978 0.45399052 -0.27533621 -0.89100677 0.45399052 0 -0.8473978 0.45399052 0.27533621
		 -0.72083962 0.45399052 0.52372062 -0.52372062 0.45399052 0.72083956 -0.27533621 0.45399052 0.84739769
		 -2.6554064e-08 0.45399052 0.89100665 0.27533615 0.45399052 0.84739763 0.5237205 0.45399052 0.7208395
		 0.72083944 0.45399052 0.52372056 0.84739757 0.45399052 0.27533618 0.89100653 0.45399052 0
		 0.7694214 0.58778524 -0.25000015 0.65450895 0.58778524 -0.47552854 0.47552854 0.58778524 -0.65450889
		 0.25000012 0.58778524 -0.76942128 0 0.58778524 -0.80901736 -0.25000012 0.58778524 -0.76942122
		 -0.47552845 0.58778524 -0.65450877 -0.65450871 0.58778524 -0.47552839 -0.7694211 0.58778524 -0.25000006
		 -0.80901718 0.58778524 0 -0.7694211 0.58778524 0.25000006 -0.65450865 0.58778524 0.47552836
		 -0.47552836 0.58778524 0.65450859 -0.25000006 0.58778524 0.76942098 -2.4110586e-08 0.58778524 0.80901712
		 0.24999999 0.58778524 0.76942098 0.47552827 0.58778524 0.65450853 0.65450853 0.58778524 0.4755283
		 0.76942092 0.58778524 0.25 0.809017 0.58778524 0 0.67249894 0.70710677 -0.21850814
		 0.57206178 0.70710677 -0.41562718 0.41562718 0.70710677 -0.57206172 0.21850812 0.70710677 -0.67249888
		 0 0.70710677 -0.70710713 -0.21850812 0.70710677 -0.67249882 -0.41562709 0.70710677 -0.5720616
		 -0.57206154 0.70710677 -0.41562706 -0.6724987 0.70710677 -0.21850805 -0.70710695 0.70710677 0
		 -0.6724987 0.70710677 0.21850805 -0.57206154 0.70710677 0.415627 -0.415627 0.70710677 0.57206148
		 -0.21850805 0.70710677 0.67249858 -2.1073424e-08 0.70710677 0.70710683 0.21850799 0.70710677 0.67249858
		 0.41562691 0.70710677 0.57206142 0.57206142 0.70710677 0.41562697 0.67249852 0.70710677 0.21850802
		 0.70710677 0.70710677 0 0.55901736 0.809017 -0.18163574 0.47552857 0.809017 -0.34549171
		 0.34549171 0.809017 -0.47552854 0.18163572 0.809017 -0.5590173 0 0.809017 -0.58778554
		 -0.18163572 0.809017 -0.55901724 -0.34549165 0.809017 -0.47552842 -0.47552839 0.809017 -0.34549159
		 -0.55901712 0.809017 -0.18163566 -0.58778536 0.809017 0 -0.55901712 0.809017 0.18163566
		 -0.47552836 0.809017 0.34549156 -0.34549156 0.809017 0.47552833 -0.18163566 0.809017 0.55901706
		 -1.7517365e-08 0.809017 0.5877853 0.18163562 0.809017 0.55901706 0.3454915 0.809017 0.4755283
		 0.47552827 0.809017 0.34549153 0.559017 0.809017 0.18163563 0.58778524 0.809017 0
		 0.43177092 0.89100653 -0.14029087 0.36728629 0.89100653 -0.2668491 0.2668491 0.89100653 -0.36728626
		 0.14029086 0.89100653 -0.43177086 0 0.89100653 -0.45399073 -0.14029086 0.89100653 -0.43177083
		 -0.26684904 0.89100653 -0.36728618 -0.36728615 0.89100653 -0.26684901 -0.43177077 0.89100653 -0.14029081
		 -0.45399064 0.89100653 0 -0.43177077 0.89100653 0.14029081 -0.36728612 0.89100653 0.26684898;
	setAttr ".vt[332:381]" -0.26684898 0.89100653 0.36728612 -0.14029081 0.89100653 0.43177071
		 -1.3529972e-08 0.89100653 0.45399058 0.14029078 0.89100653 0.43177068 0.26684892 0.89100653 0.36728609
		 0.36728606 0.89100653 0.26684895 0.43177065 0.89100653 0.1402908 0.45399052 0.89100653 0
		 0.29389283 0.95105654 -0.095491566 0.25000018 0.95105654 -0.18163574 0.18163574 0.95105654 -0.25000015
		 0.095491551 0.95105654 -0.2938928 0 0.95105654 -0.30901715 -0.095491551 0.95105654 -0.29389277
		 -0.18163571 0.95105654 -0.25000009 -0.25000009 0.95105654 -0.18163569 -0.29389271 0.95105654 -0.095491529
		 -0.30901706 0.95105654 0 -0.29389271 0.95105654 0.095491529 -0.25000006 0.95105654 0.18163568
		 -0.18163568 0.95105654 0.25000006 -0.095491529 0.95105654 0.29389268 -9.2094243e-09 0.95105654 0.30901703
		 0.095491499 0.95105654 0.29389265 0.18163563 0.95105654 0.25000003 0.25 0.95105654 0.18163565
		 0.29389265 0.95105654 0.095491506 0.309017 0.95105654 0 0.14877813 0.98768836 -0.048340943
		 0.12655823 0.98768836 -0.091949932 0.091949932 0.98768836 -0.12655823 0.048340935 0.98768836 -0.14877811
		 0 0.98768836 -0.15643455 -0.048340935 0.98768836 -0.1487781 -0.091949917 0.98768836 -0.1265582
		 -0.12655818 0.98768836 -0.091949902 -0.14877807 0.98768836 -0.048340924 -0.15643452 0.98768836 0
		 -0.14877807 0.98768836 0.048340924 -0.12655818 0.98768836 0.091949895 -0.091949895 0.98768836 0.12655817
		 -0.048340924 0.98768836 0.14877805 -4.6621107e-09 0.98768836 0.15643449 0.048340909 0.98768836 0.14877804
		 0.09194988 0.98768836 0.12655815 0.12655815 0.98768836 0.091949888 0.14877804 0.98768836 0.048340913
		 0.15643448 0.98768836 0 0 -1 0 0 1 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 186 187 188 189
		f 4 1 382 -22 -382
		mu 0 4 187 191 192 188
		f 4 2 383 -23 -383
		mu 0 4 191 197 198 192
		f 4 3 384 -24 -384
		mu 0 4 197 205 206 198
		f 4 4 385 -25 -385
		mu 0 4 205 212 213 206
		f 4 5 386 -26 -386
		mu 0 4 212 221 222 213
		f 4 6 387 -27 -387
		mu 0 4 221 231 232 222
		f 4 7 388 -28 -388
		mu 0 4 231 242 243 232
		f 4 8 389 -29 -389
		mu 0 4 242 256 257 243
		f 4 9 390 -30 -390
		mu 0 4 256 268 269 257
		f 4 10 391 -31 -391
		mu 0 4 268 280 281 269
		f 4 11 392 -32 -392
		mu 0 4 280 266 267 281
		f 4 12 393 -33 -393
		mu 0 4 266 254 255 267
		f 4 13 394 -34 -394
		mu 0 4 254 240 241 255
		f 4 14 395 -35 -395
		mu 0 4 240 229 230 241
		f 4 15 396 -36 -396
		mu 0 4 229 219 220 230
		f 4 16 397 -37 -397
		mu 0 4 219 210 211 220
		f 4 17 398 -38 -398
		mu 0 4 210 203 204 211
		f 4 18 399 -39 -399
		mu 0 4 203 195 196 204
		f 4 19 380 -40 -400
		mu 0 4 195 186 189 196
		f 4 20 401 -41 -401
		mu 0 4 189 188 193 194
		f 4 21 402 -42 -402
		mu 0 4 188 192 199 193
		f 4 22 403 -43 -403
		mu 0 4 192 198 207 199
		f 4 23 404 -44 -404
		mu 0 4 198 206 214 207
		f 4 24 405 -45 -405
		mu 0 4 206 213 223 214
		f 4 25 406 -46 -406
		mu 0 4 213 222 233 223
		f 4 26 407 -47 -407
		mu 0 4 222 232 244 233
		f 4 27 408 -48 -408
		mu 0 4 232 243 258 244
		f 4 28 409 -49 -409
		mu 0 4 243 257 270 258
		f 4 29 410 -50 -410
		mu 0 4 257 269 282 270
		f 4 30 411 -51 -411
		mu 0 4 269 281 289 282
		f 4 31 412 -52 -412
		mu 0 4 281 267 279 289
		f 4 32 413 -53 -413
		mu 0 4 267 255 265 279
		f 4 33 414 -54 -414
		mu 0 4 255 241 253 265
		f 4 34 415 -55 -415
		mu 0 4 241 230 239 253
		f 4 35 416 -56 -416
		mu 0 4 230 220 228 239
		f 4 36 417 -57 -417
		mu 0 4 220 211 218 228
		f 4 37 418 -58 -418
		mu 0 4 211 204 209 218
		f 4 38 419 -59 -419
		mu 0 4 204 196 202 209
		f 4 39 400 -60 -420
		mu 0 4 196 189 194 202
		f 4 40 421 -61 -421
		mu 0 4 194 193 200 201
		f 4 41 422 -62 -422
		mu 0 4 193 199 208 200
		f 4 42 423 -63 -423
		mu 0 4 199 207 215 208
		f 4 43 424 -64 -424
		mu 0 4 207 214 224 215
		f 4 44 425 -65 -425
		mu 0 4 214 223 234 224
		f 4 45 426 -66 -426
		mu 0 4 223 233 245 234
		f 4 46 427 -67 -427
		mu 0 4 233 244 259 245
		f 4 47 428 -68 -428
		mu 0 4 244 258 271 259
		f 4 48 429 -69 -429
		mu 0 4 138 139 127 116
		f 4 49 430 -70 -430
		mu 0 4 139 150 140 127
		f 4 50 431 -71 -431
		mu 0 4 282 289 293 294
		f 4 51 432 -72 -432
		mu 0 4 289 279 288 293
		f 4 52 433 -73 -433
		mu 0 4 279 265 278 288
		f 4 53 434 -74 -434
		mu 0 4 265 253 264 278
		f 4 54 435 -75 -435
		mu 0 4 253 239 252 264
		f 4 55 436 -76 -436
		mu 0 4 239 228 238 252
		f 4 56 437 -77 -437
		mu 0 4 228 218 227 238
		f 4 57 438 -78 -438
		mu 0 4 218 209 226 227
		f 4 58 439 -79 -439
		mu 0 4 57 45 34 47
		f 4 59 420 -80 -440
		mu 0 4 45 46 22 34
		f 4 60 441 -81 -441
		mu 0 4 22 23 13 12
		f 4 61 442 -82 -442
		mu 0 4 200 208 216 217
		f 4 62 443 -83 -443
		mu 0 4 208 215 225 216
		f 4 63 444 -84 -444
		mu 0 4 215 224 235 225
		f 4 64 445 -85 -445
		mu 0 4 224 234 246 235
		f 4 65 446 -86 -446
		mu 0 4 234 245 260 246
		f 4 66 447 -87 -447
		mu 0 4 245 259 272 260
		f 4 67 448 -88 -448
		mu 0 4 115 116 106 105
		f 4 68 449 -89 -449
		mu 0 4 116 127 117 106
		f 4 69 450 -90 -450
		mu 0 4 127 140 128 117
		f 4 70 451 -91 -451
		mu 0 4 140 151 141 128
		f 4 71 452 -92 -452
		mu 0 4 293 288 292 297
		f 4 72 453 -93 -453
		mu 0 4 288 278 287 292
		f 4 73 454 -94 -454
		mu 0 4 278 264 277 287
		f 4 74 455 -95 -455
		mu 0 4 264 252 263 277
		f 4 75 456 -96 -456
		mu 0 4 252 238 251 263
		f 4 76 457 -97 -457
		mu 0 4 238 227 250 251
		f 4 77 458 -98 -458
		mu 0 4 58 47 35 48
		f 4 78 459 -99 -459
		mu 0 4 47 34 25 35
		f 4 79 440 -100 -460
		mu 0 4 34 22 12 25
		f 4 80 461 -101 -461
		mu 0 4 12 13 5 4
		f 4 81 462 -102 -462
		mu 0 4 13 24 14 5
		f 4 82 463 -103 -463
		mu 0 4 216 225 236 237
		f 4 83 464 -104 -464
		mu 0 4 225 235 247 236
		f 4 84 465 -105 -465
		mu 0 4 235 246 261 247
		f 4 85 466 -106 -466
		mu 0 4 246 260 273 261
		f 4 86 467 -107 -467
		mu 0 4 118 105 97 108
		f 4 87 468 -108 -468
		mu 0 4 105 106 98 97
		f 4 88 469 -109 -469
		mu 0 4 106 117 107 98
		f 4 89 470 -110 -470
		mu 0 4 117 128 119 107
		f 4 90 471 -111 -471
		mu 0 4 128 141 129 119
		f 4 91 472 -112 -472
		mu 0 4 141 152 142 129
		f 4 92 473 -113 -473
		mu 0 4 292 287 291 296
		f 4 93 474 -114 -474
		mu 0 4 287 277 286 291
		f 4 94 475 -115 -475
		mu 0 4 277 263 276 286
		f 4 95 476 -116 -476
		mu 0 4 263 251 275 276
		f 4 96 477 -117 -477
		mu 0 4 59 48 36 49
		f 4 97 478 -118 -478
		mu 0 4 48 35 26 36
		f 4 98 479 -119 -479
		mu 0 4 35 25 15 26
		f 4 99 460 -120 -480
		mu 0 4 25 12 4 15
		f 4 100 481 -121 -481
		mu 0 4 4 5 1 0
		f 4 101 482 -122 -482
		mu 0 4 5 14 6 1
		f 4 102 483 -123 -483
		mu 0 4 237 236 248 249
		f 4 103 484 -124 -484
		mu 0 4 236 247 262 248
		f 4 104 485 -125 -485
		mu 0 4 247 261 274 262
		f 4 105 486 -126 -486
		mu 0 4 261 273 283 274
		f 4 106 487 -127 -487
		mu 0 4 108 97 93 103
		f 4 107 488 -128 -488
		mu 0 4 97 98 94 93
		f 4 108 489 -129 -489
		mu 0 4 98 107 99 94
		f 4 109 490 -130 -490
		mu 0 4 107 119 109 99
		f 4 110 491 -131 -491
		mu 0 4 119 129 120 109
		f 4 111 492 -132 -492
		mu 0 4 129 142 130 120
		f 4 112 493 -133 -493
		mu 0 4 296 291 295 298
		f 4 113 494 -134 -494
		mu 0 4 291 286 290 295
		f 4 114 495 -135 -495
		mu 0 4 286 276 285 290
		f 4 115 496 -136 -496
		mu 0 4 276 275 284 285
		f 4 116 497 -137 -497
		mu 0 4 49 36 32 43
		f 4 117 498 -138 -498
		mu 0 4 36 26 20 32
		f 4 118 499 -139 -499
		mu 0 4 26 15 10 20
		f 4 119 480 -140 -500
		mu 0 4 15 4 0 10
		f 4 120 501 -141 -501
		mu 0 4 0 1 2 3
		f 4 121 502 -142 -502
		mu 0 4 1 6 7 2
		f 4 122 503 -143 -503
		mu 0 4 412 413 414 415
		f 4 123 504 -144 -504
		mu 0 4 413 416 417 414
		f 4 124 505 -145 -505
		mu 0 4 416 420 421 417
		f 4 125 506 -146 -506
		mu 0 4 420 425 426 421
		f 4 126 507 -147 -507
		mu 0 4 103 93 96 104
		f 4 127 508 -148 -508
		mu 0 4 93 94 95 96
		f 4 128 509 -149 -509
		mu 0 4 94 99 100 95
		f 4 129 510 -150 -510
		mu 0 4 99 109 110 100
		f 4 130 511 -151 -511
		mu 0 4 109 120 121 110
		f 4 131 512 -152 -512
		mu 0 4 120 130 131 121
		f 4 132 513 -153 -513
		mu 0 4 447 448 449 450
		f 4 133 514 -154 -514
		mu 0 4 448 451 452 449
		f 4 134 515 -155 -515
		mu 0 4 451 455 456 452
		f 4 135 516 -156 -516
		mu 0 4 455 460 461 456
		f 4 136 517 -157 -517
		mu 0 4 43 32 33 44
		f 4 137 518 -158 -518
		mu 0 4 32 20 21 33
		f 4 138 519 -159 -519
		mu 0 4 20 10 11 21
		f 4 139 500 -160 -520
		mu 0 4 10 0 3 11
		f 4 140 521 -161 -521
		mu 0 4 3 2 8 9
		f 4 141 522 -162 -522
		mu 0 4 2 7 16 8
		f 4 142 523 -163 -523
		mu 0 4 415 414 418 419
		f 4 143 524 -164 -524
		mu 0 4 414 417 422 418
		f 4 144 525 -165 -525
		mu 0 4 417 421 427 422
		f 4 145 526 -166 -526
		mu 0 4 421 426 431 427
		f 4 146 527 -167 -527
		mu 0 4 104 96 102 114
		f 4 147 528 -168 -528
		mu 0 4 96 95 101 102
		f 4 148 529 -169 -529
		mu 0 4 95 100 111 101
		f 4 149 530 -170 -530
		mu 0 4 100 110 122 111
		f 4 150 531 -171 -531
		mu 0 4 110 121 132 122
		f 4 151 532 -172 -532
		mu 0 4 121 131 143 132
		f 4 152 533 -173 -533
		mu 0 4 450 449 453 454
		f 4 153 534 -174 -534
		mu 0 4 449 452 457 453
		f 4 154 535 -175 -535
		mu 0 4 452 456 462 457
		f 4 155 536 -176 -536
		mu 0 4 456 461 466 462
		f 4 156 537 -177 -537
		mu 0 4 44 33 42 56
		f 4 157 538 -178 -538
		mu 0 4 33 21 31 42
		f 4 158 539 -179 -539
		mu 0 4 21 11 19 31
		f 4 159 520 -180 -540
		mu 0 4 11 3 9 19
		f 4 160 541 -181 -541
		mu 0 4 9 8 17 18
		f 4 161 542 -182 -542
		mu 0 4 8 16 27 17
		f 4 162 543 -183 -543
		mu 0 4 419 418 423 424
		f 4 163 544 -184 -544
		mu 0 4 418 422 428 423
		f 4 164 545 -185 -545
		mu 0 4 422 427 432 428
		f 4 165 546 -186 -546
		mu 0 4 427 431 436 432
		f 4 166 547 -187 -547
		mu 0 4 114 102 113 126
		f 4 167 548 -188 -548
		mu 0 4 102 101 112 113
		f 4 168 549 -189 -549
		mu 0 4 101 111 123 112
		f 4 169 550 -190 -550
		mu 0 4 111 122 133 123
		f 4 170 551 -191 -551
		mu 0 4 122 132 144 133
		f 4 171 552 -192 -552
		mu 0 4 132 143 153 144
		f 4 172 553 -193 -553
		mu 0 4 454 453 458 459
		f 4 173 554 -194 -554
		mu 0 4 453 457 463 458
		f 4 174 555 -195 -555
		mu 0 4 457 462 467 463
		f 4 175 556 -196 -556
		mu 0 4 462 466 471 467
		f 4 176 557 -197 -557
		mu 0 4 56 42 55 66
		f 4 177 558 -198 -558
		mu 0 4 42 31 41 55
		f 4 178 559 -199 -559
		mu 0 4 31 19 30 41
		f 4 179 540 -200 -560
		mu 0 4 19 9 18 30
		f 4 180 561 -201 -561
		mu 0 4 18 17 28 29
		f 4 181 562 -202 -562
		mu 0 4 17 27 37 28
		f 4 182 563 -203 -563
		mu 0 4 424 423 429 430
		f 4 183 564 -204 -564
		mu 0 4 423 428 433 429
		f 4 184 565 -205 -565
		mu 0 4 428 432 437 433
		f 4 185 566 -206 -566
		mu 0 4 432 436 441 437
		f 4 186 567 -207 -567
		mu 0 4 126 113 125 137
		f 4 187 568 -208 -568
		mu 0 4 113 112 124 125
		f 4 188 569 -209 -569
		mu 0 4 112 123 134 124
		f 4 189 570 -210 -570
		mu 0 4 123 133 145 134
		f 4 190 571 -211 -571
		mu 0 4 133 144 154 145
		f 4 191 572 -212 -572
		mu 0 4 144 153 160 154
		f 4 192 573 -213 -573
		mu 0 4 459 458 464 465
		f 4 193 574 -214 -574
		mu 0 4 458 463 468 464
		f 4 194 575 -215 -575
		mu 0 4 463 467 472 468
		f 4 195 576 -216 -576
		mu 0 4 467 471 476 472
		f 4 196 577 -217 -577
		mu 0 4 66 55 65 73
		f 4 197 578 -218 -578
		mu 0 4 55 41 54 65
		f 4 198 579 -219 -579
		mu 0 4 41 30 40 54
		f 4 199 560 -220 -580
		mu 0 4 30 18 29 40
		f 4 200 581 -221 -581
		mu 0 4 29 28 38 39
		f 4 201 582 -222 -582
		mu 0 4 28 37 50 38
		f 4 202 583 -223 -583
		mu 0 4 430 429 434 435
		f 4 203 584 -224 -584
		mu 0 4 429 433 438 434
		f 4 204 585 -225 -585
		mu 0 4 433 437 442 438
		f 4 205 586 -226 -586
		mu 0 4 437 441 444 442
		f 4 206 587 -227 -587
		mu 0 4 137 125 136 149
		f 4 207 588 -228 -588
		mu 0 4 125 124 135 136
		f 4 208 589 -229 -589
		mu 0 4 124 134 146 135
		f 4 209 590 -230 -590
		mu 0 4 134 145 155 146
		f 4 210 591 -231 -591
		mu 0 4 145 154 161 155
		f 4 211 592 -232 -592
		mu 0 4 154 160 167 161
		f 4 212 593 -233 -593
		mu 0 4 465 464 469 470
		f 4 213 594 -234 -594
		mu 0 4 464 468 473 469
		f 4 214 595 -235 -595
		mu 0 4 468 472 477 473
		f 4 215 596 -236 -596
		mu 0 4 472 476 479 477
		f 4 216 597 -237 -597
		mu 0 4 73 65 72 80
		f 4 217 598 -238 -598
		mu 0 4 65 54 64 72
		f 4 218 599 -239 -599
		mu 0 4 54 40 53 64
		f 4 219 580 -240 -600
		mu 0 4 40 29 39 53
		f 4 220 601 -241 -601
		mu 0 4 39 38 51 52
		f 4 221 602 -242 -602
		mu 0 4 38 50 60 51
		f 4 222 603 -243 -603
		mu 0 4 435 434 439 440
		f 4 223 604 -244 -604
		mu 0 4 434 438 443 439
		f 4 224 605 -245 -605
		mu 0 4 438 442 445 443
		f 4 225 606 -246 -606
		mu 0 4 442 444 446 445
		f 4 226 607 -247 -607
		mu 0 4 149 136 148 159
		f 4 227 608 -248 -608
		mu 0 4 136 135 147 148
		f 4 228 609 -249 -609
		mu 0 4 135 146 156 147
		f 4 229 610 -250 -610
		mu 0 4 146 155 162 156
		f 4 230 611 -251 -611
		mu 0 4 155 161 168 162
		f 4 231 612 -252 -612
		mu 0 4 161 167 174 168
		f 4 232 613 -253 -613
		mu 0 4 470 469 474 475
		f 4 233 614 -254 -614
		mu 0 4 469 473 478 474
		f 4 234 615 -255 -615
		mu 0 4 473 477 480 478
		f 4 235 616 -256 -616
		mu 0 4 477 479 481 480
		f 4 236 617 -257 -617
		mu 0 4 80 72 79 84
		f 4 237 618 -258 -618
		mu 0 4 72 64 71 79
		f 4 238 619 -259 -619
		mu 0 4 64 53 63 71
		f 4 239 600 -260 -620
		mu 0 4 53 39 52 63
		f 4 240 621 -261 -621
		mu 0 4 52 51 61 62
		f 4 241 622 -262 -622
		mu 0 4 51 60 67 61
		f 4 242 623 -263 -623
		mu 0 4 316 317 308 307
		f 4 243 624 -264 -624
		mu 0 4 317 326 318 308
		f 4 244 625 -265 -625
		mu 0 4 326 337 327 318
		f 4 245 626 -266 -626
		mu 0 4 337 347 338 327
		f 4 246 627 -267 -627
		mu 0 4 159 148 158 166
		f 4 247 628 -268 -628
		mu 0 4 148 147 157 158
		f 4 248 629 -269 -629
		mu 0 4 147 156 163 157
		f 4 249 630 -270 -630
		mu 0 4 156 162 169 163
		f 4 250 631 -271 -631
		mu 0 4 162 168 175 169
		f 4 251 632 -272 -632
		mu 0 4 168 174 178 175
		f 4 252 633 -273 -633
		mu 0 4 411 409 406 410
		f 4 253 634 -274 -634
		mu 0 4 409 405 402 406
		f 4 254 635 -275 -635
		mu 0 4 405 400 390 402
		f 4 255 636 -276 -636
		mu 0 4 400 401 391 390
		f 4 256 637 -277 -637
		mu 0 4 84 79 83 89
		f 4 257 638 -278 -638
		mu 0 4 79 71 78 83
		f 4 258 639 -279 -639
		mu 0 4 71 63 70 78
		f 4 259 620 -280 -640
		mu 0 4 63 52 62 70
		f 4 260 641 -281 -641
		mu 0 4 62 61 68 69
		f 4 261 642 -282 -642
		mu 0 4 61 67 74 68
		f 4 262 643 -283 -643
		mu 0 4 307 308 303 300
		f 4 263 644 -284 -644
		mu 0 4 308 318 309 303
		f 4 264 645 -285 -645
		mu 0 4 318 327 319 309
		f 4 265 646 -286 -646
		mu 0 4 327 338 328 319
		f 4 266 647 -287 -647
		mu 0 4 166 158 165 173
		f 4 267 648 -288 -648
		mu 0 4 158 157 164 165
		f 4 268 649 -289 -649
		mu 0 4 157 163 170 164
		f 4 269 650 -290 -650
		mu 0 4 163 169 176 170
		f 4 270 651 -291 -651
		mu 0 4 169 175 179 176
		f 4 271 652 -292 -652
		mu 0 4 175 178 183 179
		f 4 272 653 -293 -653
		mu 0 4 410 406 403 407
		f 4 273 654 -294 -654
		mu 0 4 406 402 392 403
		f 4 274 655 -295 -655
		mu 0 4 402 390 382 392
		f 4 275 656 -296 -656
		mu 0 4 390 391 373 382
		f 4 276 657 -297 -657
		mu 0 4 89 83 88 92
		f 4 277 658 -298 -658
		mu 0 4 83 78 82 88
		f 4 278 659 -299 -659
		mu 0 4 78 70 77 82
		f 4 279 640 -300 -660
		mu 0 4 70 62 69 77
		f 4 280 661 -301 -661
		mu 0 4 69 68 75 76
		f 4 281 662 -302 -662
		mu 0 4 299 300 301 302
		f 4 282 663 -303 -663
		mu 0 4 300 303 304 301
		f 4 283 664 -304 -664
		mu 0 4 303 309 310 304
		f 4 284 665 -305 -665
		mu 0 4 309 319 320 310
		f 4 285 666 -306 -666
		mu 0 4 319 328 329 320
		f 4 286 667 -307 -667
		mu 0 4 328 339 340 329
		f 4 287 668 -308 -668
		mu 0 4 165 164 171 172
		f 4 288 669 -309 -669
		mu 0 4 164 170 177 171
		f 4 289 670 -310 -670
		mu 0 4 170 176 180 177
		f 4 290 671 -311 -671
		mu 0 4 176 179 184 180
		f 4 291 672 -312 -672
		mu 0 4 408 407 404 397
		f 4 292 673 -313 -673
		mu 0 4 407 403 393 404
		f 4 293 674 -314 -674
		mu 0 4 403 392 383 393
		f 4 294 675 -315 -675
		mu 0 4 392 382 375 383
		f 4 295 676 -316 -676
		mu 0 4 382 373 366 375
		f 4 296 677 -317 -677
		mu 0 4 373 374 359 366
		f 4 297 678 -318 -678
		mu 0 4 88 82 87 91
		f 4 298 679 -319 -679
		mu 0 4 82 77 81 87
		f 4 299 660 -320 -680
		mu 0 4 77 69 76 81
		f 4 300 681 -321 -681
		mu 0 4 314 302 306 315
		f 4 301 682 -322 -682
		mu 0 4 302 301 305 306
		f 4 302 683 -323 -683
		mu 0 4 301 304 311 305
		f 4 303 684 -324 -684
		mu 0 4 304 310 321 311
		f 4 304 685 -325 -685
		mu 0 4 310 320 330 321
		f 4 305 686 -326 -686
		mu 0 4 320 329 341 330
		f 4 306 687 -327 -687
		mu 0 4 329 340 348 341
		f 4 307 688 -328 -688
		mu 0 4 340 354 355 348
		f 4 308 689 -329 -689
		mu 0 4 171 177 181 182
		f 4 309 690 -330 -690
		mu 0 4 177 180 185 181
		f 4 310 691 -331 -691
		mu 0 4 396 397 386 378
		f 4 311 692 -332 -692
		mu 0 4 397 404 394 386
		f 4 312 693 -333 -693
		mu 0 4 404 393 384 394
		f 4 313 694 -334 -694
		mu 0 4 393 383 376 384
		f 4 314 695 -335 -695
		mu 0 4 383 375 367 376
		f 4 315 696 -336 -696
		mu 0 4 375 366 361 367
		f 4 316 697 -337 -697
		mu 0 4 366 359 352 361
		f 4 317 698 -338 -698
		mu 0 4 359 360 345 352
		f 4 318 699 -339 -699
		mu 0 4 87 81 86 90
		f 4 319 680 -340 -700
		mu 0 4 81 76 85 86
		f 4 320 701 -341 -701
		mu 0 4 315 306 313 325
		f 4 321 702 -342 -702
		mu 0 4 306 305 312 313
		f 4 322 703 -343 -703
		mu 0 4 305 311 322 312
		f 4 323 704 -344 -704
		mu 0 4 311 321 331 322
		f 4 324 705 -345 -705
		mu 0 4 321 330 342 331
		f 4 325 706 -346 -706
		mu 0 4 330 341 349 342
		f 4 326 707 -347 -707
		mu 0 4 341 348 356 349
		f 4 327 708 -348 -708
		mu 0 4 348 355 363 356
		f 4 328 709 -349 -709
		mu 0 4 355 369 370 363
		f 4 329 710 -350 -710
		mu 0 4 369 378 379 370
		f 4 330 711 -351 -711
		mu 0 4 378 386 387 379
		f 4 331 712 -352 -712
		mu 0 4 386 394 395 387
		f 4 332 713 -353 -713
		mu 0 4 394 384 385 395
		f 4 333 714 -354 -714
		mu 0 4 384 376 377 385
		f 4 334 715 -355 -715
		mu 0 4 376 367 368 377
		f 4 335 716 -356 -716
		mu 0 4 367 361 362 368
		f 4 336 717 -357 -717
		mu 0 4 361 352 353 362
		f 4 337 718 -358 -718
		mu 0 4 352 345 346 353
		f 4 338 719 -359 -719
		mu 0 4 345 335 336 346
		f 4 339 700 -360 -720
		mu 0 4 335 315 325 336
		f 4 340 721 -361 -721
		mu 0 4 325 313 324 334
		f 4 341 722 -362 -722
		mu 0 4 313 312 323 324
		f 4 342 723 -363 -723
		mu 0 4 312 322 332 323
		f 4 343 724 -364 -724
		mu 0 4 322 331 343 332
		f 4 344 725 -365 -725
		mu 0 4 331 342 350 343
		f 4 345 726 -366 -726
		mu 0 4 342 349 357 350
		f 4 346 727 -367 -727
		mu 0 4 349 356 364 357
		f 4 347 728 -368 -728
		mu 0 4 356 363 371 364
		f 4 348 729 -369 -729
		mu 0 4 363 370 380 371
		f 4 349 730 -370 -730
		mu 0 4 370 379 388 380
		f 4 350 731 -371 -731
		mu 0 4 379 387 398 388
		f 4 351 732 -372 -732
		mu 0 4 387 395 399 398
		f 4 352 733 -373 -733
		mu 0 4 395 385 389 399
		f 4 353 734 -374 -734
		mu 0 4 385 377 381 389
		f 4 354 735 -375 -735
		mu 0 4 377 368 372 381
		f 4 355 736 -376 -736
		mu 0 4 368 362 365 372
		f 4 356 737 -377 -737
		mu 0 4 362 353 358 365
		f 4 357 738 -378 -738
		mu 0 4 353 346 351 358
		f 4 358 739 -379 -739
		mu 0 4 346 336 344 351
		f 4 359 720 -380 -740
		mu 0 4 336 325 334 344
		f 3 -1 -741 741
		mu 0 3 187 186 190
		f 3 -2 -742 742
		mu 0 3 191 187 190
		f 3 -3 -743 743
		mu 0 3 197 191 190
		f 3 -4 -744 744
		mu 0 3 205 197 190
		f 3 -5 -745 745
		mu 0 3 212 205 190
		f 3 -6 -746 746
		mu 0 3 221 212 190
		f 3 -7 -747 747
		mu 0 3 231 221 190
		f 3 -8 -748 748
		mu 0 3 242 231 190
		f 3 -9 -749 749
		mu 0 3 256 242 190
		f 3 -10 -750 750
		mu 0 3 268 256 190
		f 3 -11 -751 751
		mu 0 3 280 268 190
		f 3 -12 -752 752
		mu 0 3 266 280 190
		f 3 -13 -753 753
		mu 0 3 254 266 190
		f 3 -14 -754 754
		mu 0 3 240 254 190
		f 3 -15 -755 755
		mu 0 3 229 240 190
		f 3 -16 -756 756
		mu 0 3 219 229 190
		f 3 -17 -757 757
		mu 0 3 210 219 190
		f 3 -18 -758 758
		mu 0 3 203 210 190
		f 3 -19 -759 759
		mu 0 3 195 203 190
		f 3 -20 -760 740
		mu 0 3 186 195 190
		f 3 360 761 -761
		mu 0 3 334 324 333
		f 3 361 762 -762
		mu 0 3 324 323 333
		f 3 362 763 -763
		mu 0 3 323 332 333
		f 3 363 764 -764
		mu 0 3 332 343 333
		f 3 364 765 -765
		mu 0 3 343 350 333
		f 3 365 766 -766
		mu 0 3 350 357 333
		f 3 366 767 -767
		mu 0 3 357 364 333
		f 3 367 768 -768
		mu 0 3 364 371 333
		f 3 368 769 -769
		mu 0 3 371 380 333
		f 3 369 770 -770
		mu 0 3 380 388 333
		f 3 370 771 -771
		mu 0 3 388 398 333
		f 3 371 772 -772
		mu 0 3 398 399 333
		f 3 372 773 -773
		mu 0 3 399 389 333
		f 3 373 774 -774
		mu 0 3 389 381 333
		f 3 374 775 -775
		mu 0 3 381 372 333
		f 3 375 776 -776
		mu 0 3 372 365 333
		f 3 376 777 -777
		mu 0 3 365 358 333
		f 3 377 778 -778
		mu 0 3 358 351 333
		f 3 378 779 -779
		mu 0 3 351 344 333
		f 3 379 760 -780
		mu 0 3 344 334 333;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "Mesh";
	rename -uid "769C310C-4C83-0E66-D9C0-AF81660163D6";
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0.85882354 0.58039218 0.33725491 ;
	setAttr ".t" -type "double3" 0 1.6066868082506294 -2 ;
	setAttr ".r" -type "double3" 89.26551859380811 0 0 ;
	setAttr ".s" -type "double3" 1.2368639362347509 1.2368639362347509 1.3001399466315724 ;
	setAttr ".rp" -type "double3" 0 0 1.9999999999999973 ;
	setAttr ".sp" -type "double3" 0 0 1.4066973638113005 ;
	setAttr ".spt" -type "double3" 0 0 0.59330263618869061 ;
createNode mesh -n "polySurfaceShape1" -p "pCube6";
	rename -uid "2825ED66-418C-59DD-028B-018136D6AD16";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7" -p "Mesh";
	rename -uid "BF332EAD-4899-758A-DBC2-33A316466AB6";
	setAttr ".t" -type "double3" 0.57681526593336407 10.181384988310477 -14.110036027459429 ;
	setAttr ".r" -type "double3" 0 0 -24.483256806041037 ;
	setAttr ".s" -type "double3" 0.34001400316010594 0.1782131379596173 0.26551271500638091 ;
	setAttr ".rp" -type "double3" 0 0 1.9999999999999973 ;
	setAttr ".sp" -type "double3" 0 0 1.4066973638113005 ;
	setAttr ".spt" -type "double3" 0 0 0.59330263618869061 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "6EF88CB4-4BCB-CC65-7A35-5CAF0EEB063A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[6:9]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.06682795889320825 0.073431845754384995 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.049525168 0.0042206421
		 0.084130749 0.0042206421 0.049525168 0.038826238 0.084130749 0.038826238 0.049525168
		 0.073431842 0.084130749 0.073431842 0.049525168 0.10803743 0.084130749 0.10803743
		 0.049525168 0.14264305 0.084130749 0.14264305 0.11873636 0.0042206421 0.11873636
		 0.038826238 0.014919568 0.0042206421 0.014919568 0.038826238 0.049525168 0.073431842
		 0.084130749 0.073431842 0.084130749 0.10803743 0.049525168 0.10803743;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  0.24761733 -0.24761733 -2.0473042 
		-0.24761733 -0.24761733 -2.0473042 -0.24761733 0.24761733 -2.0473042 0.24761733 0.24761733 
		-2.0473042;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.50000006 0.5 -0.5 0.50000006
		 -0.5 0.5 0.50000006 0.5 0.5 0.50000006 -0.5 0.5 -0.50000012 0.5 0.5 -0.50000012 -0.5 -0.5 -0.50000012
		 0.5 -0.5 -0.50000012 -0.5 0.5 -0.50000012 0.5 0.5 -0.50000012 0.5 -0.5 -0.50000012
		 -0.5 -0.5 -0.50000012;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 4 8 0 5 9 0 8 9 0 7 10 0 9 10 0 6 11 0 11 10 0 8 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 2 13 -15 -13
		mu 0 4 4 5 15 14
		f 4 9 15 -17 -14
		mu 0 4 5 7 16 15
		f 4 -4 17 18 -16
		mu 0 4 7 6 17 16
		f 4 -9 12 19 -18
		mu 0 4 6 4 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube7";
	rename -uid "CF004B73-4BAB-0F66-99DC-DBA49492AA12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8" -p "pCube7";
	rename -uid "D3EEEC52-41A1-554E-69AD-2FBA45108B6A";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 -2.8893204894159723 ;
	setAttr ".s" -type "double3" 0.75716022911877734 0.75716022911877667 0.75716022911877734 ;
	setAttr ".rp" -type "double3" 0 0 1.0650952982841604 ;
	setAttr ".sp" -type "double3" 0 0 1.4066973638113005 ;
	setAttr ".spt" -type "double3" 0 0 -0.34160206552715633 ;
createNode mesh -n "pCubeShape8" -p "|Mesh|pCube7|pCube8";
	rename -uid "D0138A0E-4236-5798-78CB-5B89BCA80A2F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[6:9]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.50210496913313185 0.07224209214783045 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.4853721 0.0053103878
		 0.51883793 0.0053103878 0.4853721 0.038776245 0.51883793 0.038776245 0.4853721 0.072242089
		 0.51883793 0.072242089 0.4853721 0.10570794 0.51883793 0.10570794 0.4853721 0.13917379
		 0.51883793 0.13917379 0.55230373 0.0053103878 0.55230373 0.038776245 0.45190617 0.0053103878
		 0.45190617 0.038776245 0.4853721 0.072242089 0.51883793 0.072242089 0.51883793 0.10570794
		 0.4853721 0.10570794;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  0.24761733 -0.24761733 -2.0473042 
		-0.24761733 -0.24761733 -2.0473042 -0.24761733 0.24761733 -2.0473042 0.24761733 0.24761733 
		-2.0473042;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.50000006 0.5 -0.5 0.50000006
		 -0.5 0.5 0.50000006 0.5 0.5 0.50000006 -0.5 0.5 -0.50000012 0.5 0.5 -0.50000012 -0.5 -0.5 -0.50000012
		 0.5 -0.5 -0.50000012 -0.5 0.5 -0.50000012 0.5 0.5 -0.50000012 0.5 -0.5 -0.50000012
		 -0.5 -0.5 -0.50000012;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 4 8 0 5 9 0 8 9 0 7 10 0 9 10 0 6 11 0 11 10 0 8 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 2 13 -15 -13
		mu 0 4 4 5 15 14
		f 4 9 15 -17 -14
		mu 0 4 5 7 16 15
		f 4 -4 17 18 -16
		mu 0 4 7 6 17 16
		f 4 -9 12 19 -18
		mu 0 4 6 4 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "|Mesh|pCube7|pCube8";
	rename -uid "57EF8E41-42C9-3C34-C559-619FA0DC70FC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "|Mesh|pCube7|pCube8";
	rename -uid "4E9698EE-4169-9B0F-E834-DEAC5F4EB4E0";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 -2.8190943288168455 ;
	setAttr ".s" -type "double3" 0.83837049505645223 0.83837049505645234 0.83837049505645223 ;
	setAttr ".rp" -type "double3" 0 0 1.1793335652931087 ;
	setAttr ".sp" -type "double3" 0 0 1.4066973638113005 ;
	setAttr ".spt" -type "double3" 0 0 -0.2273637985182142 ;
createNode mesh -n "pCubeShape9" -p "|Mesh|pCube7|pCube8|pCube9";
	rename -uid "884E3873-4886-60CF-A35C-AD932A625CB3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[6:9]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.39168348388066371 0.071466399822384119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.37503964 0.0048910649
		 0.4083274 0.0048910649 0.37503964 0.038178727 0.4083274 0.038178727 0.37503964 0.071466401
		 0.4083274 0.071466401 0.37503964 0.10475406 0.4083274 0.10475406 0.37503964 0.13804173
		 0.4083274 0.13804173 0.44161499 0.0048910649 0.44161499 0.038178727 0.34175199 0.0048910649
		 0.34175199 0.038178727 0.37503964 0.071466401 0.4083274 0.071466401 0.4083274 0.10475406
		 0.37503964 0.10475406;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  0.24761733 -0.24761733 -1.5266771 
		-0.24761733 -0.24761733 -1.5266771 -0.24761733 0.24761733 -1.5266771 0.24761733 0.24761733 
		-1.5266771;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.50000006 0.5 -0.5 0.50000006
		 -0.5 0.5 0.50000006 0.5 0.5 0.50000006 -0.5 0.5 -0.50000012 0.5 0.5 -0.50000012 -0.5 -0.5 -0.50000012
		 0.5 -0.5 -0.50000012 -0.5 0.5 -0.50000012 0.5 0.5 -0.50000012 0.5 -0.5 -0.50000012
		 -0.5 -0.5 -0.50000012;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 4 8 0 5 9 0 8 9 0 7 10 0 9 10 0 6 11 0 11 10 0 8 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 2 13 -15 -13
		mu 0 4 4 5 15 14
		f 4 9 15 -17 -14
		mu 0 4 5 7 16 15
		f 4 -4 17 18 -16
		mu 0 4 7 6 17 16
		f 4 -9 12 19 -18
		mu 0 4 6 4 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "|Mesh|pCube7|pCube8|pCube9";
	rename -uid "2D9DCE74-4FF5-E92E-139E-BA9899442FCA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10" -p "Mesh";
	rename -uid "34FD930A-45A8-5D7B-6901-C0B4C7E0E34B";
	setAttr ".t" -type "double3" -0.5663839309939005 10.163396615239495 -14.176564392514694 ;
	setAttr ".r" -type "double3" 0 0 27.493339197196107 ;
	setAttr ".s" -type "double3" 0.37291500511830789 0.22708289975105406 0.266 ;
	setAttr ".rp" -type "double3" 0 0 1.9999999999999973 ;
	setAttr ".sp" -type "double3" 0 0 1.4066973638113005 ;
	setAttr ".spt" -type "double3" 0 0 0.59330263618869061 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "25CD3261-4A32-7DFC-6B7A-5EA3ECCB134B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[6:9]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.28335526668363148 0.07163922511972487 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.26659632 0.0046035652
		 0.30011421 0.0046035652 0.26659632 0.038121387 0.30011421 0.038121387 0.26659632
		 0.071639217 0.30011421 0.071639217 0.26659632 0.10515705 0.30011421 0.10515705 0.26659632
		 0.13867489 0.30011421 0.13867489 0.33363199 0.0046035652 0.33363199 0.038121387 0.23307854
		 0.0046035652 0.23307854 0.038121387 0.26659632 0.071639217 0.30011421 0.071639217
		 0.30011421 0.10515705 0.26659632 0.10515705;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  0.24761733 -0.24761733 -2.0473042 
		-0.24761733 -0.24761733 -2.0473042 -0.24761733 0.24761733 -2.0473042 0.24761733 0.24761733 
		-2.0473042;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.50000006 0.5 -0.5 0.50000006
		 -0.5 0.5 0.50000006 0.5 0.5 0.50000006 -0.5 0.5 -0.50000012 0.5 0.5 -0.50000012 -0.5 -0.5 -0.50000012
		 0.5 -0.5 -0.50000012 -0.5 0.5 -0.50000012 0.5 0.5 -0.50000012 0.5 -0.5 -0.50000012
		 -0.5 -0.5 -0.50000012;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 4 8 0 5 9 0 8 9 0 7 10 0 9 10 0 6 11 0 11 10 0 8 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 2 13 -15 -13
		mu 0 4 4 5 15 14
		f 4 9 15 -17 -14
		mu 0 4 5 7 16 15
		f 4 -4 17 18 -16
		mu 0 4 7 6 17 16
		f 4 -9 12 19 -18
		mu 0 4 6 4 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube10";
	rename -uid "47F91511-4DBB-C445-18A7-B1BA7A2733AC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8" -p "pCube10";
	rename -uid "6EA928EB-4C7D-BE2F-7FCF-90962253C6D1";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 -2.8893204894159723 ;
	setAttr ".s" -type "double3" 0.75716022911877734 0.75716022911877667 0.75716022911877734 ;
	setAttr ".rp" -type "double3" 0 0 1.0650952982841604 ;
	setAttr ".sp" -type "double3" 0 0 1.4066973638113005 ;
	setAttr ".spt" -type "double3" 0 0 -0.34160206552715633 ;
createNode mesh -n "pCubeShape8" -p "|Mesh|pCube10|pCube8";
	rename -uid "0495CFD3-4A15-CE25-2590-FF8563EE0875";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[6:9]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.33501158486520277 0.11577296117804053 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.35004798 0.1777018
		 0.31913602 0.17749204 0.35025781 0.14678985 0.31934583 0.14658004 0.35046759 0.11587785
		 0.31955561 0.11566807 0.35067737 0.084965885 0.31976539 0.084756076 0.35088718 0.054053884
		 0.31997523 0.053844102 0.28822404 0.17728224 0.28843382 0.14637025 0.38095999 0.17791161
		 0.3811698 0.14699964 0.35046759 0.11587785 0.31955561 0.11566807 0.31976539 0.084756076
		 0.35067737 0.084965885;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  0.24761733 -0.24761733 -2.0473042 
		-0.24761733 -0.24761733 -2.0473042 -0.24761733 0.24761733 -2.0473042 0.24761733 0.24761733 
		-2.0473042;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.50000006 0.5 -0.5 0.50000006
		 -0.5 0.5 0.50000006 0.5 0.5 0.50000006 -0.5 0.5 -0.50000012 0.5 0.5 -0.50000012 -0.5 -0.5 -0.50000012
		 0.5 -0.5 -0.50000012 -0.5 0.5 -0.50000012 0.5 0.5 -0.50000012 0.5 -0.5 -0.50000012
		 -0.5 -0.5 -0.50000012;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 4 8 0 5 9 0 8 9 0 7 10 0 9 10 0 6 11 0 11 10 0 8 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 2 13 -15 -13
		mu 0 4 4 5 15 14
		f 4 9 15 -17 -14
		mu 0 4 5 7 16 15
		f 4 -4 17 18 -16
		mu 0 4 7 6 17 16
		f 4 -9 12 19 -18
		mu 0 4 6 4 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "|Mesh|pCube10|pCube8";
	rename -uid "8DE4C9B1-4504-C547-2453-27ABA2543457";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "|Mesh|pCube10|pCube8";
	rename -uid "331B6ED1-4AEF-9878-480D-1E9E384EB55D";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 -2.8190943288168455 ;
	setAttr ".s" -type "double3" 0.83837049505645223 0.83837049505645234 0.83837049505645223 ;
	setAttr ".rp" -type "double3" 0 0 1.1793335652931087 ;
	setAttr ".sp" -type "double3" 0 0 1.4066973638113005 ;
	setAttr ".spt" -type "double3" 0 0 -0.2273637985182142 ;
createNode mesh -n "pCubeShape9" -p "|Mesh|pCube10|pCube8|pCube9";
	rename -uid "1FC12EEB-4B5D-F0F4-0335-E0B877E21B63";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[6:9]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.61375053257814427 0.070622775484533773 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.59773415 0.006557405
		 0.62976694 0.006557405 0.59773415 0.038590092 0.62976694 0.038590092 0.59773415 0.070622772
		 0.62976694 0.070622772 0.59773415 0.10265546 0.62976694 0.10265546 0.59773415 0.13468815
		 0.62976694 0.13468815 0.66179961 0.006557405 0.66179961 0.038590092 0.56570148 0.006557405
		 0.56570148 0.038590092 0.59773415 0.070622772 0.62976694 0.070622772 0.62976694 0.10265546
		 0.59773415 0.10265546;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  0.24761733 -0.24761733 -1.5266771 
		-0.24761733 -0.24761733 -1.5266771 -0.24761733 0.24761733 -1.5266771 0.24761733 0.24761733 
		-1.5266771;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.50000006 0.5 -0.5 0.50000006
		 -0.5 0.5 0.50000006 0.5 0.5 0.50000006 -0.5 0.5 -0.50000012 0.5 0.5 -0.50000012 -0.5 -0.5 -0.50000012
		 0.5 -0.5 -0.50000012 -0.5 0.5 -0.50000012 0.5 0.5 -0.50000012 0.5 -0.5 -0.50000012
		 -0.5 -0.5 -0.50000012;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 4 8 0 5 9 0 8 9 0 7 10 0 9 10 0 6 11 0 11 10 0 8 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 2 13 -15 -13
		mu 0 4 4 5 15 14
		f 4 9 15 -17 -14
		mu 0 4 5 7 16 15
		f 4 -4 17 18 -16
		mu 0 4 7 6 17 16
		f 4 -9 12 19 -18
		mu 0 4 6 4 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "|Mesh|pCube10|pCube8|pCube9";
	rename -uid "C50A35B5-4008-0B09-47CA-8991D0843726";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11" -p "Mesh";
	rename -uid "B44A2B3B-4856-EB73-D164-D4BC05502A65";
	setAttr ".t" -type "double3" -0.004484723234550736 9.762838447701748 -14.176564392514694 ;
	setAttr ".s" -type "double3" 0.37291500511830789 0.23740395806363812 0.22237975174473948 ;
	setAttr ".rp" -type "double3" 0 0 1.9999999999999973 ;
	setAttr ".sp" -type "double3" 0 0 1.4066973638113005 ;
	setAttr ".spt" -type "double3" 0 0 0.59330263618869061 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	rename -uid "DE0F1565-465C-7657-1FBC-4DABA532C380";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[6:9]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.17422653823381373 0.071711747208610177 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.15740423 0.0044224379
		 0.19104882 0.0044224379 0.15740423 0.038067084 0.19104882 0.038067084 0.15740423
		 0.071711726 0.19104882 0.071711726 0.15740423 0.10535638 0.19104882 0.10535638 0.15740423
		 0.13900106 0.19104882 0.13900106 0.22469349 0.0044224379 0.22469349 0.038067084 0.12375958
		 0.0044224379 0.12375958 0.038067084 0.15740423 0.071711726 0.19104882 0.071711726
		 0.19104882 0.10535638 0.15740423 0.10535638;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  0.24761733 -0.24761733 -2.0473042 
		-0.24761733 -0.24761733 -2.0473042 -0.24761733 0.24761733 -2.0473042 0.24761733 0.24761733 
		-2.0473042;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.50000006 0.5 -0.5 0.50000006
		 -0.5 0.5 0.50000006 0.5 0.5 0.50000006 -0.5 0.5 -0.50000012 0.5 0.5 -0.50000012 -0.5 -0.5 -0.50000012
		 0.5 -0.5 -0.50000012 -0.5 0.5 -0.50000012 0.5 0.5 -0.50000012 0.5 -0.5 -0.50000012
		 -0.5 -0.5 -0.50000012;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 4 8 0 5 9 0 8 9 0 7 10 0 9 10 0 6 11 0 11 10 0 8 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 2 13 -15 -13
		mu 0 4 4 5 15 14
		f 4 9 15 -17 -14
		mu 0 4 5 7 16 15
		f 4 -4 17 18 -16
		mu 0 4 7 6 17 16
		f 4 -9 12 19 -18
		mu 0 4 6 4 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube11";
	rename -uid "56C81DA7-45E1-A430-9CD0-D387389DAA61";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8" -p "pCube11";
	rename -uid "37354573-4700-B5B9-1AB8-999796D9D052";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 -2.8893204894159723 ;
	setAttr ".s" -type "double3" 0.75716022911877734 0.75716022911877667 0.75716022911877734 ;
	setAttr ".rp" -type "double3" 0 0 1.0650952982841604 ;
	setAttr ".sp" -type "double3" 0 0 1.4066973638113005 ;
	setAttr ".spt" -type "double3" 0 0 -0.34160206552715633 ;
createNode mesh -n "pCubeShape8" -p "|Mesh|pCube11|pCube8";
	rename -uid "CC7453A6-4649-A4EF-54C4-BF80B5C560CF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[6:9]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.1201634419264348 0.11848299354830411 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.13497615 0.17814234
		 0.1051585 0.17809431 0.13502422 0.14832465 0.10520656 0.14827661 0.13507228 0.11850701
		 0.10525461 0.11845893 0.13512032 0.088689335 0.10530267 0.088641286 0.13516839 0.058871664
		 0.10535073 0.058823608 0.07534083 0.17804618 0.075388886 0.14822854 0.16479382 0.17819037
		 0.16484186 0.14837271 0.13507228 0.11850701 0.10525461 0.11845893 0.10530267 0.088641286
		 0.13512032 0.088689335;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  0.24761733 -0.24761733 -2.0473042 
		-0.24761733 -0.24761733 -2.0473042 -0.24761733 0.24761733 -2.0473042 0.24761733 0.24761733 
		-2.0473042;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.50000006 0.5 -0.5 0.50000006
		 -0.5 0.5 0.50000006 0.5 0.5 0.50000006 -0.5 0.5 -0.50000012 0.5 0.5 -0.50000012 -0.5 -0.5 -0.50000012
		 0.5 -0.5 -0.50000012 -0.5 0.5 -0.50000012 0.5 0.5 -0.50000012 0.5 -0.5 -0.50000012
		 -0.5 -0.5 -0.50000012;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 4 8 0 5 9 0 8 9 0 7 10 0 9 10 0 6 11 0 11 10 0 8 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 2 13 -15 -13
		mu 0 4 4 5 15 14
		f 4 9 15 -17 -14
		mu 0 4 5 7 16 15
		f 4 -4 17 18 -16
		mu 0 4 7 6 17 16
		f 4 -9 12 19 -18
		mu 0 4 6 4 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "|Mesh|pCube11|pCube8";
	rename -uid "DA275648-4B97-990F-BCDC-D5BE63E8360A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "|Mesh|pCube11|pCube8";
	rename -uid "8C5911F9-4C82-AB28-A6F6-A0A46D570EF1";
	setAttr ".t" -type "double3" 0 7.1054273576010019e-15 -2.8190943288168455 ;
	setAttr ".s" -type "double3" 0.83837049505645223 0.83837049505645234 0.83837049505645223 ;
	setAttr ".rp" -type "double3" 0 0 1.1793335652931087 ;
	setAttr ".sp" -type "double3" 0 0 1.4066973638113005 ;
	setAttr ".spt" -type "double3" 0 0 -0.2273637985182142 ;
createNode mesh -n "pCubeShape9" -p "|Mesh|pCube11|pCube8|pCube9";
	rename -uid "8ADEA8EB-4326-0A04-DC90-E39B0D6E2C4F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[6:9]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.22743719534232321 0.11607024398435772 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.24385552 0.17886165
		 0.21237506 0.17920072 0.24351649 0.1473812 0.21203601 0.14772022 0.24317746 0.11590073
		 0.21169697 0.11623976 0.24283841 0.084420264 0.21135794 0.08475928 0.24249937 0.052939713
		 0.21101889 0.053278759 0.18089458 0.17953974 0.18055554 0.14805926 0.275336 0.17852263
		 0.274997 0.14704216 0.24317746 0.11590073 0.21169697 0.11623976 0.21135794 0.08475928
		 0.24283841 0.084420264;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  0.24761733 -0.24761733 -1.5266771 
		-0.24761733 -0.24761733 -1.5266771 -0.24761733 0.24761733 -1.5266771 0.24761733 0.24761733 
		-1.5266771;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.50000006 0.5 -0.5 0.50000006
		 -0.5 0.5 0.50000006 0.5 0.5 0.50000006 -0.5 0.5 -0.50000012 0.5 0.5 -0.50000012 -0.5 -0.5 -0.50000012
		 0.5 -0.5 -0.50000012 -0.5 0.5 -0.50000012 0.5 0.5 -0.50000012 0.5 -0.5 -0.50000012
		 -0.5 -0.5 -0.50000012;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 4 8 0 5 9 0 8 9 0 7 10 0 9 10 0 6 11 0 11 10 0 8 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 2 13 -15 -13
		mu 0 4 4 5 15 14
		f 4 9 15 -17 -14
		mu 0 4 5 7 16 15
		f 4 -4 17 18 -16
		mu 0 4 7 6 17 16
		f 4 -9 12 19 -18
		mu 0 4 6 4 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "|Mesh|pCube11|pCube8|pCube9";
	rename -uid "5E21D5C1-451A-7924-250B-C3932A9248BF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pTorus1" -p "Mesh";
	rename -uid "2F3DB64B-414B-E577-F188-CD8F1E319310";
	setAttr ".t" -type "double3" 0 9.3431112697352425 -0.80963248504493524 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.59402522032937188 0.18709990760293152 0.59402522032937188 ;
createNode mesh -n "pTorusShape1" -p "pTorus1";
	rename -uid "1ACDAB58-46B8-03B8-1F18-06B56D1A998E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.70208802757970812 0.23974148557879107 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 536 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.67261851 0.52368015 0.67261851
		 0.51643652 0.68064827 0.51682943 0.68064827 0.52442771 0.66458869 0.52442771 0.66458869
		 0.51682943 0.67261851 0.5084067 0.68064827 0.5084067 0.68789196 0.51797009 0.68789196
		 0.52659726 0.67261851 0.5294289 0.68064827 0.53045779 0.65734482 0.52659726 0.65734482
		 0.51797009 0.66458869 0.5084067 0.66458869 0.53045779 0.67261851 0.50037658 0.68064827
		 0.49998367 0.68789196 0.5084067 0.69364083 0.5197466 0.69364083 0.52997643 0.68789196
		 0.53344363 0.65159607 0.52997643 0.65159607 0.5197466 0.65734482 0.5084067 0.65734482
		 0.53344363 0.66458869 0.49998367 0.67261851 0.49313298 0.68064827 0.49238536 0.68789196
		 0.49884316 0.69364083 0.5084067 0.69364083 0.5380947 0.65159607 0.5084067 0.65159607
		 0.5380947 0.65734482 0.49884316 0.66458869 0.49238536 0.67261851 0.48738438 0.68064827
		 0.48635525 0.68789196 0.49021605 0.69364083 0.49706683 0.65159607 0.49706683 0.65734482
		 0.49021605 0.66458869 0.48635525 0.68789196 0.48336944 0.69364083 0.48683685 0.65159607
		 0.48683697 0.65734482 0.48336944 0.69364083 0.47871873 0.65159607 0.47871873 0.61908913
		 0.50070918 0.61908913 0.49357197 0.62700081 0.49283531 0.62700081 0.50032204 0.61117744
		 0.50032204 0.61117744 0.49283531 0.61908913 0.48790783 0.62700081 0.48689407 0.63413811
		 0.49069792 0.63413811 0.4991982 0.61908913 0.50862086 0.62700081 0.50862086 0.60404009
		 0.4991982 0.60404009 0.49069792 0.61117744 0.48689407 0.61117744 0.50862086 0.63413811
		 0.48395193 0.63980222 0.48736864 0.63980222 0.49744782 0.63413811 0.50862086 0.61908913
		 0.51653266 0.62700081 0.51691985 0.5983758 0.49744782 0.5983758 0.48736864 0.60404009
		 0.48395193 0.60404009 0.50862086 0.61117744 0.51691985 0.63980222 0.47936961 0.63980222
		 0.50862086 0.63413811 0.51804376 0.61908913 0.52366996 0.62700081 0.52440655 0.5983758
		 0.47936961 0.5983758 0.50862086 0.60404009 0.51804376 0.61117744 0.52440655 0.63980222
		 0.51979399 0.63413811 0.52654403 0.61908913 0.52933419 0.62700081 0.53034794 0.5983758
		 0.51979399 0.60404009 0.52654403 0.61117744 0.53034794 0.63980222 0.52987337 0.63413811
		 0.53328997 0.5983758 0.52987337 0.60404009 0.53328997 0.63980222 0.53787237 0.5983758
		 0.53787237 0.662305 0.29123625 0.662305 0.30424625 0.65767324 0.30351704 0.65767324
		 0.28984916 0.66598022 0.2933968 0.66598022 0.3053821 0.662305 0.31866804 0.65767324
		 0.31866804 0.65253913 0.30326575 0.65253913 0.28937119 0.662305 0.28091145 0.65767324
		 0.27900225 0.66598022 0.31866804 0.66598022 0.28388512 0.662305 0.3330898 0.65767324
		 0.33381906 0.65253913 0.31866804 0.64740503 0.30351704 0.64740503 0.28984916 0.65253913
		 0.27834433 0.66598022 0.33195397 0.662305 0.34609979 0.65767324 0.34748694 0.65253913
		 0.3340703 0.64740503 0.31866804 0.64277333 0.30424625 0.64277333 0.29123625 0.64740503
		 0.27900225 0.66598022 0.3439393 0.662305 0.35642457 0.65767324 0.35833395 0.65253913
		 0.34796497 0.64740503 0.33381906 0.64277333 0.31866804 0.63909781 0.3053821 0.63909781
		 0.2933968 0.64277333 0.28091145 0.66598022 0.35345107 0.65253913 0.35899168 0.64740503
		 0.34748694 0.64277333 0.3330898 0.63909781 0.31866804 0.63909781 0.28388512 0.64740503
		 0.35833395 0.64277333 0.34609979 0.63909781 0.33195397 0.64277333 0.35642457 0.63909781
		 0.3439393 0.63909781 0.35345107 0.62720686 0.3338927 0.62720686 0.34651759 0.62271237
		 0.34786358 0.62271237 0.33460033 0.63077354 0.33279052 0.63077354 0.34442106 0.62720686
		 0.35653675 0.62271237 0.3583895 0.61773014 0.34832743 0.61773014 0.33484426 0.62720686
		 0.31989795 0.62271237 0.31989795 0.63077354 0.35365123 0.63077354 0.31989795 0.61773014
		 0.3590278 0.61274803 0.34786358 0.61274803 0.33460033 0.61773014 0.31989795 0.62720686
		 0.3059032 0.62271237 0.30519548 0.63077354 0.30700538 0.61274803 0.3583895 0.60825372
		 0.34651759 0.60825372 0.3338927 0.61274803 0.31989795 0.61773014 0.30495164 0.62720686
		 0.29327828 0.62271237 0.29193223 0.63077354 0.29537481 0.60825372 0.35653675 0.60468704
		 0.34442112 0.60468704 0.33279052 0.60825372 0.31989795 0.61274803 0.30519548 0.61773014
		 0.2914685 0.62720686 0.28325909 0.62271237 0.28140646 0.63077354 0.28614473 0.60468704
		 0.35365123 0.60468704 0.31989795 0.60825372 0.3059032 0.61274803 0.29193223 0.61773014
		 0.2807681 0.60468704 0.30700538 0.60825372 0.29327828 0.61274803 0.28140646 0.60468704
		 0.29537481 0.60825372 0.28325909 0.60468704 0.28614473 0.79148096 0.2500405 0.79382539
		 0.24543925 0.79692405 0.24644606 0.79411691 0.25195566 0.79463315 0.24033867 0.7978915
		 0.24033867 0.80035913 0.24756213 0.79703885 0.25407851 0.78782928 0.25369209 0.7897445
		 0.2563279 0.79382539 0.23523816 0.79692405 0.23423117 0.8015033 0.24033867 0.80379403
		 0.24867822 0.79996079 0.25620142 0.79186749 0.25924993 0.7832281 0.25603649 0.78423488
		 0.25913525 0.79148096 0.23063689 0.79411685 0.2287218 0.80035889 0.2331152 0.80511492
		 0.24033867 0.80689275 0.24968506 0.80259675 0.25811657 0.79399031 0.26217183 0.7853511
		 0.26257011 0.78242904 0.25357741 0.78630954 0.25160024 0.77812767 0.2568444 0.77812767
		 0.26010254 0.78782934 0.22698534 0.78974438 0.22434953 0.79703885 0.22659892 0.80379409
		 0.23199928 0.80837303 0.24033867 0.79590547 0.26480782 0.78646713 0.26600519 0.77812767
		 0.26371428 0.77812767 0.25425863 0.773027 0.25603649 0.77202022 0.25913525 0.7832281
		 0.22464091 0.78423488 0.22154215 0.79186743 0.22142747 0.79996067 0.22447595 0.80689275
		 0.23099238 0.78747392 0.26910385 0.77812767 0.26732597 0.77090412 0.26257011 0.77382606
		 0.25357741 0.76842576 0.25369209 0.76651073 0.2563279 0.78630954 0.2290771 0.7824291
		 0.22710007;
	setAttr ".uvst[0].uvsp[250:499]" 0.77812767 0.22383308 0.77812767 0.22057486
		 0.78535104 0.21810722 0.79399031 0.21850553 0.80259675 0.22256079 0.79742539 0.26689973
		 0.7882731 0.27156302 0.77812767 0.27058414 0.76978803 0.26600519 0.76438773 0.25924993
		 0.7699455 0.25160024 0.76477426 0.2500405 0.76213813 0.25195566 0.77812767 0.22641873
		 0.773027 0.22464091 0.77202016 0.22154219 0.77812767 0.21696314 0.78646713 0.2146723
		 0.79590535 0.21586964 0.77812767 0.27316985 0.76878119 0.26910385 0.76226461 0.26217183
		 0.75921637 0.25407851 0.76242977 0.24543925 0.75933105 0.24644606 0.77382606 0.22710007
		 0.76842594 0.22698534 0.76651073 0.22434953 0.77090406 0.21810722 0.77812767 0.2133514
		 0.7874738 0.2115736 0.76798213 0.27156302 0.76034969 0.26480782 0.75629443 0.25620142
		 0.75589609 0.24756213 0.76162183 0.24033867 0.75836378 0.24033867 0.76994556 0.2290771
		 0.76477426 0.23063692 0.76213831 0.2287218 0.76438761 0.22142747 0.76978803 0.2146723
		 0.77812767 0.21009326 0.78827292 0.2091144 0.79742515 0.21377775 0.75882983 0.26689973
		 0.75365847 0.25811657 0.75246114 0.24867816 0.75475204 0.24033867 0.76242977 0.23523811
		 0.75933105 0.23423117 0.75921637 0.22659892 0.76226479 0.21850553 0.76878119 0.21157357
		 0.77812767 0.20750755 0.74936247 0.24968506 0.7511403 0.24033867 0.75589609 0.2331152
		 0.75629443 0.22447595 0.76034975 0.21586961 0.76798213 0.2091144 0.74788207 0.24033867
		 0.75246114 0.23199928 0.75365847 0.22256079 0.75882983 0.21377775 0.74936247 0.23099238
		 0.72644383 0.22204606 0.7307198 0.23043844 0.72763562 0.23144054 0.72382015 0.22395232
		 0.73219341 0.23974153 0.72895026 0.23974153 0.72421646 0.23255152 0.72091168 0.22606537
		 0.71978354 0.21538572 0.71787733 0.21800949 0.7307198 0.24904455 0.72763562 0.24804242
		 0.72535527 0.23974153 0.7207976 0.23366249 0.71800321 0.22817841 0.71576416 0.22091788
		 0.71139121 0.21110961 0.7103889 0.21419394 0.72644383 0.25743699 0.72382015 0.25553069
		 0.72421646 0.24693146 0.72176033 0.23974153 0.71771318 0.2346646 0.7153796 0.23008469
		 0.71365118 0.22382629 0.70927799 0.21761298 0.71218646 0.20866182 0.72129637 0.21330355
		 0.702088 0.20963609 0.702088 0.21287924 0.71978354 0.26409733 0.71787733 0.26147348
		 0.72091168 0.25341764 0.7207976 0.24582052 0.71851724 0.23974153 0.7117449 0.22645
		 0.7081672 0.22103205 0.702088 0.21647424 0.702088 0.20706235 0.69278491 0.21110958
		 0.6937871 0.21419394 0.71139121 0.26837343 0.7103889 0.26528907 0.71576416 0.2585651
		 0.71800321 0.2513046 0.71771318 0.24481833 0.70716494 0.22411641 0.702088 0.22006923
		 0.69489801 0.21761298 0.69198966 0.20866182 0.68439257 0.21538568 0.68629879 0.21800938
		 0.72129637 0.2661795 0.71218646 0.27082121 0.702088 0.26984686 0.702088 0.26660383
		 0.70927799 0.26186997 0.71365118 0.25565669 0.7153796 0.24939835 0.7102322 0.2285322
		 0.70636976 0.22656417 0.702088 0.22331232 0.69600892 0.22103205 0.68841171 0.22091788
		 0.68287969 0.21330357 0.67773235 0.22204599 0.68035591 0.22395232 0.702088 0.27242064
		 0.69278491 0.26837343 0.6937871 0.26528907 0.702088 0.26300877 0.7081672 0.25845096
		 0.7117449 0.25303295 0.702088 0.22588605 0.69701111 0.22411641 0.69052494 0.22382632
		 0.68326437 0.22606537 0.67345625 0.23043844 0.67654061 0.2314406 0.69198966 0.27082121
		 0.68439257 0.26409733 0.68629879 0.26147354 0.69489801 0.26186997 0.702088 0.25941375
		 0.70716494 0.25536659 0.69780648 0.22656417 0.69243121 0.22645 0.68617272 0.22817841
		 0.67995948 0.2325516 0.67198265 0.23974153 0.67522591 0.23974153 0.68287969 0.2661795
		 0.67773229 0.25743705 0.68035591 0.25553069 0.68841171 0.2585651 0.69600892 0.25845096
		 0.702088 0.25617066 0.70636976 0.25291881 0.71023214 0.25095081 0.69394398 0.2285322
		 0.68879652 0.2300846 0.68337852 0.2336624 0.67882079 0.23974153 0.67345625 0.24904467
		 0.67654061 0.24804242 0.68326437 0.25341764 0.69052494 0.25565669 0.69701111 0.25536659
		 0.702088 0.25359699 0.68646288 0.2346646 0.68241566 0.23974153 0.67995948 0.24693146
		 0.68617272 0.2513046 0.69243121 0.25303295 0.69780648 0.25291881 0.68565899 0.23974153
		 0.68337852 0.24582052 0.68879652 0.24939835 0.69394398 0.25095081 0.68646288 0.24481833
		 0.72974908 0.49211347 0.72974908 0.48224682 0.74068642 0.48122859 0.74068642 0.49157813
		 0.71881175 0.49157813 0.71881175 0.48122853 0.75055307 0.47827363 0.75055307 0.4900246
		 0.72974908 0.50305074 0.74068642 0.50305074 0.70894516 0.4900246 0.70894516 0.47827375
		 0.71881175 0.50305074 0.75055307 0.50305074 0.72974908 0.51398778 0.74068642 0.51452327
		 0.70894516 0.50305074 0.71881175 0.51452327 0.75055307 0.51607668 0.72974908 0.52385467
		 0.74068642 0.52487284 0.70894516 0.51607668 0.71881175 0.52487284 0.75055307 0.52782786
		 0.70894516 0.52782786 0.95918167 0.49972558 0.95918167 0.51221198 0.94534034 0.51350051
		 0.94534034 0.50040311 0.97302312 0.50040311 0.97302312 0.51350051 0.93285376 0.51724011
		 0.93285376 0.50236899 0.95918167 0.48588431 0.94534034 0.48588431 0.98550957 0.50236899
		 0.98550957 0.51724011 0.97302312 0.48588431 0.93285376 0.48588431 0.95918167 0.47204304
		 0.94534034 0.47136539 0.98550957 0.48588431 0.97302312 0.47136539 0.93285376 0.46939939
		 0.95918167 0.4595564 0.94534034 0.45826763 0.98550957 0.46939939 0.97302312 0.45826763
		 0.93285376 0.45452803 0.98550957 0.45452803 0.6416474 0.39236957 0.6416474 0.3743785
		 0.64805222 0.37246031 0.64805222 0.39136112 0.6551519 0.37179941 0.6551519 0.39101362
		 0.6416474 0.41231275 0.64805222 0.41231275 0.66225159 0.37246031 0.66225159 0.39136112
		 0.6551519 0.41231275 0.6416474 0.43225601 0.64805222 0.43326452 0.66865647 0.3743785;
	setAttr ".uvst[0].uvsp[500:535]" 0.66865647 0.39236957 0.66225159 0.41231275
		 0.6551519 0.43361202 0.6416474 0.45024705 0.64805222 0.45216528 0.66865647 0.41231275
		 0.66225159 0.43326452 0.6551519 0.45282626 0.66865647 0.43225601 0.66225159 0.45216528
		 0.66865647 0.45024705 0.63048989 0.4324716 0.63048989 0.44994554 0.62426919 0.45180848
		 0.62426919 0.43345121 0.61737353 0.45245054 0.61737353 0.43378869 0.63048989 0.41310161
		 0.62426919 0.41310161 0.61047786 0.45180848 0.61047786 0.43345121 0.61737353 0.41310161
		 0.63048989 0.39373165 0.62426919 0.39275223 0.60425729 0.44994554 0.60425729 0.4324716
		 0.61047786 0.41310161 0.61737353 0.39241481 0.63048989 0.37625772 0.62426919 0.37439483
		 0.60425729 0.41310161 0.61047786 0.39275223 0.61737353 0.37375286 0.60425729 0.39373165
		 0.61047786 0.37439483 0.60425729 0.37625772;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".pt";
	setAttr ".pt[0]" -type "float3" -6.9849193e-09 0 0 ;
	setAttr ".pt[1]" -type "float3" 4.6566129e-10 0 0 ;
	setAttr ".pt[2]" -type "float3" 1.5366822e-08 0 0 ;
	setAttr ".pt[3]" -type "float3" 7.9162419e-09 0 0 ;
	setAttr ".pt[4]" -type "float3" 7.9162419e-09 0 0 ;
	setAttr ".pt[5]" -type "float3" 4.6566129e-10 0 0 ;
	setAttr ".pt[6]" -type "float3" 7.9162419e-09 0 0 ;
	setAttr ".pt[7]" -type "float3" 4.6566129e-10 0 0 ;
	setAttr ".pt[8]" -type "float3" 3.0267984e-08 0 0 ;
	setAttr ".pt[9]" -type "float3" -2.1886081e-08 0 0 ;
	setAttr ".pt[10]" -type "float3" 3.0267984e-08 0 0 ;
	setAttr ".pt[11]" -type "float3" 1.5366822e-08 0 0 ;
	setAttr ".pt[12]" -type "float3" 7.9162419e-09 0 0 ;
	setAttr ".pt[13]" -type "float3" 4.6566129e-10 0 0 ;
	setAttr ".pt[14]" -type "float3" 7.9162419e-09 0 0 ;
	setAttr ".pt[15]" -type "float3" 1.5366822e-08 0 0 ;
	setAttr ".pt[16]" -type "float3" 1.5366822e-08 0 0 ;
	setAttr ".pt[17]" -type "float3" 2.2817403e-08 0 0 ;
	setAttr ".pt[18]" -type "float3" 4.6566129e-10 0 0 ;
	setAttr ".pt[19]" -type "float3" 3.7718564e-08 0 0 ;
	setAttr ".pt[20]" -type "float3" 4.6566129e-10 0 0 ;
	setAttr ".pt[21]" -type "float3" -1.44355e-08 0 0 ;
	setAttr ".pt[22]" -type "float3" 4.6566129e-10 0 0 ;
	setAttr ".pt[23]" -type "float3" 1.5366822e-08 0 0 ;
	setAttr ".pt[24]" -type "float3" 7.9162419e-09 0 0 ;
	setAttr ".pt[25]" -type "float3" 4.6566129e-10 0 0 ;
	setAttr ".pt[26]" -type "float3" 4.6566129e-10 0 0 ;
	setAttr ".pt[27]" -type "float3" 4.6566129e-10 0 0 ;
	setAttr ".pt[28]" -type "float3" 7.9162419e-09 0 0 ;
	setAttr ".pt[29]" -type "float3" 1.5366822e-08 0 0 ;
	setAttr ".pt[30]" -type "float3" 7.9162419e-09 0 0 ;
	setAttr ".pt[31]" -type "float3" 4.6566129e-10 0 0 ;
	setAttr ".pt[32]" -type "float3" 4.6566129e-10 0 0 ;
	setAttr ".pt[33]" -type "float3" 1.5366822e-08 0 0 ;
	setAttr ".pt[34]" -type "float3" 7.9162419e-09 0 0 ;
	setAttr ".pt[35]" -type "float3" 1.5366822e-08 0 0 ;
	setAttr ".pt[36]" -type "float3" 1.5366822e-08 0 0 ;
	setAttr ".pt[37]" -type "float3" 1.5366822e-08 0 0 ;
	setAttr ".pt[38]" -type "float3" 7.9162419e-09 0 0 ;
	setAttr ".pt[39]" -type "float3" 4.6566129e-10 0 0 ;
	setAttr ".pt[380]" -type "float3" 2.2817403e-08 0 0 ;
	setAttr ".pt[381]" -type "float3" 1.5366822e-08 0 0 ;
	setAttr ".pt[382]" -type "float3" 7.9162419e-09 0 0 ;
	setAttr ".pt[383]" -type "float3" 1.5366822e-08 0 0 ;
	setAttr ".pt[384]" -type "float3" 7.9162419e-09 0 0 ;
	setAttr ".pt[385]" -type "float3" 7.9162419e-09 0 0 ;
	setAttr ".pt[386]" -type "float3" 7.9162419e-09 0 0 ;
	setAttr ".pt[387]" -type "float3" 1.5366822e-08 0 0 ;
	setAttr ".pt[388]" -type "float3" 3.7718564e-08 0 0 ;
	setAttr ".pt[389]" -type "float3" -2.1886081e-08 0 0 ;
	setAttr ".pt[390]" -type "float3" 3.7718564e-08 0 0 ;
	setAttr ".pt[391]" -type "float3" 7.9162419e-09 0 0 ;
	setAttr ".pt[392]" -type "float3" 7.9162419e-09 0 0 ;
	setAttr ".pt[393]" -type "float3" 1.5366822e-08 0 0 ;
	setAttr ".pt[394]" -type "float3" 7.9162419e-09 0 0 ;
	setAttr ".pt[395]" -type "float3" 4.6566129e-10 0 0 ;
	setAttr ".pt[396]" -type "float3" 7.9162419e-09 0 0 ;
	setAttr ".pt[397]" -type "float3" 4.6566129e-10 0 0 ;
	setAttr ".pt[398]" -type "float3" -2.1886081e-08 0 0 ;
	setAttr ".pt[399]" -type "float3" 3.0267984e-08 0 0 ;
	setAttr -s 400 ".vt";
	setAttr ".vt[0:165]"  0.47552857 0 -0.15450859 0.40450877 0 -0.2938928 0.29389283 0 -0.40450874
		 0.15450859 0 -0.47552851 7.9162419e-09 0 -0.50000024 -0.15450858 0 -0.47552848 -0.29389274 0 -0.40450865
		 -0.40450862 0 -0.29389271 -0.47552836 0 -0.15450853 -0.50000012 0 0 -0.47552836 0 0.15450853
		 -0.40450856 0 0.29389268 -0.29389268 0 0.40450856 -0.15450853 0 0.47552833 -6.9849193e-09 0 0.50000006
		 0.1545085 0 0.4755283 0.29389265 0 0.40450853 0.40450853 0 0.29389265 0.47552827 0 0.1545085
		 0.50000006 0 0 0.4988026 0.1545085 -0.16207078 0.42430684 0.1545085 -0.30827695 0.30827695 0.1545085 -0.42430681
		 0.16207078 0.1545085 -0.49880254 7.9162419e-09 0.1545085 -0.524472 -0.16207077 0.1545085 -0.49880251
		 -0.30827689 0.1545085 -0.42430672 -0.42430669 0.1545085 -0.30827686 -0.49880242 0.1545085 -0.16207072
		 -0.52447188 0.1545085 0 -0.49880242 0.1545085 0.16207072 -0.42430666 0.1545085 0.30827683
		 -0.30827683 0.1545085 0.42430663 -0.16207071 0.1545085 0.49880236 -7.7142346e-09 0.1545085 0.52447182
		 0.16207069 0.1545085 0.49880233 0.3082768 0.1545085 0.4243066 0.4243066 0.1545085 0.3082768
		 0.4988023 0.1545085 0.16207069 0.52447176 0.1545085 0 0.56634647 0.29389265 -0.18401711
		 0.48176309 0.29389265 -0.35002133 0.35002133 0.29389265 -0.48176306 0.18401709 0.29389265 -0.56634641
		 0 0.29389265 -0.59549183 -0.18401709 0.29389265 -0.56634635 -0.35002127 0.29389265 -0.48176295
		 -0.48176292 0.29389265 -0.35002124 -0.56634623 0.29389265 -0.18401705 -0.59549165 0.29389265 0
		 -0.56634623 0.29389265 0.18401705 -0.48176289 0.29389265 0.35002121 -0.35002121 0.29389265 0.48176286
		 -0.18401705 0.29389265 0.56634617 -1.7747031e-08 0.29389265 0.59549159 0.18401699 0.29389265 0.56634617
		 0.35002112 0.29389265 0.4817628 0.48176277 0.29389265 0.35002118 0.56634611 0.29389265 0.184017
		 0.59549153 0.29389265 0 0.67154849 0.40450853 -0.21819931 0.57125324 0.40450853 -0.41503975
		 0.41503975 0.40450853 -0.57125324 0.2181993 0.40450853 -0.67154837 0 0.40450853 -0.70610774
		 -0.2181993 0.40450853 -0.67154831 -0.41503966 0.40450853 -0.57125306 -0.57125306 0.40450853 -0.41503963
		 -0.67154819 0.40450853 -0.21819922 -0.70610756 0.40450853 0 -0.67154819 0.40450853 0.21819922
		 -0.571253 0.40450853 0.41503957 -0.41503957 0.40450853 0.57125294 -0.21819922 0.40450853 0.67154813
		 -2.104364e-08 0.40450853 0.70610744 0.21819916 0.40450853 0.67154807 0.41503951 0.40450853 0.57125294
		 0.57125288 0.40450853 0.41503954 0.67154807 0.40450853 0.21819918 0.70610738 0.40450853 0
		 0.80411077 0.4755283 -0.26127142 0.68401748 0.4755283 -0.49696773 0.49696773 0.4755283 -0.68401742
		 0.26127139 0.4755283 -0.80411065 0 0.4755283 -0.84549195 -0.26127139 0.4755283 -0.80411059
		 -0.49696764 0.4755283 -0.6840173 -0.68401724 0.4755283 -0.49696758 -0.80411047 0.4755283 -0.2612713
		 -0.84549171 0.4755283 0 -0.80411047 0.4755283 0.2612713 -0.68401718 0.4755283 0.49696755
		 -0.49696755 0.4755283 0.68401712 -0.2612713 0.4755283 0.80411035 -2.5197611e-08 0.4755283 0.84549165
		 0.26127124 0.4755283 0.80411029 0.49696743 0.4755283 0.68401706 0.684017 0.4755283 0.49696749
		 0.80411023 0.4755283 0.26127127 0.84549153 0.4755283 0 0.95105714 0.50000006 -0.30901718
		 0.80901754 0.50000006 -0.5877856 0.5877856 0.50000006 -0.80901748 0.30901715 0.50000006 -0.95105702
		 0 0.50000006 -1.000000476837 -0.30901715 0.50000006 -0.95105696 -0.58778548 0.50000006 -0.8090173
		 -0.80901724 0.50000006 -0.58778542 -0.95105678 0.50000006 -0.30901706 -1.000000238419 0.50000006 0
		 -0.95105678 0.50000006 0.30901706 -0.80901718 0.50000006 0.58778536 -0.58778536 0.50000006 0.80901712
		 -0.30901706 0.50000006 0.95105666 -2.9802322e-08 0.50000006 1.000000119209 0.30901697 0.50000006 0.9510566
		 0.58778524 0.50000006 0.80901706 0.809017 0.50000006 0.5877853 0.95105654 0.50000006 0.309017
		 1 0.50000006 0 1.098003626 0.47552833 -0.35676301 0.93401772 0.47552833 -0.67860353
		 0.67860353 0.47552833 -0.93401766 0.35676295 0.47552833 -1.098003507 0 0.47552833 -1.15450919
		 -0.35676295 0.47552833 -1.098003387 -0.67860341 0.47552833 -0.93401742 -0.93401736 0.47552833 -0.67860329
		 -1.098003268 0.47552833 -0.35676286 -1.15450883 0.47552833 0 -1.098003268 0.47552833 0.35676286
		 -0.9340173 0.47552833 0.67860323 -0.67860323 0.47552833 0.93401724 -0.35676286 0.47552833 1.09800303
		 -3.4407037e-08 0.47552833 1.15450871 0.35676274 0.47552833 1.09800303 0.67860311 0.47552833 0.93401712
		 0.93401706 0.47552833 0.67860317 1.098002911 0.47552833 0.3567628 1.15450859 0.47552833 0
		 1.23056579 0.40450856 -0.39983505 1.046781778 0.40450856 -0.76053143 0.76053143 0.40450856 -1.046781778
		 0.39983502 0.40450856 -1.23056567 0 0.40450856 -1.29389322 -0.39983502 0.40450856 -1.23056555
		 -0.76053131 0.40450856 -1.04678154 -1.046781421 0.40450856 -0.76053125 -1.23056531 0.40450856 -0.3998349
		 -1.29389298 0.40450856 0 -1.23056531 0.40450856 0.3998349 -1.046781421 0.40450856 0.76053113
		 -0.76053113 0.40450856 1.046781301 -0.3998349 0.40450856 1.23056519 -3.8561005e-08 0.40450856 1.29389274
		 0.39983478 0.40450856 1.23056507 0.76053101 0.40450856 1.046781182 1.046781182 0.40450856 0.76053107
		 1.23056507 0.40450856 0.39983481 1.29389262 0.40450856 0 1.33576787 0.29389268 -0.4340173
		 1.13627207 0.29389268 -0.8255499 0.8255499 0.29389268 -1.13627195 0.43401724 0.29389268 -1.33576775
		 0 0.29389268 -1.40450931 -0.43401724 0.29389268 -1.33576763;
	setAttr ".vt[166:331]" -0.82554978 0.29389268 -1.13627172 -1.13627172 0.29389268 -0.82554966
		 -1.33576739 0.29389268 -0.43401712 -1.40450895 0.29389268 0 -1.33576739 0.29389268 0.43401712
		 -1.1362716 0.29389268 0.8255496 -0.8255496 0.29389268 1.13627148 -0.43401712 0.29389268 1.33576727
		 -4.1857618e-08 0.29389268 1.40450871 0.434017 0.29389268 1.33576715 0.82554942 0.29389268 1.13627136
		 1.13627136 0.29389268 0.82554948 1.33576703 0.29389268 0.43401703 1.40450859 0.29389268 0
		 1.40331173 0.15450853 -0.45596361 1.19372833 0.15450853 -0.86729431 0.86729431 0.15450853 -1.19372821
		 0.45596358 0.15450853 -1.40331161 0 0.15450853 -1.47552907 -0.45596358 0.15450853 -1.40331149
		 -0.86729413 0.15450853 -1.19372797 -1.19372785 0.15450853 -0.86729407 -1.40331125 0.15450853 -0.45596343
		 -1.47552872 0.15450853 0 -1.40331125 0.15450853 0.45596343 -1.19372785 0.15450853 0.86729395
		 -0.86729395 0.15450853 1.19372773 -0.45596343 0.15450853 1.40331101 -4.3974172e-08 0.15450853 1.47552848
		 0.45596331 0.15450853 1.40331101 0.86729378 0.15450853 1.19372761 1.19372749 0.15450853 0.86729389
		 1.40331089 0.15450853 0.45596334 1.47552836 0.15450853 0 1.42658579 0 -0.4635258
		 1.21352637 0 -0.88167846 0.88167846 0 -1.21352637 0.46352577 0 -1.42658567 0 0 -1.50000083
		 -0.46352577 0 -1.42658556 -0.88167828 0 -1.21352601 -1.21352601 0 -0.88167822 -1.42658532 0 -0.46352562
		 -1.50000048 0 0 -1.42658532 0 0.46352562 -1.21352589 0 0.8816781 -0.8816781 0 1.21352577
		 -0.46352562 0 1.42658508 -4.4703487e-08 0 1.50000036 0.4635255 0 1.42658496 0.88167793 0 1.21352565
		 1.21352565 0 0.88167804 1.42658496 0 0.46352553 1.50000012 0 0 1.40331173 -0.15450853 -0.45596361
		 1.19372833 -0.15450853 -0.86729431 0.86729431 -0.15450853 -1.19372821 0.45596358 -0.15450853 -1.40331161
		 0 -0.15450853 -1.47552907 -0.45596358 -0.15450853 -1.40331149 -0.86729413 -0.15450853 -1.19372797
		 -1.19372785 -0.15450853 -0.86729407 -1.40331125 -0.15450853 -0.45596343 -1.47552872 -0.15450853 0
		 -1.40331125 -0.15450853 0.45596343 -1.19372785 -0.15450853 0.86729395 -0.86729395 -0.15450853 1.19372773
		 -0.45596343 -0.15450853 1.40331101 -4.3974172e-08 -0.15450853 1.47552848 0.45596331 -0.15450853 1.40331101
		 0.86729378 -0.15450853 1.19372761 1.19372749 -0.15450853 0.86729389 1.40331089 -0.15450853 0.45596334
		 1.47552836 -0.15450853 0 1.33576787 -0.29389271 -0.4340173 1.13627207 -0.29389271 -0.8255499
		 0.8255499 -0.29389271 -1.13627195 0.43401724 -0.29389271 -1.33576775 0 -0.29389271 -1.40450931
		 -0.43401724 -0.29389271 -1.33576763 -0.82554978 -0.29389271 -1.13627172 -1.13627172 -0.29389271 -0.82554966
		 -1.33576739 -0.29389271 -0.43401712 -1.40450895 -0.29389271 0 -1.33576739 -0.29389271 0.43401712
		 -1.1362716 -0.29389271 0.8255496 -0.8255496 -0.29389271 1.13627148 -0.43401712 -0.29389271 1.33576727
		 -4.1857618e-08 -0.29389271 1.40450871 0.434017 -0.29389271 1.33576715 0.82554942 -0.29389271 1.13627136
		 1.13627136 -0.29389271 0.82554948 1.33576703 -0.29389271 0.43401703 1.40450859 -0.29389271 0
		 1.23056591 -0.40450865 -0.39983508 1.046781898 -0.40450865 -0.76053154 0.76053154 -0.40450865 -1.046781898
		 0.39983505 -0.40450865 -1.23056579 0 -0.40450865 -1.29389334 -0.39983505 -0.40450865 -1.23056567
		 -0.76053137 -0.40450865 -1.046781659 -1.04678154 -0.40450865 -0.76053131 -1.23056543 -0.40450865 -0.39983493
		 -1.2938931 -0.40450865 0 -1.23056543 -0.40450865 0.39983493 -1.046781421 -0.40450865 0.76053119
		 -0.76053119 -0.40450865 1.046781421 -0.39983493 -0.40450865 1.23056531 -3.8561009e-08 -0.40450865 1.29389286
		 0.39983481 -0.40450865 1.23056519 0.76053107 -0.40450865 1.046781301 1.046781182 -0.40450865 0.76053113
		 1.23056519 -0.40450865 0.39983487 1.29389274 -0.40450865 0 1.098003626 -0.47552848 -0.35676301
		 0.93401772 -0.47552848 -0.67860353 0.67860353 -0.47552848 -0.93401766 0.35676295 -0.47552848 -1.098003507
		 0 -0.47552848 -1.15450919 -0.35676295 -0.47552848 -1.098003387 -0.67860341 -0.47552848 -0.93401742
		 -0.93401736 -0.47552848 -0.67860329 -1.098003268 -0.47552848 -0.35676286 -1.15450883 -0.47552848 0
		 -1.098003268 -0.47552848 0.35676286 -0.9340173 -0.47552848 0.67860323 -0.67860323 -0.47552848 0.93401724
		 -0.35676286 -0.47552848 1.09800303 -3.4407037e-08 -0.47552848 1.15450871 0.35676274 -0.47552848 1.09800303
		 0.67860311 -0.47552848 0.93401712 0.93401706 -0.47552848 0.67860317 1.098002911 -0.47552848 0.3567628
		 1.15450859 -0.47552848 0 0.95105714 -0.50000024 -0.30901718 0.80901754 -0.50000024 -0.5877856
		 0.5877856 -0.50000024 -0.80901748 0.30901715 -0.50000024 -0.95105702 0 -0.50000024 -1.000000476837
		 -0.30901715 -0.50000024 -0.95105696 -0.58778548 -0.50000024 -0.8090173 -0.80901724 -0.50000024 -0.58778542
		 -0.95105678 -0.50000024 -0.30901706 -1.000000238419 -0.50000024 0 -0.95105678 -0.50000024 0.30901706
		 -0.80901718 -0.50000024 0.58778536 -0.58778536 -0.50000024 0.80901712 -0.30901706 -0.50000024 0.95105666
		 -2.9802322e-08 -0.50000024 1.000000119209 0.30901697 -0.50000024 0.9510566 0.58778524 -0.50000024 0.80901706
		 0.809017 -0.50000024 0.5877853 0.95105654 -0.50000024 0.309017 1 -0.50000024 0 0.80411065 -0.47552851 -0.26127136
		 0.68401736 -0.47552851 -0.49696767 0.49696767 -0.47552851 -0.6840173 0.26127136 -0.47552851 -0.80411053
		 0 -0.47552851 -0.84549183 -0.26127136 -0.47552851 -0.80411047 -0.49696758 -0.47552851 -0.68401718
		 -0.68401712 -0.47552851 -0.49696752 -0.80411035 -0.47552851 -0.26127127 -0.84549159 -0.47552851 0
		 -0.80411035 -0.47552851 0.26127127 -0.68401706 -0.47552851 0.49696746;
	setAttr ".vt[332:399]" -0.49696746 -0.47552851 0.684017 -0.26127127 -0.47552851 0.80411023
		 -2.5197608e-08 -0.47552851 0.84549153 0.26127121 -0.47552851 0.80411017 0.49696738 -0.47552851 0.684017
		 0.68401694 -0.47552851 0.49696743 0.80411011 -0.47552851 0.26127121 0.84549141 -0.47552851 0
		 0.67154831 -0.40450874 -0.21819925 0.57125312 -0.40450874 -0.41503966 0.41503966 -0.40450874 -0.57125306
		 0.21819924 -0.40450874 -0.67154819 0 -0.40450874 -0.70610756 -0.21819924 -0.40450874 -0.67154819
		 -0.41503957 -0.40450874 -0.57125294 -0.57125288 -0.40450874 -0.41503951 -0.67154801 -0.40450874 -0.21819918
		 -0.70610738 -0.40450874 0 -0.67154801 -0.40450874 0.21819918 -0.57125288 -0.40450874 0.41503948
		 -0.41503948 -0.40450874 0.57125282 -0.21819918 -0.40450874 0.67154795 -2.1043634e-08 -0.40450874 0.70610726
		 0.2181991 -0.40450874 0.67154789 0.41503939 -0.40450874 0.57125276 0.5712527 -0.40450874 0.41503942
		 0.67154789 -0.40450874 0.21819913 0.7061072 -0.40450874 0 0.56634617 -0.2938928 -0.18401702
		 0.48176286 -0.2938928 -0.35002118 0.35002118 -0.2938928 -0.48176283 0.184017 -0.2938928 -0.56634611
		 0 -0.2938928 -0.59549153 -0.184017 -0.2938928 -0.56634605 -0.35002109 -0.2938928 -0.48176271
		 -0.48176268 -0.2938928 -0.35002106 -0.56634599 -0.2938928 -0.18401696 -0.59549135 -0.2938928 0
		 -0.56634599 -0.2938928 0.18401696 -0.48176265 -0.2938928 0.35002103 -0.35002103 -0.2938928 0.48176259
		 -0.18401696 -0.2938928 0.56634587 -1.7747022e-08 -0.2938928 0.59549129 0.1840169 -0.2938928 0.56634587
		 0.35002095 -0.2938928 0.48176256 0.48176253 -0.2938928 0.350021 0.56634581 -0.2938928 0.18401691
		 0.59549123 -0.2938928 0 0.4988023 -0.15450859 -0.16207068 0.4243066 -0.15450859 -0.30827674
		 0.30827674 -0.15450859 -0.42430654 0.16207068 -0.15450859 -0.49880221 7.9162419e-09 -0.15450859 -0.52447164
		 -0.16207065 -0.15450859 -0.49880219 -0.30827668 -0.15450859 -0.42430645 -0.42430636 -0.15450859 -0.30827665
		 -0.49880207 -0.15450859 -0.16207062 -0.52447152 -0.15450859 0 -0.49880207 -0.15450859 0.16207062
		 -0.42430636 -0.15450859 0.30827662 -0.30827662 -0.15450859 0.42430633 -0.1620706 -0.15450859 0.49880201
		 -7.7142239e-09 -0.15450859 0.52447146 0.16207057 -0.15450859 0.49880198 0.30827656 -0.15450859 0.4243063
		 0.42430627 -0.15450859 0.30827659 0.49880192 -0.15450859 0.16207059 0.52447146 -0.15450859 0;
	setAttr -s 800 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 380 381 1 381 382 1 382 383 1
		 383 384 1 384 385 1 385 386 1 386 387 1 387 388 1 388 389 1 389 390 1 390 391 1 391 392 1
		 392 393 1 393 394 1 394 395 1 395 396 1 396 397 1 397 398 1 398 399 1 399 380 1 0 20 1
		 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1
		 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1
		 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1
		 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1
		 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1
		 57 77 1 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1
		 68 88 1 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1
		 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1;
	setAttr ".ed[498:663]" 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1
		 104 124 1 105 125 1 106 126 1 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1
		 113 133 1 114 134 1 115 135 1 116 136 1 117 137 1 118 138 1 119 139 1 120 140 1 121 141 1
		 122 142 1 123 143 1 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1
		 131 151 1 132 152 1 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1
		 140 160 1 141 161 1 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1
		 149 169 1 150 170 1 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1
		 158 178 1 159 179 1 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1
		 167 187 1 168 188 1 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1
		 176 196 1 177 197 1 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1
		 185 205 1 186 206 1 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1
		 194 214 1 195 215 1 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1
		 203 223 1 204 224 1 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1
		 212 232 1 213 233 1 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1
		 221 241 1 222 242 1 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1
		 230 250 1 231 251 1 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1
		 239 259 1 240 260 1 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1
		 248 268 1 249 269 1 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1
		 257 277 1 258 278 1 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1;
	setAttr ".ed[664:799]" 264 284 1 265 285 1 266 286 1 267 287 1 268 288 1 269 289 1
		 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1 277 297 1 278 298 1
		 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1 284 304 1 285 305 1 286 306 1 287 307 1
		 288 308 1 289 309 1 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1
		 297 317 1 298 318 1 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1
		 306 326 1 307 327 1 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1
		 315 335 1 316 336 1 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1
		 324 344 1 325 345 1 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1
		 333 353 1 334 354 1 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1
		 342 362 1 343 363 1 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1
		 351 371 1 352 372 1 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1
		 360 380 1 361 381 1 362 382 1 363 383 1 364 384 1 365 385 1 366 386 1 367 387 1 368 388 1
		 369 389 1 370 390 1 371 391 1 372 392 1 373 393 1 374 394 1 375 395 1 376 396 1 377 397 1
		 378 398 1 379 399 1 380 0 1 381 1 1 382 2 1 383 3 1 384 4 1 385 5 1 386 6 1 387 7 1
		 388 8 1 389 9 1 390 10 1 391 11 1 392 12 1 393 13 1 394 14 1 395 15 1 396 16 1 397 17 1
		 398 18 1 399 19 1;
	setAttr -s 400 -ch 1600 ".fc[0:399]" -type "polyFaces" 
		f 4 -1 400 20 -402
		mu 0 4 0 1 2 3
		f 4 -2 401 21 -403
		mu 0 4 10 0 3 11
		f 4 -3 402 22 -404
		mu 0 4 436 437 438 439
		f 4 -4 403 23 -405
		mu 0 4 444 436 439 445
		f 4 -5 404 24 -406
		mu 0 4 450 444 445 451
		f 4 -6 405 25 -407
		mu 0 4 455 450 451 456
		f 4 -7 406 26 -408
		mu 0 4 50 55 56 51
		f 4 -8 407 27 -409
		mu 0 4 49 50 51 52
		f 4 -9 408 28 -410
		mu 0 4 59 49 52 60
		f 4 -10 409 29 -411
		mu 0 4 69 59 60 70
		f 4 -11 410 30 -412
		mu 0 4 79 69 70 80
		f 4 -12 411 31 -413
		mu 0 4 87 79 80 88
		f 4 -13 412 32 -414
		mu 0 4 461 462 463 464
		f 4 -14 413 33 -415
		mu 0 4 469 461 464 470
		f 4 -15 414 34 -416
		mu 0 4 475 469 470 476
		f 4 -16 415 35 -417
		mu 0 4 480 475 476 481
		f 4 -17 416 36 -418
		mu 0 4 27 36 37 28
		f 4 -18 417 37 -419
		mu 0 4 16 27 28 17
		f 4 -19 418 38 -420
		mu 0 4 6 16 17 7
		f 4 -20 419 39 -401
		mu 0 4 1 6 7 2
		f 4 -21 420 40 -422
		mu 0 4 3 2 8 9
		f 4 -22 421 41 -423
		mu 0 4 11 3 9 21
		f 4 -23 422 42 -424
		mu 0 4 439 438 442 443
		f 4 -24 423 43 -425
		mu 0 4 445 439 443 449
		f 4 -25 424 44 -426
		mu 0 4 451 445 449 454
		f 4 -26 425 45 -427
		mu 0 4 456 451 454 459
		f 4 -27 426 46 -428
		mu 0 4 51 56 65 57
		f 4 -28 427 47 -429
		mu 0 4 52 51 57 58
		f 4 -29 428 48 -430
		mu 0 4 60 52 58 68
		f 4 -30 429 49 -431
		mu 0 4 70 60 68 78
		f 4 -31 430 50 -432
		mu 0 4 80 70 78 86
		f 4 -32 431 51 -433
		mu 0 4 88 80 86 93
		f 4 -33 432 52 -434
		mu 0 4 464 463 467 468
		f 4 -34 433 53 -435
		mu 0 4 470 464 468 474
		f 4 -35 434 54 -436
		mu 0 4 476 470 474 479
		f 4 -36 435 55 -437
		mu 0 4 481 476 479 484
		f 4 -37 436 56 -438
		mu 0 4 28 37 43 38
		f 4 -38 437 57 -439
		mu 0 4 17 28 38 29
		f 4 -39 438 58 -440
		mu 0 4 7 17 29 18
		f 4 -40 439 59 -421
		mu 0 4 2 7 18 8
		f 4 -41 440 60 -442
		mu 0 4 9 8 19 20
		f 4 -42 441 61 -443
		mu 0 4 21 9 20 31
		f 4 -43 442 62 -444
		mu 0 4 222 223 204 212
		f 4 -44 443 63 -445
		mu 0 4 234 222 212 224
		f 4 -45 444 64 -446
		mu 0 4 245 234 224 235
		f 4 -46 445 65 -447
		mu 0 4 260 245 235 246
		f 4 -47 446 66 -448
		mu 0 4 57 65 76 66
		f 4 -48 447 67 -449
		mu 0 4 58 57 66 67
		f 4 -49 448 68 -450
		mu 0 4 68 58 67 77
		f 4 -50 449 69 -451
		mu 0 4 78 68 77 85
		f 4 -51 450 70 -452
		mu 0 4 86 78 85 92
		f 4 -52 451 71 -453
		mu 0 4 93 86 92 96
		f 4 -53 452 72 -454
		mu 0 4 275 287 276 264
		f 4 -54 453 73 -455
		mu 0 4 263 275 264 250
		f 4 -55 454 74 -456
		mu 0 4 249 263 250 237
		f 4 -56 455 75 -457
		mu 0 4 248 249 237 226
		f 4 -57 456 76 -458
		mu 0 4 38 43 47 44
		f 4 -58 457 77 -459
		mu 0 4 29 38 44 39
		f 4 -59 458 78 -460
		mu 0 4 18 29 39 30
		f 4 -60 459 79 -441
		mu 0 4 8 18 30 19
		f 4 -61 460 80 -462
		mu 0 4 196 197 198 199
		f 4 -62 461 81 -463
		mu 0 4 204 196 199 205
		f 4 -63 462 82 -464
		mu 0 4 212 204 205 213
		f 4 -64 463 83 -465
		mu 0 4 224 212 213 225
		f 4 -65 464 84 -466
		mu 0 4 235 224 225 236
		f 4 -66 465 85 -467
		mu 0 4 246 235 236 247
		f 4 -67 466 86 -468
		mu 0 4 261 246 247 262
		f 4 -68 467 87 -469
		mu 0 4 273 261 262 274
		f 4 -69 468 88 -470
		mu 0 4 285 273 274 286
		f 4 -70 469 89 -471
		mu 0 4 299 285 286 300
		f 4 -71 470 90 -472
		mu 0 4 288 299 300 289
		f 4 -72 471 91 -473
		mu 0 4 276 288 289 277
		f 4 -73 472 92 -474
		mu 0 4 264 276 277 265
		f 4 -74 473 93 -475
		mu 0 4 250 264 265 251
		f 4 -75 474 94 -476
		mu 0 4 237 250 251 238
		f 4 -76 475 95 -477
		mu 0 4 226 237 238 227
		f 4 -77 476 96 -478
		mu 0 4 214 226 227 215
		f 4 -78 477 97 -479
		mu 0 4 206 214 215 207
		f 4 -79 478 98 -480
		mu 0 4 200 206 207 201
		f 4 -80 479 99 -461
		mu 0 4 197 200 201 198
		f 4 -81 480 100 -482
		mu 0 4 199 198 202 203
		f 4 -82 481 101 -483
		mu 0 4 205 199 203 211
		f 4 -83 482 102 -484
		mu 0 4 213 205 211 221
		f 4 -84 483 103 -485
		mu 0 4 225 213 221 233
		f 4 -85 484 104 -486
		mu 0 4 236 225 233 244
		f 4 -86 485 105 -487
		mu 0 4 247 236 244 259
		f 4 -87 486 106 -488
		mu 0 4 262 247 259 272
		f 4 -88 487 107 -489
		mu 0 4 274 262 272 284
		f 4 -89 488 108 -490
		mu 0 4 286 274 284 298
		f 4 -90 489 109 -491
		mu 0 4 300 286 298 307
		f 4 -91 490 110 -492
		mu 0 4 289 300 307 301
		f 4 -92 491 111 -493
		mu 0 4 277 289 301 290
		f 4 -93 492 112 -494
		mu 0 4 265 277 290 278
		f 4 -94 493 113 -495
		mu 0 4 251 265 278 266
		f 4 -95 494 114 -496
		mu 0 4 238 251 266 252
		f 4 -96 495 115 -497
		mu 0 4 227 238 252 239
		f 4 -97 496 116 -498
		mu 0 4 215 227 239 228
		f 4 -98 497 117 -499
		mu 0 4 207 215 228 216
		f 4 -99 498 118 -500
		mu 0 4 201 207 216 208
		f 4 -100 499 119 -481
		mu 0 4 198 201 208 202
		f 4 -101 500 120 -502
		mu 0 4 203 202 209 210
		f 4 -102 501 121 -503
		mu 0 4 211 203 210 220
		f 4 -103 502 122 -504
		mu 0 4 221 211 220 232
		f 4 -104 503 123 -505
		mu 0 4 233 221 232 243
		f 4 -105 504 124 -506
		mu 0 4 244 233 243 258
		f 4 -106 505 125 -507
		mu 0 4 259 244 258 271
		f 4 -107 506 126 -508
		mu 0 4 272 259 271 283
		f 4 -108 507 127 -509
		mu 0 4 284 272 283 297
		f 4 -109 508 128 -510
		mu 0 4 298 284 297 306
		f 4 -110 509 129 -511
		mu 0 4 307 298 306 312
		f 4 -111 510 130 -512
		mu 0 4 301 307 312 308
		f 4 -112 511 131 -513
		mu 0 4 290 301 308 302
		f 4 -113 512 132 -514
		mu 0 4 278 290 302 291
		f 4 -114 513 133 -515
		mu 0 4 266 278 291 279
		f 4 -115 514 134 -516
		mu 0 4 252 266 279 267
		f 4 -116 515 135 -517
		mu 0 4 239 252 267 253
		f 4 -117 516 136 -518
		mu 0 4 228 239 253 240
		f 4 -118 517 137 -519
		mu 0 4 216 228 240 229
		f 4 -119 518 138 -520
		mu 0 4 208 216 229 217
		f 4 -120 519 139 -501
		mu 0 4 202 208 217 209
		f 4 -121 520 140 -522
		mu 0 4 210 209 218 219
		f 4 -122 521 141 -523
		mu 0 4 220 210 219 231
		f 4 -123 522 142 -524
		mu 0 4 232 220 231 242
		f 4 -124 523 143 -525
		mu 0 4 243 232 242 257
		f 4 -125 524 144 -526
		mu 0 4 258 243 257 270
		f 4 -126 525 145 -527
		mu 0 4 271 258 270 282
		f 4 -127 526 146 -528
		mu 0 4 283 271 282 296
		f 4 -128 527 147 -529
		mu 0 4 297 283 296 305
		f 4 -129 528 148 -530
		mu 0 4 306 297 305 311
		f 4 -130 529 149 -531
		mu 0 4 312 306 311 315
		f 4 -131 530 150 -532
		mu 0 4 308 312 315 313
		f 4 -132 531 151 -533
		mu 0 4 302 308 313 309
		f 4 -133 532 152 -534
		mu 0 4 291 302 309 303
		f 4 -134 533 153 -535
		mu 0 4 279 291 303 292
		f 4 -135 534 154 -536
		mu 0 4 267 279 292 280
		f 4 -136 535 155 -537
		mu 0 4 253 267 280 268
		f 4 -137 536 156 -538
		mu 0 4 240 253 268 254
		f 4 -138 537 157 -539
		mu 0 4 229 240 254 241
		f 4 -139 538 158 -540
		mu 0 4 217 229 241 230
		f 4 -140 539 159 -521
		mu 0 4 209 217 230 218
		f 4 -141 540 160 -542
		mu 0 4 102 103 99 98
		f 4 -142 541 161 -543
		mu 0 4 111 102 98 108
		f 4 -143 542 162 -544
		mu 0 4 242 231 255 256
		f 4 -144 543 163 -545
		mu 0 4 257 242 256 269
		f 4 -145 544 164 -546
		mu 0 4 270 257 269 281
		f 4 -146 545 165 -547
		mu 0 4 282 270 281 295
		f 4 -147 546 166 -548
		mu 0 4 152 159 153 148
		f 4 -148 547 167 -549
		mu 0 4 151 152 148 147
		f 4 -149 548 168 -550
		mu 0 4 160 151 147 157
		f 4 -150 549 169 -551
		mu 0 4 167 160 157 165
		f 4 -151 550 170 -552
		mu 0 4 175 167 165 173
		f 4 -152 551 171 -553
		mu 0 4 184 175 173 182
		f 4 -153 552 172 -554
		mu 0 4 303 309 314 310
		f 4 -154 553 173 -555
		mu 0 4 292 303 310 304
		f 4 -155 554 174 -556
		mu 0 4 280 292 304 293
		f 4 -156 555 175 -557
		mu 0 4 268 280 293 294
		f 4 -157 556 176 -558
		mu 0 4 126 135 127 119
		f 4 -158 557 177 -559
		mu 0 4 118 126 119 112
		f 4 -159 558 178 -560
		mu 0 4 110 118 112 104
		f 4 -160 559 179 -541
		mu 0 4 103 110 104 99
		f 4 -161 560 180 -562
		mu 0 4 98 99 100 101
		f 4 -162 561 181 -563
		mu 0 4 108 98 101 109
		f 4 -163 562 182 -564
		mu 0 4 486 487 488 489
		f 4 -164 563 183 -565
		mu 0 4 492 486 489 493
		f 4 -165 564 184 -566
		mu 0 4 497 492 493 498
		f 4 -166 565 185 -567
		mu 0 4 503 497 498 504
		f 4 -167 566 186 -568
		mu 0 4 148 153 154 149
		f 4 -168 567 187 -569
		mu 0 4 147 148 149 150
		f 4 -169 568 188 -570
		mu 0 4 157 147 150 158
		f 4 -170 569 189 -571
		mu 0 4 165 157 158 166
		f 4 -171 570 190 -572
		mu 0 4 173 165 166 174
		f 4 -172 571 191 -573
		mu 0 4 182 173 174 183
		f 4 -173 572 192 -574
		mu 0 4 511 512 513 514
		f 4 -174 573 193 -575
		mu 0 4 517 511 514 518
		f 4 -175 574 194 -576
		mu 0 4 522 517 518 523
		f 4 -176 575 195 -577
		mu 0 4 528 522 523 529
		f 4 -177 576 196 -578
		mu 0 4 119 127 128 120
		f 4 -178 577 197 -579
		mu 0 4 112 119 120 113
		f 4 -179 578 198 -580
		mu 0 4 104 112 113 105
		f 4 -180 579 199 -561
		mu 0 4 99 104 105 100
		f 4 -181 580 200 -582
		mu 0 4 101 100 106 107
		f 4 -182 581 201 -583
		mu 0 4 109 101 107 117
		f 4 -183 582 202 -584
		mu 0 4 489 488 490 491
		f 4 -184 583 203 -585
		mu 0 4 493 489 491 496
		f 4 -185 584 204 -586
		mu 0 4 498 493 496 502
		f 4 -186 585 205 -587
		mu 0 4 504 498 502 507
		f 4 -187 586 206 -588
		mu 0 4 149 154 161 155
		f 4 -188 587 207 -589
		mu 0 4 150 149 155 156
		f 4 -189 588 208 -590
		mu 0 4 158 150 156 164
		f 4 -190 589 209 -591
		mu 0 4 166 158 164 172
		f 4 -191 590 210 -592
		mu 0 4 174 166 172 181
		f 4 -192 591 211 -593
		mu 0 4 183 174 181 189
		f 4 -193 592 212 -594
		mu 0 4 514 513 515 516
		f 4 -194 593 213 -595
		mu 0 4 518 514 516 521
		f 4 -195 594 214 -596
		mu 0 4 523 518 521 527
		f 4 -196 595 215 -597
		mu 0 4 529 523 527 532
		f 4 -197 596 216 -598
		mu 0 4 120 128 136 129
		f 4 -198 597 217 -599
		mu 0 4 113 120 129 121
		f 4 -199 598 218 -600
		mu 0 4 105 113 121 114
		f 4 -200 599 219 -581
		mu 0 4 100 105 114 106
		f 4 -201 600 220 -602
		mu 0 4 107 106 115 116
		f 4 -202 601 221 -603
		mu 0 4 117 107 116 125
		f 4 -203 602 222 -604
		mu 0 4 491 490 494 495
		f 4 -204 603 223 -605
		mu 0 4 496 491 495 501
		f 4 -205 604 224 -606
		mu 0 4 502 496 501 506
		f 4 -206 605 225 -607
		mu 0 4 507 502 506 509
		f 4 -207 606 226 -608
		mu 0 4 155 161 168 162
		f 4 -208 607 227 -609
		mu 0 4 156 155 162 163
		f 4 -209 608 228 -610
		mu 0 4 164 156 163 171
		f 4 -210 609 229 -611
		mu 0 4 172 164 171 180
		f 4 -211 610 230 -612
		mu 0 4 181 172 180 188
		f 4 -212 611 231 -613
		mu 0 4 189 181 188 192
		f 4 -213 612 232 -614
		mu 0 4 516 515 519 520
		f 4 -214 613 233 -615
		mu 0 4 521 516 520 526
		f 4 -215 614 234 -616
		mu 0 4 527 521 526 531
		f 4 -216 615 235 -617
		mu 0 4 532 527 531 534
		f 4 -217 616 236 -618
		mu 0 4 129 136 141 137
		f 4 -218 617 237 -619
		mu 0 4 121 129 137 130
		f 4 -219 618 238 -620
		mu 0 4 114 121 130 122
		f 4 -220 619 239 -601
		mu 0 4 106 114 122 115
		f 4 -221 620 240 -622
		mu 0 4 116 115 123 124
		f 4 -222 621 241 -623
		mu 0 4 125 116 124 134
		f 4 -223 622 242 -624
		mu 0 4 495 494 499 500
		f 4 -224 623 243 -625
		mu 0 4 501 495 500 505
		f 4 -225 624 244 -626
		mu 0 4 506 501 505 508
		f 4 -226 625 245 -627
		mu 0 4 509 506 508 510
		f 4 -227 626 246 -628
		mu 0 4 162 168 176 169
		f 4 -228 627 247 -629
		mu 0 4 163 162 169 170
		f 4 -229 628 248 -630
		mu 0 4 171 163 170 179
		f 4 -230 629 249 -631
		mu 0 4 180 171 179 187
		f 4 -231 630 250 -632
		mu 0 4 188 180 187 191
		f 4 -232 631 251 -633
		mu 0 4 192 188 191 194
		f 4 -233 632 252 -634
		mu 0 4 520 519 524 525
		f 4 -234 633 253 -635
		mu 0 4 526 520 525 530
		f 4 -235 634 254 -636
		mu 0 4 531 526 530 533
		f 4 -236 635 255 -637
		mu 0 4 534 531 533 535
		f 4 -237 636 256 -638
		mu 0 4 137 141 144 142
		f 4 -238 637 257 -639
		mu 0 4 130 137 142 138
		f 4 -239 638 258 -640
		mu 0 4 122 130 138 131
		f 4 -240 639 259 -621
		mu 0 4 115 122 131 123
		f 4 -241 640 260 -642
		mu 0 4 124 123 132 133
		f 4 -242 641 261 -643
		mu 0 4 134 124 133 140
		f 4 -243 642 262 -644
		mu 0 4 342 343 324 332
		f 4 -244 643 263 -645
		mu 0 4 354 342 332 344
		f 4 -245 644 264 -646
		mu 0 4 365 354 344 355
		f 4 -246 645 265 -647
		mu 0 4 380 365 355 366
		f 4 -247 646 266 -648
		mu 0 4 169 176 185 177
		f 4 -248 647 267 -649
		mu 0 4 170 169 177 178
		f 4 -249 648 268 -650
		mu 0 4 179 170 178 186
		f 4 -250 649 269 -651
		mu 0 4 187 179 186 190
		f 4 -251 650 270 -652
		mu 0 4 191 187 190 193
		f 4 -252 651 271 -653
		mu 0 4 194 191 193 195
		f 4 -253 652 272 -654
		mu 0 4 395 407 396 384
		f 4 -254 653 273 -655
		mu 0 4 383 395 384 370
		f 4 -255 654 274 -656
		mu 0 4 369 383 370 357
		f 4 -256 655 275 -657
		mu 0 4 368 369 357 346
		f 4 -257 656 276 -658
		mu 0 4 142 144 146 145
		f 4 -258 657 277 -659
		mu 0 4 138 142 145 143
		f 4 -259 658 278 -660
		mu 0 4 131 138 143 139
		f 4 -260 659 279 -641
		mu 0 4 123 131 139 132
		f 4 -261 660 280 -662
		mu 0 4 316 317 318 319
		f 4 -262 661 281 -663
		mu 0 4 324 316 319 325
		f 4 -263 662 282 -664
		mu 0 4 332 324 325 333
		f 4 -264 663 283 -665
		mu 0 4 344 332 333 345
		f 4 -265 664 284 -666
		mu 0 4 355 344 345 356
		f 4 -266 665 285 -667
		mu 0 4 366 355 356 367
		f 4 -267 666 286 -668
		mu 0 4 381 366 367 382
		f 4 -268 667 287 -669
		mu 0 4 393 381 382 394
		f 4 -269 668 288 -670
		mu 0 4 405 393 394 406
		f 4 -270 669 289 -671
		mu 0 4 419 405 406 420
		f 4 -271 670 290 -672
		mu 0 4 408 419 420 409
		f 4 -272 671 291 -673
		mu 0 4 396 408 409 397
		f 4 -273 672 292 -674
		mu 0 4 384 396 397 385
		f 4 -274 673 293 -675
		mu 0 4 370 384 385 371
		f 4 -275 674 294 -676
		mu 0 4 357 370 371 358
		f 4 -276 675 295 -677
		mu 0 4 346 357 358 347
		f 4 -277 676 296 -678
		mu 0 4 334 346 347 335
		f 4 -278 677 297 -679
		mu 0 4 326 334 335 327
		f 4 -279 678 298 -680
		mu 0 4 320 326 327 321
		f 4 -280 679 299 -661
		mu 0 4 317 320 321 318
		f 4 -281 680 300 -682
		mu 0 4 319 318 322 323
		f 4 -282 681 301 -683
		mu 0 4 325 319 323 331
		f 4 -283 682 302 -684
		mu 0 4 333 325 331 341
		f 4 -284 683 303 -685
		mu 0 4 345 333 341 353
		f 4 -285 684 304 -686
		mu 0 4 356 345 353 364
		f 4 -286 685 305 -687
		mu 0 4 367 356 364 379
		f 4 -287 686 306 -688
		mu 0 4 382 367 379 392
		f 4 -288 687 307 -689
		mu 0 4 394 382 392 404
		f 4 -289 688 308 -690
		mu 0 4 406 394 404 418
		f 4 -290 689 309 -691
		mu 0 4 420 406 418 427
		f 4 -291 690 310 -692
		mu 0 4 409 420 427 421
		f 4 -292 691 311 -693
		mu 0 4 397 409 421 410
		f 4 -293 692 312 -694
		mu 0 4 385 397 410 398
		f 4 -294 693 313 -695
		mu 0 4 371 385 398 386
		f 4 -295 694 314 -696
		mu 0 4 358 371 386 372
		f 4 -296 695 315 -697
		mu 0 4 347 358 372 359
		f 4 -297 696 316 -698
		mu 0 4 335 347 359 348
		f 4 -298 697 317 -699
		mu 0 4 327 335 348 336
		f 4 -299 698 318 -700
		mu 0 4 321 327 336 328
		f 4 -300 699 319 -681
		mu 0 4 318 321 328 322
		f 4 -301 700 320 -702
		mu 0 4 323 322 329 330
		f 4 -302 701 321 -703
		mu 0 4 331 323 330 340
		f 4 -303 702 322 -704
		mu 0 4 341 331 340 352
		f 4 -304 703 323 -705
		mu 0 4 353 341 352 363
		f 4 -305 704 324 -706
		mu 0 4 364 353 363 378
		f 4 -306 705 325 -707
		mu 0 4 379 364 378 391
		f 4 -307 706 326 -708
		mu 0 4 392 379 391 403
		f 4 -308 707 327 -709
		mu 0 4 404 392 403 417
		f 4 -309 708 328 -710
		mu 0 4 418 404 417 426
		f 4 -310 709 329 -711
		mu 0 4 427 418 426 432
		f 4 -311 710 330 -712
		mu 0 4 421 427 432 428
		f 4 -312 711 331 -713
		mu 0 4 410 421 428 422
		f 4 -313 712 332 -714
		mu 0 4 398 410 422 411
		f 4 -314 713 333 -715
		mu 0 4 386 398 411 399
		f 4 -315 714 334 -716
		mu 0 4 372 386 399 387
		f 4 -316 715 335 -717
		mu 0 4 359 372 387 373
		f 4 -317 716 336 -718
		mu 0 4 348 359 373 360
		f 4 -318 717 337 -719
		mu 0 4 336 348 360 349
		f 4 -319 718 338 -720
		mu 0 4 328 336 349 337
		f 4 -320 719 339 -701
		mu 0 4 322 328 337 329
		f 4 -321 720 340 -722
		mu 0 4 330 329 338 339
		f 4 -322 721 341 -723
		mu 0 4 340 330 339 351
		f 4 -323 722 342 -724
		mu 0 4 352 340 351 362
		f 4 -324 723 343 -725
		mu 0 4 363 352 362 377
		f 4 -325 724 344 -726
		mu 0 4 378 363 377 390
		f 4 -326 725 345 -727
		mu 0 4 391 378 390 402
		f 4 -327 726 346 -728
		mu 0 4 403 391 402 416
		f 4 -328 727 347 -729
		mu 0 4 417 403 416 425
		f 4 -329 728 348 -730
		mu 0 4 426 417 425 431
		f 4 -330 729 349 -731
		mu 0 4 432 426 431 435
		f 4 -331 730 350 -732
		mu 0 4 428 432 435 433
		f 4 -332 731 351 -733
		mu 0 4 422 428 433 429
		f 4 -333 732 352 -734
		mu 0 4 411 422 429 423
		f 4 -334 733 353 -735
		mu 0 4 399 411 423 412
		f 4 -335 734 354 -736
		mu 0 4 387 399 412 400
		f 4 -336 735 355 -737
		mu 0 4 373 387 400 388
		f 4 -337 736 356 -738
		mu 0 4 360 373 388 374
		f 4 -338 737 357 -739
		mu 0 4 349 360 374 361
		f 4 -339 738 358 -740
		mu 0 4 337 349 361 350
		f 4 -340 739 359 -721
		mu 0 4 329 337 350 338
		f 4 -341 740 360 -742
		mu 0 4 22 23 13 12
		f 4 -342 741 361 -743
		mu 0 4 33 22 12 25
		f 4 -343 742 362 -744
		mu 0 4 362 351 375 376
		f 4 -344 743 363 -745
		mu 0 4 377 362 376 389
		f 4 -345 744 364 -746
		mu 0 4 390 377 389 401
		f 4 -346 745 365 -747
		mu 0 4 402 390 401 415
		f 4 -347 746 366 -748
		mu 0 4 72 81 73 62
		f 4 -348 747 367 -749
		mu 0 4 71 72 62 61
		f 4 -349 748 368 -750
		mu 0 4 82 71 61 74
		f 4 -350 749 369 -751
		mu 0 4 89 82 74 83
		f 4 -351 750 370 -752
		mu 0 4 94 89 83 90
		f 4 -352 751 371 -753
		mu 0 4 97 94 90 95
		f 4 -353 752 372 -754
		mu 0 4 423 429 434 430
		f 4 -354 753 373 -755
		mu 0 4 412 423 430 424
		f 4 -355 754 374 -756
		mu 0 4 400 412 424 413
		f 4 -356 755 375 -757
		mu 0 4 388 400 413 414
		f 4 -357 756 376 -758
		mu 0 4 45 48 46 41
		f 4 -358 757 377 -759
		mu 0 4 40 45 41 34
		f 4 -359 758 378 -760
		mu 0 4 32 40 34 24
		f 4 -360 759 379 -741
		mu 0 4 23 32 24 13
		f 4 -361 760 380 -762
		mu 0 4 12 13 5 4
		f 4 -362 761 381 -763
		mu 0 4 25 12 4 15
		f 4 -363 762 382 -764
		mu 0 4 446 447 441 440
		f 4 -364 763 383 -765
		mu 0 4 452 446 440 448
		f 4 -365 764 384 -766
		mu 0 4 457 452 448 453
		f 4 -366 765 385 -767
		mu 0 4 460 457 453 458
		f 4 -367 766 386 -768
		mu 0 4 62 73 63 54
		f 4 -368 767 387 -769
		mu 0 4 61 62 54 53
		f 4 -369 768 388 -770
		mu 0 4 74 61 53 64
		f 4 -370 769 389 -771
		mu 0 4 83 74 64 75
		f 4 -371 770 390 -772
		mu 0 4 90 83 75 84
		f 4 -372 771 391 -773
		mu 0 4 95 90 84 91
		f 4 -373 772 392 -774
		mu 0 4 471 472 466 465
		f 4 -374 773 393 -775
		mu 0 4 477 471 465 473
		f 4 -375 774 394 -776
		mu 0 4 482 477 473 478
		f 4 -376 775 395 -777
		mu 0 4 485 482 478 483
		f 4 -377 776 396 -778
		mu 0 4 41 46 42 35
		f 4 -378 777 397 -779
		mu 0 4 34 41 35 26
		f 4 -379 778 398 -780
		mu 0 4 24 34 26 14
		f 4 -380 779 399 -761
		mu 0 4 13 24 14 5
		f 4 -381 780 0 -782
		mu 0 4 4 5 1 0
		f 4 -382 781 1 -783
		mu 0 4 15 4 0 10
		f 4 -383 782 2 -784
		mu 0 4 440 441 437 436
		f 4 -384 783 3 -785
		mu 0 4 448 440 436 444
		f 4 -385 784 4 -786
		mu 0 4 453 448 444 450
		f 4 -386 785 5 -787
		mu 0 4 458 453 450 455
		f 4 -387 786 6 -788
		mu 0 4 54 63 55 50
		f 4 -388 787 7 -789
		mu 0 4 53 54 50 49
		f 4 -389 788 8 -790
		mu 0 4 64 53 49 59
		f 4 -390 789 9 -791
		mu 0 4 75 64 59 69
		f 4 -391 790 10 -792
		mu 0 4 84 75 69 79
		f 4 -392 791 11 -793
		mu 0 4 91 84 79 87
		f 4 -393 792 12 -794
		mu 0 4 465 466 462 461
		f 4 -394 793 13 -795
		mu 0 4 473 465 461 469
		f 4 -395 794 14 -796
		mu 0 4 478 473 469 475
		f 4 -396 795 15 -797
		mu 0 4 483 478 475 480
		f 4 -397 796 16 -798
		mu 0 4 35 42 36 27
		f 4 -398 797 17 -799
		mu 0 4 26 35 27 16
		f 4 -399 798 18 -800
		mu 0 4 14 26 16 6
		f 4 -400 799 19 -781
		mu 0 4 5 14 6 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder2" -p "Mesh";
	rename -uid "0460A12C-4719-22C7-3375-8E82627358A8";
	setAttr ".t" -type "double3" 0 1.3835644398196263 0.00176270730651229 ;
	setAttr ".s" -type "double3" 1 0.42855026936148383 1 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "4C4C689B-4C22-5E94-669F-C097E7F0FC58";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[20:39]" "vtx[41]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[40:59]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".pv" -type "double2" 0.86275563416709655 0.23794283328584323 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.63990378 0.17533553
		 0.63990378 0.16846791 0.68430847 0.16846797 0.68430841 0.17533553 0.63994348 0.16195557
		 0.68434769 0.16210376 0.63990378 0.18294832 0.68430847 0.18294832 0.63990378 0.19056115
		 0.68430847 0.19056113 0.63990378 0.1974287 0.68430841 0.19742875 0.63990378 0.2028788
		 0.68430841 0.20287879 0.64006126 0.12561896 0.64006126 0.11875135 0.68446594 0.11875135
		 0.68446594 0.12561896 0.64006126 0.11113863 0.68446594 0.11113863 0.64010072 0.13150117
		 0.68450499 0.1316493 0.64006126 0.10352584 0.68446594 0.10352583 0.64006126 0.096658222
		 0.68446594 0.09665823 0.64008099 0.090137966 0.68448555 0.090137973 0.88768482 0.21983062
		 0.89206183 0.22842066 0.8627556 0.23794281 0.89356995 0.23794281 0.88086784 0.21301356
		 0.89206195 0.24746504 0.87227774 0.20863669 0.88768482 0.25605512 0.8627556 0.20712848
		 0.88086784 0.26287213 0.85323346 0.20863669 0.87227774 0.26724902 0.84464335 0.21301356
		 0.8627556 0.26875719 0.83782631 0.2198305 0.85323346 0.26724902 0.83344948 0.22842066
		 0.84464335 0.26287213 0.83194137 0.23794281 0.83782631 0.25605512 0.83344948 0.24746504
		 0.97313118 0.25061601 0.96861029 0.25948846 0.94286126 0.24078077 0.96156919 0.26652974
		 0.97468853 0.24078077 0.9526965 0.27105051 0.97313094 0.23094559 0.94286126 0.27260828
		 0.96861023 0.22207302 0.93302596 0.27105051 0.96156883 0.2150318 0.92415351 0.26652974
		 0.95269656 0.21051103 0.91711223 0.25948846 0.94286126 0.20895332 0.91259152 0.25061595
		 0.93302596 0.21051103 0.91103375 0.24078077 0.92415351 0.2150318 0.91259152 0.23094559
		 0.91711229 0.22207302 0.64002043 0.15402599 0.68442428 0.15432225 0.64006168 0.1464133
		 0.68446541 0.14670956 0.64010298 0.13880068 0.68450677 0.13909699 0.64010066 0.082200296
		 0.68450511 0.082200319 0.64010066 0.074587457 0.68450511 0.074587524 0.64010066 0.066974737
		 0.68450511 0.066974729 0.64010066 0.060107164 0.68450511 0.060107172;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 0 1 2 3
		f 4 1 42 -22 -42
		mu 0 4 1 4 5 2
		f 4 2 43 -23 -43
		mu 0 4 4 70 71 5
		f 4 3 44 -24 -44
		mu 0 4 70 72 73 71
		f 4 4 45 -25 -45
		mu 0 4 72 74 75 73
		f 4 5 46 -26 -46
		mu 0 4 74 20 21 75
		f 4 6 47 -27 -47
		mu 0 4 20 14 17 21
		f 4 7 48 -28 -48
		mu 0 4 14 15 16 17
		f 4 8 49 -29 -49
		mu 0 4 15 18 19 16
		f 4 9 50 -30 -50
		mu 0 4 18 22 23 19
		f 4 10 51 -31 -51
		mu 0 4 22 24 25 23
		f 4 11 52 -32 -52
		mu 0 4 24 26 27 25
		f 4 12 53 -33 -53
		mu 0 4 26 76 77 27
		f 4 13 54 -34 -54
		mu 0 4 76 78 79 77
		f 4 14 55 -35 -55
		mu 0 4 78 80 81 79
		f 4 15 56 -36 -56
		mu 0 4 80 82 83 81
		f 4 16 57 -37 -57
		mu 0 4 12 10 11 13
		f 4 17 58 -38 -58
		mu 0 4 10 8 9 11
		f 4 18 59 -39 -59
		mu 0 4 8 6 7 9
		f 4 19 40 -40 -60
		mu 0 4 6 0 3 7
		f 3 -1 -61 61
		mu 0 3 28 29 30
		f 3 -2 -62 62
		mu 0 3 32 28 30
		f 3 -3 -63 63
		mu 0 3 34 32 30
		f 3 -4 -64 64
		mu 0 3 36 34 30
		f 3 -5 -65 65
		mu 0 3 38 36 30
		f 3 -6 -66 66
		mu 0 3 40 38 30
		f 3 -7 -67 67
		mu 0 3 42 40 30
		f 3 -8 -68 68
		mu 0 3 44 42 30
		f 3 -9 -69 69
		mu 0 3 46 44 30
		f 3 -10 -70 70
		mu 0 3 48 46 30
		f 3 -11 -71 71
		mu 0 3 47 48 30
		f 3 -12 -72 72
		mu 0 3 45 47 30
		f 3 -13 -73 73
		mu 0 3 43 45 30
		f 3 -14 -74 74
		mu 0 3 41 43 30
		f 3 -15 -75 75
		mu 0 3 39 41 30
		f 3 -16 -76 76
		mu 0 3 37 39 30
		f 3 -17 -77 77
		mu 0 3 35 37 30
		f 3 -18 -78 78
		mu 0 3 33 35 30
		f 3 -19 -79 79
		mu 0 3 31 33 30
		f 3 -20 -80 60
		mu 0 3 29 31 30
		f 3 20 81 -81
		mu 0 3 49 50 51
		f 3 21 82 -82
		mu 0 3 50 52 51
		f 3 22 83 -83
		mu 0 3 52 54 51
		f 3 23 84 -84
		mu 0 3 54 56 51
		f 3 24 85 -85
		mu 0 3 56 58 51
		f 3 25 86 -86
		mu 0 3 58 60 51
		f 3 26 87 -87
		mu 0 3 60 62 51
		f 3 27 88 -88
		mu 0 3 62 64 51
		f 3 28 89 -89
		mu 0 3 64 66 51
		f 3 29 90 -90
		mu 0 3 66 68 51
		f 3 30 91 -91
		mu 0 3 68 69 51
		f 3 31 92 -92
		mu 0 3 69 67 51
		f 3 32 93 -93
		mu 0 3 67 65 51
		f 3 33 94 -94
		mu 0 3 65 63 51
		f 3 34 95 -95
		mu 0 3 63 61 51
		f 3 35 96 -96
		mu 0 3 61 59 51
		f 3 36 97 -97
		mu 0 3 59 57 51
		f 3 37 98 -98
		mu 0 3 57 55 51
		f 3 38 99 -99
		mu 0 3 55 53 51
		f 3 39 80 -100
		mu 0 3 53 49 51;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 6 
		4 0 
		5 0 
		20 0 
		21 0 
		26 0 
		27 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface2" -p "Mesh";
	rename -uid "AAE3CCC1-483F-5264-C086-2587392B6015";
	setAttr ".rp" -type "double3" 0 0.6979999882536212 0 ;
	setAttr ".sp" -type "double3" 0 0.6979999882536212 0 ;
createNode mesh -n "polySurfaceShape5" -p "polySurface2";
	rename -uid "7B126A65-4F14-92D5-8EB0-DEBDB4FF3E84";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 7 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[1]" "f[15]" "f[19]";
	setAttr ".gtag[1].gtagnm" -type "string" "booleanIntersection";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "e[15:16]" "e[29]" "e[37]";
	setAttr ".gtag[2].gtagnm" -type "string" "bottom";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0]" "f[3]" "f[13]";
	setAttr ".gtag[3].gtagnm" -type "string" "front";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[6]" "f[9:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "left";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[2]" "f[14]" "f[17]";
	setAttr ".gtag[5].gtagnm" -type "string" "right";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[5]" "f[7]" "f[12]";
	setAttr ".gtag[6].gtagnm" -type "string" "top";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 4 "f[4]" "f[8]" "f[16]" "f[18]";
	setAttr ".pv" -type "double2" 0.86296474933624268 0.8984796404838562 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.64899266 0.78121293
		 0.58602691 0.78049469 0.58361971 0.76000696 0.64851832 0.76060575 0.5861243 0.67114908
		 0.64909387 0.67114908 0.64856672 0.69150549 0.58361042 0.69126576 0.45968777 0.80861777
		 0.69394732 0.80819148 0.6936152 0.81803292 0.46015254 0.81908268 0.46832836 0.82569528
		 0.6858092 0.82430679 0.80744171 0.57546109 0.80744171 0.62901932 0.79051161 0.62929267
		 0.79059148 0.5735479 0.71614778 0.63018483 0.71602237 0.57662696 0.73291647 0.57406157
		 0.73290014 0.629942 0.69314456 0.98930442 0.46330705 0.99185508 0.46282601 0.98145652
		 0.69414008 0.97935891 0.47077841 0.97510469 0.68617308 0.9727143 0.98773503 0.80449116
		 0.98930037 0.98154569 0.72971761 0.98384082 0.72815228 0.80678624 0.59443396 0.96135223
		 0.59408641 0.93003058 0.56276512 0.9303782 0.56311274 0.96169984 0.56209296 0.86981523
		 0.59341419 0.86946785 0.59306657 0.83814621 0.56174541 0.83849382 0.66769224 0.69452864
		 0.66730654 0.75749713 0.56177843 0.75638419 0.56194484 0.69341457 0.45285815 0.97729856
		 0.4509505 0.82271707 0.73535395 0.5548895 0.78891158 0.55509871 0.78863019 0.64703035
		 0.73507309 0.64736664 0.70235449 0.82171816 0.70451379 0.97635758;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".vt[0:27]"  -3.3893311 0.41744453 -4.96915483 3.3893311 0.41744453 -4.96915483
		 3.3893311 0.41744453 4.96915483 -3.3893311 0.41744453 4.96915483 2.67272043 0.97855568 -0.68647659
		 1.29976737 0.97855568 -0.68647659 1.29976737 0.59881079 -0.68647659 2.67272043 0.59881079 -0.68647659
		 1.29976737 0.97855568 0.68647659 1.29976737 0.59881079 0.68647659 2.67272043 0.59881079 0.68647659
		 -3.10880351 0.97855568 4.68862724 3.10880351 0.97855568 4.68862724 3.10880351 0.97855568 -4.68862724
		 -3.10880351 0.97855568 -4.68862724 -2.72788382 0.97855568 -0.68647659 -1.35493076 0.97855568 -0.68647659
		 -1.35493076 0.97855568 0.68647659 2.67272043 0.97855568 0.68647659 3.3893311 0.69802809 -4.96915483
		 3.3893311 0.69802809 4.96915483 -3.3893311 0.69802809 4.96915483 -2.72788382 0.97855568 0.68647659
		 -1.35493076 0.59881079 0.68647659 -2.72788382 0.59881079 0.68647659 -1.35493076 0.59881079 -0.68647659
		 -2.72788382 0.59881079 -0.68647659 -3.3893311 0.69802809 -4.96915483;
	setAttr -s 44 ".ed[0:43]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 5 8 0 8 9 0 9 6 0 9 10 0 10 7 0 11 12 0 13 14 0 15 16 0 16 17 0 18 4 0 10 18 0
		 8 18 0 1 19 0 19 20 0 20 2 0 12 20 0 19 13 0 13 12 0 20 21 0 21 3 0 11 21 0 22 17 0
		 17 23 0 23 24 0 24 22 0 16 25 0 25 23 0 26 24 0 25 26 0 15 22 0 26 15 0 14 11 0 14 27 0
		 27 21 0 27 0 0 19 27 0;
	setAttr -s 20 -ch 88 ".fc[0:19]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 28 29 30 31
		f 4 4 5 6 7
		mu 0 4 40 41 3 6
		f 4 8 9 10 -6
		mu 0 4 0 1 2 3
		f 4 -11 11 12 -7
		mu 0 4 3 2 7 6
		f 4 13 -26 14 39
		mu 0 4 26 12 13 27
		h 4 15 16 -30 -38
		mu 0 4 32 33 34 35
		h 4 -9 -5 -18 -20
		mu 0 4 36 37 38 39
		f 4 17 -8 -13 18
		mu 0 4 4 5 6 7
		f 4 19 -19 -12 -10
		mu 0 4 42 43 7 2
		f 4 -2 20 21 22
		mu 0 4 8 9 10 11
		f 4 23 -22 24 25
		mu 0 4 12 11 10 13
		f 4 -3 -23 26 27
		mu 0 4 44 45 11 24
		f 4 28 -27 -24 -14
		mu 0 4 26 24 11 12
		f 4 29 30 31 32
		mu 0 4 46 47 17 20
		f 4 -17 33 34 -31
		mu 0 4 14 15 16 17
		f 4 35 -32 -35 36
		mu 0 4 21 20 17 16
		f 4 37 -33 -36 38
		mu 0 4 18 19 20 21
		f 4 -16 -39 -37 -34
		mu 0 4 48 49 21 16
		f 4 -29 -40 40 41
		mu 0 4 24 26 27 25
		f 4 -4 -28 -42 42
		mu 0 4 22 23 24 25
		f 4 -41 -15 -25 43
		mu 0 4 25 27 13 10
		f 4 -44 -21 -1 -43
		mu 0 4 25 10 50 51;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 16 
		2 0 
		3 0 
		6 0 
		7 0 
		10 0 
		11 0 
		12 0 
		13 0 
		16 0 
		17 0 
		20 0 
		21 0 
		24 0 
		25 0 
		26 0 
		27 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface5" -p "Mesh";
	rename -uid "CB434E60-471C-81D3-85E2-189F99309DAD";
	setAttr ".rp" -type "double3" 0 1.6066868082506289 -2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 0 1.6066868082506351 -2.7443325389953088e-15 ;
createNode mesh -n "polySurfaceShape8" -p "polySurface5";
	rename -uid "85BBBE42-421C-D9E2-5E44-F4B650EC9459";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 7 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 9 "f[7]" "f[11:12]" "f[17]" "f[21]" "f[23:24]" "f[26:27]" "f[30:31]" "f[34]" "f[37:43]";
	setAttr ".gtag[1].gtagnm" -type "string" "booleanIntersection";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 4 "e[46]" "e[64]" "e[69]" "e[80]";
	setAttr ".gtag[2].gtagnm" -type "string" "bottom";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "f[6]" "f[9]" "f[15]" "f[20]" "f[25]";
	setAttr ".gtag[3].gtagnm" -type "string" "front";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 5 "f[0:5]" "f[8]" "f[13:14]" "f[29]" "f[33]";
	setAttr ".gtag[4].gtagnm" -type "string" "left";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[10]" "f[32]";
	setAttr ".gtag[5].gtagnm" -type "string" "right";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[18]" "f[28]";
	setAttr ".gtag[6].gtagnm" -type "string" "top";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 4 "f[16]" "f[19]" "f[22]" "f[35:36]";
	setAttr ".pv" -type "double2" 0.49054556811761951 0.72662985324859619 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 108 ".uvst[0].uvsp[0:107]" -type "float2" 0.33612269 0.51146162
		 0.3942486 0.51151788 0.39420319 0.55850214 0.33607697 0.55844587 0.39425629 0.50359076
		 0.33613011 0.50353462 0.40217561 0.51152551 0.40213019 0.55850959 0.39419544 0.5664292
		 0.33606935 0.56637299 0.098703668 0.5430693 0.098655313 0.5229342 0.17488599 0.53920901
		 0.30756348 0.54544061 0.30727577 0.52115691 0.17478313 0.5305317 0.10011896 0.51355964
		 0.10086212 0.55220473 0.053872347 0.50815588 0.093211219 0.51478541 0.093775123 0.55161393
		 0.053822801 0.55927646 0.39422256 0.47461703 0.33478132 0.47482932 0.33460951 0.42678189
		 0.39405096 0.42656937 0.39425153 0.48272341 0.3348099 0.48293585 0.092040703 0.44259429
		 0.091954559 0.46330529 0.30525535 0.46499157 0.3054851 0.44015753 0.16982123 0.44688362
		 0.16973883 0.45575792 0.39402196 0.41846305 0.33458048 0.41867542 0.40232891 0.47458801
		 0.40215725 0.42654043 0.094306394 0.4725911 0.093776345 0.43308198 0.086648345 0.43407544
		 0.087015197 0.47203955 0.046150953 0.47896227 0.045964137 0.42668438 0.085461795
		 0.93320364 0.37895113 0.94945008 0.37907574 0.96835995 0.085715175 0.98612142 0.084265471
		 0.83701622 0.40344691 0.85406333 0.40352479 0.87463027 0.084335685 0.8945719 0.4403564
		 0.67666149 0.54073471 0.67666149 0.54073471 0.77703094 0.4403564 0.77703094 0.4403564
		 0.65951079 0.54073471 0.65951079 0.4403564 0.79374886 0.54073471 0.79374886 0.057410479
		 0.98581648 0.057113588 0.9328987 0.055317581 0.89396608 0.055563629 0.83640975 0.38914078
		 0.94957477 0.38928303 0.96848464 0.40828496 0.85393798 0.40833643 0.874506 0.69459641
		 0.35525954 0.69459641 0.3022674 0.74758422 0.3022674 0.74758422 0.35525954 0.3470467
		 0.39596862 0.34669584 0.34587011 0.40866941 0.34543592 0.40902025 0.39553452 0.094391644
		 0.3811444 0.09427321 0.36423156 0.088483661 0.3545962 0.088737667 0.39085984 0.046057999
		 0.40028203 0.045676112 0.34577298 0.4048633 0.26786557 0.40540251 0.31753218 0.34396315
		 0.31819898 0.34342408 0.26853257 0.093845427 0.30446553 0.093663424 0.28769165 0.087884575
		 0.27817082 0.088274419 0.3141095 0.045737207 0.32362252 0.045150667 0.26958346 0.69721794
		 0.7867378 0.68857729 0.65519428 0.70063615 0.65519428 0.70063615 0.7867378 0.75172758
		 0.65709162 0.74589527 0.78765714 0.74249983 0.78772843 0.73975497 0.65734375 0.7763114
		 0.65917587 0.76796329 0.78626454 0.76633149 0.78626454 0.76633149 0.65917587 0.72117531
		 0.78864622 0.71699822 0.65801752 0.72725368 0.65836334 0.7228564 0.78870308;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 52 ".vt[0:51]"  -0.46240288 2.93351197 -0.63549244 -0.46240288 2.77949548 -0.47747606
		 -0.61843199 2.93551207 -0.47947618 0.61843199 2.93551207 -0.47947618 0.46240288 2.77949548 -0.47747606
		 0.46240288 2.93351197 -0.63549244 -0.61843199 2.94736695 0.44525352 -0.46240288 2.7913506 0.44725361
		 -0.46240288 2.94936705 0.60126984 0.46240288 2.94936705 0.60126984 0.46240288 2.7913506 0.44725361
		 0.61843199 2.94736695 0.44525352 -0.61843199 4.079529762 -0.4941406 -0.46240121 4.077529907 -0.65015852
		 -0.31216314 8.7413168 -0.27812994 0.46240121 4.077529907 -0.65015852 -0.61843199 4.091384888 0.43058571
		 0.15610059 8.73931885 -0.43411613 0.61843199 4.079529762 -0.4941406 -0.15616742 8.74732208 0.19015843
		 -0.46240121 4.093384266 0.58660376 -0.15610059 8.73931885 -0.43411613 0.31216314 8.74532127 0.034105398
		 0.46240121 4.093384266 0.58660376 0.61843199 4.091384888 0.43058571 -0.31216314 8.74532127 0.034105398
		 0.31216314 8.7413168 -0.27812994 -0.58111566 4.64955235 -0.31004968 -0.58151853 4.64955235 0.16796634
		 -0.34186375 4.64955235 0.16796634 -0.34186375 4.64955235 -0.31004968 0.15616742 8.74732208 0.19015843
		 -0.33470628 8.84494209 -0.45665738 0.33470628 8.84494209 -0.45665738 -0.3345938 8.85299301 0.21258721
		 0.58151853 4.64955235 0.16796634 0.58111566 4.64955235 -0.31004968 0.37616661 4.64955235 -0.31004968
		 0.37616661 4.64955235 0.16796634 0.3345938 8.85299301 0.21258721 -0.40967932 7.25944328 -0.15644869
		 -0.34186375 7.25944328 -0.15644869 -0.34186375 7.25944328 0.014365323 -0.4098233 7.25944328 0.014365323
		 0.40967932 7.25944328 -0.15644869 0.37616661 7.25944328 -0.15644869 0.37616661 7.25944328 0.014365323
		 0.4098233 7.25944328 0.014365323 -0.50311047 9.64687729 0.38108996 0.50311047 9.64687729 0.38108996
		 0.50311047 9.63397884 -0.62504786 -0.50311047 9.63397884 -0.62504786;
	setAttr -s 92 ".ed[0:91]"  0 1 0 1 2 0 2 0 0 3 4 0 4 5 0 5 3 0 6 7 0
		 7 8 0 8 6 0 9 10 0 10 11 0 11 9 0 0 5 0 4 1 0 1 7 0 6 2 0 2 12 0 12 13 1 13 0 0 12 14 0
		 4 10 0 10 7 0 13 15 1 15 5 0 6 16 0 16 12 1 18 15 1 15 17 0 16 20 1 20 19 0 3 11 0
		 9 8 0 18 3 0 8 20 0 21 13 0 14 21 0 23 24 1 24 22 0 25 16 0 19 25 0 26 18 0 17 26 0
		 18 24 1 24 11 0 9 23 0 23 20 1 27 28 0 28 29 0 29 30 0 30 27 0 31 23 0 22 31 0 32 21 0
		 14 32 0 33 26 0 17 33 0 34 25 0 19 34 0 35 36 0 36 37 0 37 38 0 38 35 0 39 31 0 22 39 0
		 40 27 0 30 41 0 41 40 0 29 42 0 42 41 0 28 43 0 43 42 0 21 17 1 36 44 0 44 45 0 45 37 0
		 45 46 0 46 38 0 47 35 0 46 47 0 31 19 1 43 40 0 44 47 0 48 49 0 49 50 0 50 51 0 51 48 0
		 25 14 1 26 22 1 32 51 0 50 33 0 34 48 0 49 39 0;
	setAttr -s 44 -ch 184 ".fc[0:43]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 4 6 1
		f 3 3 4 5
		mu 0 3 22 36 26
		f 3 6 7 8
		mu 0 3 2 7 8
		f 3 9 10 11
		mu 0 3 34 37 25
		f 4 -1 12 -5 13
		mu 0 4 52 56 57 53
		f 4 -2 14 -7 15
		mu 0 4 1 6 7 2
		f 4 -3 16 17 18
		mu 0 4 4 1 0 5
		f 4 -18 19 35 34
		mu 0 4 5 0 11 16
		f 4 -14 20 21 -15
		mu 0 4 52 53 54 55
		f 4 22 23 -13 -19
		mu 0 4 72 73 74 75
		f 4 -17 -16 24 25
		mu 0 4 0 1 2 3
		f 4 26 27 41 40
		mu 0 4 23 27 38 29
		f 4 28 29 39 38
		mu 0 4 3 9 17 10
		f 4 -4 30 -11 -21
		mu 0 4 36 22 25 37
		f 4 -8 -22 -10 31
		mu 0 4 58 55 54 59
		f 4 -6 -24 -27 32
		mu 0 4 22 26 27 23
		f 4 -9 33 -29 -25
		mu 0 4 2 8 9 3
		f 4 36 37 51 50
		mu 0 4 35 24 28 39
		f 4 -33 42 43 -31
		mu 0 4 22 23 24 25
		f 4 -32 44 45 -34
		mu 0 4 82 83 84 85
		f 4 46 47 48 49
		mu 0 4 60 61 44 47
		f 3 52 -36 53
		mu 0 3 19 16 11
		f 4 -12 -44 -37 -45
		mu 0 4 34 25 24 35
		f 3 54 -42 55
		mu 0 3 41 29 38
		f 3 56 -40 57
		mu 0 3 20 10 17
		f 4 58 59 60 61
		mu 0 4 62 63 48 51
		f 3 62 -52 63
		mu 0 3 40 39 28
		f 4 64 -50 65 66
		mu 0 4 92 93 94 95
		f 4 67 68 -66 -49
		mu 0 4 44 45 46 47
		f 4 69 70 -68 -48
		mu 0 4 96 97 98 99
		f 4 -23 -35 71 -28
		mu 0 4 73 72 76 77
		f 4 72 73 74 -60
		mu 0 4 100 101 102 103
		f 4 -75 75 76 -61
		mu 0 4 48 49 50 51
		f 4 77 -62 -77 78
		mu 0 4 104 105 106 107
		f 4 -46 -51 79 -30
		mu 0 4 85 84 86 87
		f 4 80 -67 -69 -71
		mu 0 4 64 65 46 45
		f 4 81 -79 -76 -74
		mu 0 4 66 67 50 49
		f 4 82 83 84 85
		mu 0 4 68 69 70 71
		f 4 -26 -39 86 -20
		mu 0 4 0 3 10 11
		h 4 -70 -47 -65 -81
		mu 0 4 12 13 14 15
		f 4 -38 -43 -41 87
		mu 0 4 28 24 23 29
		h 4 -59 -78 -82 -73
		mu 0 4 30 31 32 33
		f 6 -56 -72 -53 88 -85 89
		mu 0 6 78 77 76 79 80 81
		f 6 -89 -54 -87 -57 90 -86
		mu 0 6 18 19 11 10 20 21
		f 6 -64 -88 -55 -90 -84 91
		mu 0 6 40 28 29 41 42 43
		f 6 -58 -80 -63 -92 -83 -91
		mu 0 6 88 87 86 89 90 91;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 20 
		10 0 
		11 0 
		16 0 
		17 0 
		19 0 
		20 0 
		28 0 
		29 0 
		38 0 
		39 0 
		40 0 
		41 0 
		44 0 
		45 0 
		46 0 
		47 0 
		48 0 
		49 0 
		50 0 
		51 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder3" -p "Mesh";
	rename -uid "7A4BDD96-4B4F-41BB-D81D-B987C7353DE9";
	setAttr ".t" -type "double3" -0.19779982191988876 10.652686550093405 -1.9998236431146841 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.17417772921662866 0.34513352552160664 0.17417772921662866 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "40E2374B-43AF-230A-B043-41A619049F4D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[20:39]" "vtx[41]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[40:59]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".pv" -type "double2" 0.8329826295375824 0.10149265413259551 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.90302491 0.09405648
		 0.89199519 0.094153635 0.89129853 0.015022963 0.90232825 0.014925957 0.88268697 0.094189636
		 0.88183469 0.015060753 0.91525149 0.093948834 0.9145546 0.014818311 0.92747772 0.093841203
		 0.926781 0.014710635 0.9385072 0.093744092 0.9378106 0.014613509 0.94726026 0.093667038
		 0.94656378 0.0145365 0.82508659 0.094742693 0.81405711 0.094839789 0.81336039 0.015709132
		 0.82439005 0.015612096 0.80183077 0.094947435 0.80113411 0.015816838 0.83473074 0.094703309
		 0.8338784 0.015574366 0.78960437 0.095055066 0.78890777 0.015924454 0.77857482 0.095152162
		 0.77787817 0.01602155 0.76784867 0.095462061 0.76715201 0.016331464 0.30688289 0.20468333
		 0.3116276 0.21399528 0.27985886 0.22431752 0.31326246 0.22431752 0.29949299 0.1972934
		 0.3116276 0.23463979 0.29018116 0.19254874 0.30688292 0.24395171 0.27985886 0.19091389
		 0.29949296 0.25134161 0.26953655 0.19254874 0.29018116 0.25608623 0.2602247 0.1972934
		 0.27985886 0.25772113 0.2528348 0.20468333 0.26953655 0.25608623 0.24809009 0.21399528
		 0.2602247 0.25134161 0.24645525 0.22431752 0.2528348 0.24395171 0.24809009 0.23463979
		 0.38509405 0.23410952 0.38054073 0.24304605 0.35460585 0.22420347 0.37344861 0.25013816
		 0.38666293 0.22420347 0.364512 0.25469142 0.38509393 0.21429724 0.35460585 0.25626057
		 0.38054073 0.20536065 0.34469974 0.25469142 0.37344861 0.19826871 0.33576313 0.25013816
		 0.36451203 0.19371527 0.32867107 0.24304605 0.35460585 0.1921463 0.32411778 0.23410952
		 0.34469974 0.19371527 0.32254875 0.22420347 0.33576316 0.19826871 0.32411778 0.21429724
		 0.32867107 0.20536065 0.87110233 0.094289139 0.87009442 0.015161932 0.85887647 0.094444782
		 0.85786855 0.015317619 0.8466506 0.094600737 0.84564269 0.015473217 0.75484598 0.095791936
		 0.75414938 0.016661376 0.74261969 0.095899597 0.74192315 0.016768992 0.73039329 0.096007228
		 0.72969675 0.016876638 0.71936393 0.096104324 0.71866715 0.016973794;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 0 1 2 3
		f 4 1 42 -22 -42
		mu 0 4 1 4 5 2
		f 4 2 43 -23 -43
		mu 0 4 4 70 71 5
		f 4 3 44 -24 -44
		mu 0 4 70 72 73 71
		f 4 4 45 -25 -45
		mu 0 4 72 74 75 73
		f 4 5 46 -26 -46
		mu 0 4 74 20 21 75
		f 4 6 47 -27 -47
		mu 0 4 20 14 17 21
		f 4 7 48 -28 -48
		mu 0 4 14 15 16 17
		f 4 8 49 -29 -49
		mu 0 4 15 18 19 16
		f 4 9 50 -30 -50
		mu 0 4 18 22 23 19
		f 4 10 51 -31 -51
		mu 0 4 22 24 25 23
		f 4 11 52 -32 -52
		mu 0 4 24 26 27 25
		f 4 12 53 -33 -53
		mu 0 4 26 76 77 27
		f 4 13 54 -34 -54
		mu 0 4 76 78 79 77
		f 4 14 55 -35 -55
		mu 0 4 78 80 81 79
		f 4 15 56 -36 -56
		mu 0 4 80 82 83 81
		f 4 16 57 -37 -57
		mu 0 4 12 10 11 13
		f 4 17 58 -38 -58
		mu 0 4 10 8 9 11
		f 4 18 59 -39 -59
		mu 0 4 8 6 7 9
		f 4 19 40 -40 -60
		mu 0 4 6 0 3 7
		f 3 -1 -61 61
		mu 0 3 28 29 30
		f 3 -2 -62 62
		mu 0 3 32 28 30
		f 3 -3 -63 63
		mu 0 3 34 32 30
		f 3 -4 -64 64
		mu 0 3 36 34 30
		f 3 -5 -65 65
		mu 0 3 38 36 30
		f 3 -6 -66 66
		mu 0 3 40 38 30
		f 3 -7 -67 67
		mu 0 3 42 40 30
		f 3 -8 -68 68
		mu 0 3 44 42 30
		f 3 -9 -69 69
		mu 0 3 46 44 30
		f 3 -10 -70 70
		mu 0 3 48 46 30
		f 3 -11 -71 71
		mu 0 3 47 48 30
		f 3 -12 -72 72
		mu 0 3 45 47 30
		f 3 -13 -73 73
		mu 0 3 43 45 30
		f 3 -14 -74 74
		mu 0 3 41 43 30
		f 3 -15 -75 75
		mu 0 3 39 41 30
		f 3 -16 -76 76
		mu 0 3 37 39 30
		f 3 -17 -77 77
		mu 0 3 35 37 30
		f 3 -18 -78 78
		mu 0 3 33 35 30
		f 3 -19 -79 79
		mu 0 3 31 33 30
		f 3 -20 -80 60
		mu 0 3 29 31 30
		f 3 20 81 -81
		mu 0 3 49 50 51
		f 3 21 82 -82
		mu 0 3 50 52 51
		f 3 22 83 -83
		mu 0 3 52 54 51
		f 3 23 84 -84
		mu 0 3 54 56 51
		f 3 24 85 -85
		mu 0 3 56 58 51
		f 3 25 86 -86
		mu 0 3 58 60 51
		f 3 26 87 -87
		mu 0 3 60 62 51
		f 3 27 88 -88
		mu 0 3 62 64 51
		f 3 28 89 -89
		mu 0 3 64 66 51
		f 3 29 90 -90
		mu 0 3 66 68 51
		f 3 30 91 -91
		mu 0 3 68 69 51
		f 3 31 92 -92
		mu 0 3 69 67 51
		f 3 32 93 -93
		mu 0 3 67 65 51
		f 3 33 94 -94
		mu 0 3 65 63 51
		f 3 34 95 -95
		mu 0 3 63 61 51
		f 3 35 96 -96
		mu 0 3 61 59 51
		f 3 36 97 -97
		mu 0 3 59 57 51
		f 3 37 98 -98
		mu 0 3 57 55 51
		f 3 38 99 -99
		mu 0 3 55 53 51
		f 3 39 80 -100
		mu 0 3 53 49 51;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 6 
		4 0 
		5 0 
		20 0 
		21 0 
		26 0 
		27 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder4" -p "Mesh";
	rename -uid "DE82196F-4FB7-CB88-639E-26B0B0F257CF";
	setAttr -av ".v" yes;
	setAttr ".t" -type "double3" 0.19532631827044034 10.652686550093405 -1.9998236431146841 ;
	setAttr -av ".tx";
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	rename -uid "8ACDB8C6-4703-5718-9881-95913A457BF4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[20:39]" "vtx[41]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[40:59]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".pv" -type "double2" 0.62553308398586038 0.23928509441214041 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.90346378 0.18548192
		 0.89253402 0.18570083 0.89096332 0.10728754 0.90189308 0.10706863 0.88317132 0.18592516
		 0.88172626 0.10750955 0.91557944 0.18523924 0.9140085 0.10682589 0.9276948 0.18499663
		 0.92612422 0.10658327 0.9386245 0.18477771 0.9370538 0.10636434 0.94729811 0.18460387
		 0.94572747 0.10619053 0.82623202 0.18702894 0.81530237 0.18724786 0.81373185 0.10883451
		 0.82466137 0.10861558 0.80318689 0.18749055 0.80161625 0.10907719 0.83564764 0.18680331
		 0.83420247 0.10838771 0.79107141 0.1877332 0.78950077 0.10931987 0.78014195 0.18795215
		 0.77857125 0.10953879 0.76986802 0.18782571 0.76829737 0.10941245 0.45000476 0.20479059
		 0.45445499 0.21352503 0.42465669 0.22320721 0.45598879 0.22320721 0.44307321 0.19785894
		 0.45445499 0.23288929 0.43433875 0.19340855 0.45000482 0.2416237 0.42465669 0.19187512
		 0.44307315 0.24855533 0.41497457 0.19340855 0.43433875 0.25300568 0.40624017 0.19785894
		 0.42465669 0.25453925 0.39930832 0.20479059 0.41497457 0.25300568 0.39485806 0.21352503
		 0.40623999 0.24855533 0.39332467 0.22320721 0.3993085 0.2416237 0.39485806 0.23288929
		 0.65515423 0.24890965 0.65073037 0.25759196 0.62553298 0.23928505 0.64384007 0.26448232
		 0.6566788 0.23928505 0.63515759 0.26890624 0.65515435 0.22966051 0.62553298 0.27043074
		 0.65073037 0.22097814 0.61590838 0.26890624 0.64384007 0.21408769 0.60722601 0.26448232
		 0.63515747 0.20966381 0.6003356 0.25759196 0.62553298 0.20813942 0.59591174 0.24890965
		 0.61590838 0.20966381 0.59438735 0.23928505 0.60722595 0.21408769 0.59591174 0.22966051
		 0.6003356 0.22097814 0.87155223 0.18615976 0.87023234 0.10774174 0.85943604 0.18636364
		 0.85811633 0.10794571 0.84731972 0.18656752 0.84600002 0.10814956 0.7573384 0.18774453
		 0.75576782 0.10933125 0.74522287 0.18798721 0.74365222 0.10957392 0.73310739 0.18822987
		 0.73153675 0.1098166 0.72217786 0.1884488 0.72060716 0.11003551;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 0 1 2 3
		f 4 1 42 -22 -42
		mu 0 4 1 4 5 2
		f 4 2 43 -23 -43
		mu 0 4 4 70 71 5
		f 4 3 44 -24 -44
		mu 0 4 70 72 73 71
		f 4 4 45 -25 -45
		mu 0 4 72 74 75 73
		f 4 5 46 -26 -46
		mu 0 4 74 20 21 75
		f 4 6 47 -27 -47
		mu 0 4 20 14 17 21
		f 4 7 48 -28 -48
		mu 0 4 14 15 16 17
		f 4 8 49 -29 -49
		mu 0 4 15 18 19 16
		f 4 9 50 -30 -50
		mu 0 4 18 22 23 19
		f 4 10 51 -31 -51
		mu 0 4 22 24 25 23
		f 4 11 52 -32 -52
		mu 0 4 24 26 27 25
		f 4 12 53 -33 -53
		mu 0 4 26 76 77 27
		f 4 13 54 -34 -54
		mu 0 4 76 78 79 77
		f 4 14 55 -35 -55
		mu 0 4 78 80 81 79
		f 4 15 56 -36 -56
		mu 0 4 80 82 83 81
		f 4 16 57 -37 -57
		mu 0 4 12 10 11 13
		f 4 17 58 -38 -58
		mu 0 4 10 8 9 11
		f 4 18 59 -39 -59
		mu 0 4 8 6 7 9
		f 4 19 40 -40 -60
		mu 0 4 6 0 3 7
		f 3 -1 -61 61
		mu 0 3 28 29 30
		f 3 -2 -62 62
		mu 0 3 32 28 30
		f 3 -3 -63 63
		mu 0 3 34 32 30
		f 3 -4 -64 64
		mu 0 3 36 34 30
		f 3 -5 -65 65
		mu 0 3 38 36 30
		f 3 -6 -66 66
		mu 0 3 40 38 30
		f 3 -7 -67 67
		mu 0 3 42 40 30
		f 3 -8 -68 68
		mu 0 3 44 42 30
		f 3 -9 -69 69
		mu 0 3 46 44 30
		f 3 -10 -70 70
		mu 0 3 48 46 30
		f 3 -11 -71 71
		mu 0 3 47 48 30
		f 3 -12 -72 72
		mu 0 3 45 47 30
		f 3 -13 -73 73
		mu 0 3 43 45 30
		f 3 -14 -74 74
		mu 0 3 41 43 30
		f 3 -15 -75 75
		mu 0 3 39 41 30
		f 3 -16 -76 76
		mu 0 3 37 39 30
		f 3 -17 -77 77
		mu 0 3 35 37 30
		f 3 -18 -78 78
		mu 0 3 33 35 30
		f 3 -19 -79 79
		mu 0 3 31 33 30
		f 3 -20 -80 60
		mu 0 3 29 31 30
		f 3 20 81 -81
		mu 0 3 49 50 51
		f 3 21 82 -82
		mu 0 3 50 52 51
		f 3 22 83 -83
		mu 0 3 52 54 51
		f 3 23 84 -84
		mu 0 3 54 56 51
		f 3 24 85 -85
		mu 0 3 56 58 51
		f 3 25 86 -86
		mu 0 3 58 60 51
		f 3 26 87 -87
		mu 0 3 60 62 51
		f 3 27 88 -88
		mu 0 3 62 64 51
		f 3 28 89 -89
		mu 0 3 64 66 51
		f 3 29 90 -90
		mu 0 3 66 68 51
		f 3 30 91 -91
		mu 0 3 68 69 51
		f 3 31 92 -92
		mu 0 3 69 67 51
		f 3 32 93 -93
		mu 0 3 67 65 51
		f 3 33 94 -94
		mu 0 3 65 63 51
		f 3 34 95 -95
		mu 0 3 63 61 51
		f 3 35 96 -96
		mu 0 3 61 59 51
		f 3 36 97 -97
		mu 0 3 59 57 51
		f 3 37 98 -98
		mu 0 3 57 55 51
		f 3 38 99 -99
		mu 0 3 55 53 51
		f 3 39 80 -100
		mu 0 3 53 49 51;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 6 
		4 0 
		5 0 
		20 0 
		21 0 
		26 0 
		27 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13" -p "Mesh";
	rename -uid "91077E6F-4CA1-214D-E3AE-B29334274DD2";
	setAttr ".t" -type "double3" 0 10.030854167274322 -11.910012178963612 ;
	setAttr ".s" -type "double3" 1.689701294269035 0.78169636023722655 0.95122225367231383 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
	rename -uid "6367F025-409A-2E45-9B95-6BB4444D964F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[1]" "f[8:9]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[0]" "f[6:7]";
	setAttr ".pv" -type "double2" 0.4469804712802446 0.11460565420720542 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.47011936 0.14290452
		 0.42381755 0.14318925 0.42905289 0.12212434 0.46493334 0.12219769 0.46560267 0.14976627
		 0.42827022 0.1500693 0.46503121 0.11263067 0.42915097 0.11251831 0.42903224 0.055997252
		 0.46491277 0.055987954 0.46491739 0.073930025 0.42903689 0.073939234 0.46491045 0.047018647
		 0.42902994 0.047027946 0.46507338 0.083675206 0.42919299 0.083604246 0.46557987 0.17765042
		 0.42824736 0.17797172 0.40067688 0.18219265 0.39170766 0.17804331 0.39170763 0.15046151
		 0.40067679 0.14631213 0.41861895 0.18219265 0.47534201 0.18154997 0.49328414 0.14566946
		 0.50225329 0.1498189 0.50225329 0.17740059 0.49328408 0.18154997;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.5 0.2500267 0.5 -0.38435555 0.50000191 0.5
		 -0.5 0.2500267 -0.5 -0.38435555 0.50000191 -0.5 0.38435555 0.50000191 0.5 0.5 0.2500267 0.5
		 0.5 0.2500267 -0.5 0.38435555 0.50000191 -0.5 -0.38435555 -0.5 0.5 -0.5 -0.25002289 0.5
		 -0.5 -0.25002289 -0.5 -0.38435555 -0.5 -0.5 0.5 -0.25002289 0.5 0.38435555 -0.5 0.5
		 0.38435555 -0.5 -0.5 0.5 -0.25002289 -0.5;
	setAttr -s 24 ".ed[0:23]"  1 4 0 1 0 0 2 10 0 3 7 0 3 2 0 5 4 0 6 15 0
		 7 6 0 8 13 0 9 0 0 8 9 0 11 14 0 11 10 0 12 5 0 13 12 0 15 14 0 0 2 0 3 1 0 4 7 0
		 6 5 0 8 11 0 10 9 0 12 15 0 14 13 0;
	setAttr -s 10 -ch 48 ".fc[0:9]" -type "polyFaces" 
		f 4 17 0 18 -4
		mu 0 4 15 14 6 7
		f 4 20 11 23 -9
		mu 0 4 16 17 5 4
		f 4 22 -7 19 -14
		mu 0 4 0 1 2 3
		f 4 21 9 16 2
		mu 0 4 8 9 10 11
		f 8 -5 3 7 6 15 -12 12 -3
		mu 0 8 18 19 20 21 1 5 17 22
		f 8 -11 8 14 13 5 -1 1 -10
		mu 0 8 23 16 4 0 24 25 26 27
		f 4 -2 -18 4 -17
		mu 0 4 10 14 15 11
		f 4 -6 -20 -8 -19
		mu 0 4 6 3 2 7
		f 4 10 -22 -13 -21
		mu 0 4 12 9 8 13
		f 4 -15 -24 -16 -23
		mu 0 4 0 4 5 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 10 
		0 0 
		1 0 
		4 0 
		5 0 
		6 0 
		7 0 
		14 0 
		15 0 
		16 0 
		17 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14" -p "Mesh";
	rename -uid "93561124-4838-9446-EBBD-99AD95499B46";
	setAttr ".rp" -type "double3" 0 10.06399393081665 -5.0240030244881986 ;
	setAttr ".sp" -type "double3" 0 10.06399393081665 -5.0240030244881986 ;
createNode mesh -n "pCube14Shape" -p "pCube14";
	rename -uid "DEDA489B-4CA5-8D88-E71B-088BFD8A317B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 7 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 19 "f[1]" "f[5:14]" "f[16:17]" "f[26:27]" "f[30]" "f[32:35]" "f[37:42]" "f[45]" "f[47:48]" "f[51:54]" "f[57:58]" "f[61]" "f[64:65]" "f[67:68]" "f[70:72]" "f[75]" "f[77]" "f[80]" "f[88:92]";
	setAttr ".gtag[1].gtagnm" -type "string" "booleanIntersection";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 4 "e[64]" "e[74]" "e[83]" "e[90]";
	setAttr ".gtag[2].gtagnm" -type "string" "bottom";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 11 "f[2]" "f[20:21]" "f[24:25]" "f[29]" "f[44]" "f[50]" "f[55]" "f[60]" "f[74]" "f[81]" "f[85]";
	setAttr ".gtag[3].gtagnm" -type "string" "front";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 6 "f[15]" "f[36]" "f[49]" "f[69]" "f[78]" "f[82:83]";
	setAttr ".gtag[4].gtagnm" -type "string" "left";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 7 "f[4]" "f[28]" "f[43]" "f[59]" "f[73]" "f[79]" "f[86]";
	setAttr ".gtag[5].gtagnm" -type "string" "right";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 7 "f[3]" "f[31]" "f[46]" "f[62]" "f[76]" "f[84]" "f[87]";
	setAttr ".gtag[6].gtagnm" -type "string" "top";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 6 "f[0]" "f[18:19]" "f[22:23]" "f[56]" "f[63]" "f[66]";
	setAttr ".pv" -type "double2" 0.73282383942181761 0.45596925407269984 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 226 ".uvst[0].uvsp[0:225]" -type "float2" 0.91480649 0.394234
		 0.96498507 0.398049 0.96495932 0.43265963 0.91494823 0.43542385 0.91688037 0.39126402
		 0.96498978 0.39129943 0.96878368 0.43739673 0.96881652 0.39331788 0.97264349 0.39533651
		 0.97261411 0.43538383 0.91684484 0.43937361 0.96495432 0.43940905 0.97524762 0.39533836
		 0.97521818 0.43538561 0.97907686 0.38976151 0.97903895 0.44096813 0.79167843 0.3970741
		 0.84359229 0.39379036 0.84388244 0.43536094 0.79194939 0.43244657 0.84079349 0.38979912
		 0.79162538 0.39017624 0.84117067 0.43896732 0.79200244 0.43934438 0.78772891 0.39226598
		 0.78807461 0.4373146 0.78414559 0.43528458 0.7838316 0.39435607 0.78148413 0.43530509
		 0.78117049 0.39437652 0.77761877 0.44103745 0.77721751 0.38870388 0.98343498 0.6748634
		 0.98395771 0.76973897 0.97548991 0.77083594 0.97648221 0.67175943 0.39306504 0.68106598
		 0.33129045 0.68175441 0.33118534 0.66307962 0.39299136 0.66797376 0.33132726 0.68829894
		 0.39310205 0.68761057 0.25930372 0.68409276 0.25916189 0.65891171 0.33114824 0.65653473
		 0.39295453 0.66142917 0.2593407 0.69063753 0.19129947 0.69971615 0.19112298 0.66838175
		 0.25912496 0.65236706 0.19133635 0.70626104 0.10888597 0.69551098 0.10866739 0.65673172
		 0.19108611 0.6618371 0.10892278 0.70205581 0.056049258 0.65052575 0.10400255 0.65021318
		 0.10429494 0.70208192 0.056340985 0.70230973 0.10863048 0.6501869 0.94708693 0.76965183
		 0.9481678 0.67478102 0.95691812 0.67176658 0.95603901 0.77051169 0.11455774 0.59237635
		 0.18897021 0.58887255 0.18854409 0.61487162 0.11424156 0.61165768 0.18908104 0.58211577
		 0.11466824 0.58561927 0.25911775 0.59940708 0.25858745 0.63175869 0.18843326 0.62162864
		 0.11413072 0.6184147 0.050686479 0.59674335 0.050464869 0.61026096 0.25922853 0.5926497
		 0.050797254 0.5899865 0.34438527 0.58829361 0.34372881 0.62833202 0.25847656 0.63851607
		 0.050354034 0.61701798 0.34449601 0.58153647 0.34927392 0.58161473 0.39878404 0.5824703
		 0.39790773 0.63593531 0.34839606 0.63516772 0.34361821 0.63508928 0.82768387 0.66308987
		 0.83047503 0.76708019 0.82208323 0.76908934 0.82107973 0.66149867 0.7949391 0.7671361
		 0.79625088 0.66311681 0.80403125 0.6615262 0.80400562 0.76903284 0.89804614 0.76815736
		 0.89645302 0.66984731 0.90643239 0.66982234 0.9063623 0.77033043 0.93364012 0.66990608
		 0.93167365 0.76820993 0.92410636 0.77054703 0.92374623 0.67009234 0.84396124 0.76940799
		 0.84368968 0.6694591 0.85353875 0.66670018 0.85304403 0.77011061 0.87781703 0.66914648
		 0.8796258 0.76907885 0.87061584 0.77017689 0.87089455 0.66674781 0.69689184 0.57569981
		 0.69730181 0.62882769 0.67820561 0.63130522 0.67811972 0.57537591 0.60261399 0.63065964
		 0.60322583 0.57753462 0.62221318 0.57632649 0.62343222 0.63178009 0.85479182 0.52216399
		 0.85540706 0.45183548 0.90317643 0.45168096 0.90256143 0.52216399 0.84825802 0.52744722
		 0.90909517 0.52744722 0.90631294 0.53273165 0.85104036 0.53273165 0.90631294 0.53632569
		 0.85104036 0.53632569 0.9140141 0.54160488 0.84333903 0.54160488 0.8555271 0.37815791
		 0.85546118 0.30840677 0.90323067 0.30840677 0.90329635 0.3780033 0.90976429 0.30312335
		 0.84892726 0.30312335 0.85170949 0.29783916 0.9069823 0.29783916 0.85170949 0.29424506
		 0.9069823 0.29424506 0.84400827 0.28896582 0.91468322 0.28896582 0.25963354 0.78638655
		 0.33235079 0.78996217 0.33227563 0.80882704 0.2595323 0.81182396 0.32854307 0.80414695
		 0.32858121 0.79461288 0.26719213 0.79436827 0.26715422 0.80390251 0.39474452 0.79303002
		 0.39469188 0.8062557 0.38944906 0.80438912 0.38948685 0.79485488 0.33797535 0.79464996
		 0.3379373 0.80418432 0.19073683 0.8146584 0.1908628 0.78300524 0.19689977 0.79408884
		 0.19686185 0.8036232 0.25681162 0.80386126 0.25684959 0.79432726 0.10749623 0.81808758
		 0.10765204 0.7789135 0.11979778 0.79378188 0.1197599 0.80331612 0.18117082 0.80356073
		 0.18120876 0.79402614 0.054561734 0.77213389 0.10300362 0.77228385 0.10279514 0.82468027
		 0.054353684 0.82444489 0.065897167 0.78325462 0.065777153 0.81341457 0.095937058
		 0.81353474 0.096056968 0.78337455 0.32131147 0.74844861 0.25198194 0.7514382 0.25203195
		 0.72719276 0.32134858 0.73046756 0.18641493 0.75426519 0.18647711 0.72409499 0.38269341
		 0.7475667 0.38273537 0.73178446 0.1070807 0.75768608 0.10715762 0.72034705 0.10271466
		 0.71403635 0.10261166 0.76397836 0.05643931 0.76384264 0.056542128 0.71398199 0.81949687
		 0.52731895 0.77560508 0.52688932 0.77603495 0.48299757 0.81992698 0.48342735 0.97414398
		 0.77776009 0.95659316 0.77718931 0.80435067 0.65413618 0.82050103 0.65405339 0.82109267
		 0.77692854 0.80494261 0.77682805 0.92289388 0.77670407 0.90764046 0.77628911 0.90760827
		 0.66157615 0.92285848 0.66209924 0.86903536 0.77738929 0.85354471 0.77715421 0.85499716
		 0.65852243 0.87048841 0.65871602 0.62370956 0.5551846 0.67683887 0.55518448 0.69366944
		 0.44606125 0.69366944 0.39464185 0.74508846 0.39464185 0.74508846 0.44606125 0.67808652
		 0.65047836 0.62495726 0.6504783 0.95820642 0.66386217 0.97576648 0.66376883 0.41311082
		 0.72089988 0.42255953 0.73040617 0.4225018 0.74936485 0.41299558 0.75881356 0.39403665
		 0.75875592 0.3941519 0.72084224;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 116 ".vt[0:115]"  -0.555053 10.55505276 -1.091363907 0.555053 10.55505276 -1.091363907
		 0.555053 9.4449482 -1.091363907 -0.555053 9.4449482 -1.091363907 -0.555053 10.55505276 -1.16354656
		 0.555053 10.55505276 -1.16354656 0.555053 9.4449482 -1.16354656 -0.555053 9.4449482 -1.16354656
		 -0.70972311 10.70972252 -1.26957738 0.70972311 10.70972252 -1.26957738 0.70972311 9.29027748 -1.26957738
		 -0.70972311 9.29027748 -1.26957738 -0.66679692 10.47970581 0.45447159 -0.47970614 10.66679668 0.45447159
		 -0.61093056 10.61093044 -0.98523247 -0.66679692 10.47970581 -0.87912226 -0.47970614 10.66679668 -0.87912226
		 0.47970614 10.66679668 0.45447159 0.66679692 10.47970581 0.45447159 0.61093056 10.61093044 -0.98523247
		 0.47970614 10.66679668 -0.87912226 0.66679692 10.47970581 -0.87912226 -0.47970614 9.33320332 0.45447159
		 -0.66679692 9.52029419 0.45447159 -0.61093062 9.38907051 -0.98523235 -0.47970614 9.33320332 -0.87912226
		 -0.66679692 9.52029419 -0.87912226 0.66679692 9.52029419 0.45447159 0.47970614 9.33320332 0.45447159
		 0.61093062 9.38907051 -0.98523235 0.66679692 9.52029419 -0.87912226 0.47970614 9.33320332 -0.87912226
		 0.4353424 9.67686844 -8.8091259 0.25594535 9.49747181 -8.8091259 0.17943299 9.64116955 -10.50247765
		 0.35883009 9.82056618 -10.50247765 -0.4353424 10.18876076 -8.8091259 -0.25594535 10.36815739 -8.8091259
		 -0.17943299 10.35883045 -10.50247765 -0.35883009 10.17943382 -10.50247765 -0.12935384 10.35961533 -10.36000729
		 -0.12935384 10.36731434 -8.96225834 -0.12935384 10.28090858 -8.96238995 -0.12935384 10.28822613 -10.36006069
		 0.12935384 10.28090858 -8.96238995 0.12935384 10.28822613 -10.36006069 0.35883009 10.17943382 -10.50247765
		 0.4353424 10.18876076 -8.8091259 0.12935384 10.36731434 -8.96225834 0.12935384 10.35961533 -10.36000729
		 -0.12935384 10.37088966 -8.70734787 0.25594535 10.36815739 -8.8091259 0.17943299 10.35883045 -10.50247765
		 0.12935384 10.37088966 -8.70734787 -0.12935384 10.41560555 -7.041572571 -0.3451167 9.3721056 -6.83560801
		 -0.52451372 9.55150223 -6.83560801 -0.4353424 9.67686844 -8.8091259 -0.25594535 9.49747181 -8.8091259
		 0.12935384 10.41560555 -7.041572571 -0.3451167 10.421134 -6.83560801 0.3451167 9.3721056 -6.83560801
		 -0.52451372 10.24173737 -6.83560801 -0.12935384 10.27725887 -8.70704842 0.12935384 10.27725887 -8.70704842
		 0.3451167 10.421134 -6.83560801 0.52451372 9.55150223 -6.83560801 -0.12935384 10.80194092 -5.134202
		 -0.12935384 10.43784809 -6.76092911 -0.12935384 10.32207966 -7.041275978 0.12935384 10.32207966 -7.041275978
		 0.52451372 10.24173737 -6.83560801 -0.42944866 10.83887291 -4.96919441 0.12935384 10.80194092 -5.134202
		 -0.42944866 9.62118053 -4.96919441 -0.60884571 9.80057716 -4.96919441 0.42944866 10.83887291 -4.96919441
		 -0.53148794 9.28911495 -2.71088505 -0.71088499 9.28911495 -2.58403206 -0.71088499 9.46851158 -2.71088505
		 -0.12935384 10.72965336 -3.042054892 -0.12935384 10.82409382 -4.70842981 0.42944866 9.62118053 -4.96919441
		 -0.60884571 10.65947628 -4.96919441 0.12935384 10.43784809 -6.76092911 -0.12935384 10.3659296 -6.75635815
		 0.12935384 10.3659296 -6.75635815 -0.53148794 10.71088505 -2.71088505 0.71088499 9.46851158 -2.71088505
		 0.71088499 9.28911495 -2.58403206 0.53148794 9.28911495 -2.71088505 -0.71088499 10.53148842 -2.71088505
		 -0.71088499 10.71088505 -2.58403206 0.60884571 9.80057716 -4.96919441 0.12935384 10.72965336 -3.042054892
		 0.53148794 10.71088505 -2.71088505 -0.12935384 10.68615627 -5.1210413 0.12935384 10.68615627 -5.1210413
		 0.60884571 10.65947628 -4.96919441 0.71088499 10.71088505 -2.58403206 0.71088499 10.53148842 -2.71088505
		 -0.40919358 10.71088505 -1.5783546 0.40919358 10.71088505 -1.5783546 0.12935384 10.82409382 -4.70842981
		 -0.12935384 10.72495365 -4.70724869 0.12935384 10.72495365 -4.70724869 -0.12935384 10.63626385 -3.043235779
		 0.12935384 10.63626385 -3.043235779 -0.40919358 10.71088505 -2.39674163 -0.40919358 10.44144058 -1.5783546
		 -0.40919358 10.44144058 -2.39674163 0.40919358 10.71088505 -2.39674163 0.40919358 10.44144058 -2.39674163
		 0.40919358 10.44144058 -1.5783546 -0.35883009 9.82056618 -10.50247765 -0.17943299 9.64116955 -10.50247765;
	setAttr -s 200 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 3 2 0 0 3 0 0 4 0 1 5 0 4 5 0 2 6 0 5 6 0
		 3 7 0 7 6 0 4 7 0 4 8 0 5 9 0 8 9 0 6 10 0 9 10 0 7 11 0 11 10 0 8 11 0 13 17 0 13 12 0
		 14 0 0 15 26 0 16 20 0 15 14 0 16 14 0 18 17 0 19 1 0 21 30 0 20 19 0 21 19 0 22 28 0
		 23 12 0 22 23 0 24 3 0 25 31 0 25 24 0 26 24 0 27 18 0 28 27 0 29 2 0 30 29 0 31 29 0
		 12 15 0 16 13 0 17 20 0 21 18 0 22 25 0 26 23 0 27 30 0 31 28 0 16 15 1 21 20 1 26 25 1
		 31 30 1 32 33 1 33 34 0 34 35 0 35 32 0 36 37 1 37 38 0 38 39 0 39 36 0 40 41 0 41 42 0
		 42 43 0 43 40 0 42 44 0 44 45 0 45 43 0 46 47 0 47 32 1 35 46 0 48 49 0 49 45 0 44 48 0
		 51 37 1 51 47 1 46 52 0 52 51 0 50 53 0 54 50 0 40 49 0 52 38 0 55 56 1 56 57 0 57 58 1
		 58 55 0 53 59 0 41 48 0 37 60 0 33 61 0 61 55 1 58 33 1 56 62 1 62 36 0 36 57 1 50 63 0
		 63 64 0 64 53 0 65 51 0 59 54 0 60 65 1 66 61 1 32 66 0 62 60 1 67 68 0 54 69 0 69 63 0
		 69 70 0 70 64 0 47 71 0 71 66 1 70 59 0 60 72 0 65 71 1 73 67 0 74 75 1 75 56 0 55 74 0
		 72 76 1 77 78 0 78 79 0 79 77 0 80 81 0 61 82 0 82 74 1 75 83 1 83 62 0 84 68 0 68 85 0
		 85 86 0 86 84 0 72 87 0 88 89 0 89 90 0 90 88 0 91 92 0 92 87 0 87 91 0 93 82 1 66 93 0
		 83 72 1 94 80 0 87 95 1 67 96 0 96 85 0 96 97 0 97 86 0 71 98 0 98 93 1 73 84 0 97 73 0
		 95 99 0 99 100 0 100 95 0 76 98 1 65 76 0 79 75 0 74 77 0 102 101 0 82 90 0 90 77 0
		 79 91 0 91 83 0;
	setAttr ".ed[166:199]" 103 81 0 81 104 0 104 105 0 105 103 0 93 88 0 80 106 0
		 106 104 0 106 107 0 107 105 0 98 100 0 100 88 0 94 103 0 107 94 0 76 95 0 108 101 0
		 101 109 0 109 110 0 110 108 0 111 108 0 110 112 0 112 111 0 109 113 0 113 112 0 102 113 0
		 102 111 0 89 10 0 11 78 0 8 92 0 99 9 0 114 57 0 39 114 0 58 115 0 115 34 0 114 115 0;
	setAttr -s 93 -ch 408 ".fc[0:92]" -type "polyFaces" 
		f 4 45 20 46 -25
		mu 0 4 120 121 122 123
		f 4 14 16 -19 -20
		mu 0 4 192 193 194 195
		f 4 48 36 51 -33
		mu 0 4 132 133 134 135
		f 4 50 -30 47 -40
		mu 0 4 0 1 2 3
		f 4 49 33 44 23
		mu 0 4 16 17 18 19
		f 4 0 5 -7 -5
		mu 0 4 127 126 128 129
		f 4 1 7 -9 -6
		mu 0 4 9 8 12 13
		f 4 -3 9 10 -8
		mu 0 4 139 138 140 141
		f 4 -4 4 11 -10
		mu 0 4 27 26 28 29
		f 4 6 13 -15 -13
		mu 0 4 129 128 130 131
		f 4 8 15 -17 -14
		mu 0 4 13 12 14 15
		f 4 -11 17 18 -16
		mu 0 4 141 140 142 143
		f 4 -12 12 19 -18
		mu 0 4 29 28 30 31
		f 6 -27 24 30 28 -1 -23
		mu 0 6 124 120 123 125 126 127
		f 6 -32 29 42 41 -2 -29
		mu 0 6 6 2 1 7 8 9
		f 8 -35 32 40 39 27 -21 21 -34
		mu 0 8 17 132 135 0 3 122 121 18
		f 6 -39 -24 25 22 3 -36
		mu 0 6 24 16 19 25 26 27
		f 6 -44 -37 37 35 2 -42
		mu 0 6 136 134 133 137 138 139
		f 4 -22 -46 52 -45
		mu 0 4 18 22 23 19
		f 4 -28 -48 53 -47
		mu 0 4 10 3 2 11
		f 4 34 -50 54 -49
		mu 0 4 20 17 16 21
		f 4 -41 -52 55 -51
		mu 0 4 0 4 5 1
		f 3 -26 -53 26
		mu 0 3 25 19 23
		f 3 -31 -54 31
		mu 0 3 6 11 2
		f 3 -38 -55 38
		mu 0 3 24 21 16
		f 3 -43 -56 43
		mu 0 3 7 1 5
		f 4 56 57 58 59
		mu 0 4 38 44 45 39
		f 4 60 61 62 63
		mu 0 4 67 73 81 75
		f 4 64 65 66 67
		mu 0 4 32 33 34 35
		f 4 -67 68 69 70
		mu 0 4 35 34 63 62
		f 4 71 72 -60 73
		mu 0 4 36 37 38 39
		f 4 74 75 -70 76
		mu 0 4 60 61 62 63
		f 4 101 77 91 103
		mu 0 4 144 145 146 147
		h 4 81 89 102 82
		mu 0 4 148 149 150 151
		f 4 78 -72 79 80
		mu 0 4 40 37 36 41
		f 4 -81 84 -62 -78
		mu 0 4 145 152 153 146
		h 4 83 -75 -91 -65
		mu 0 4 154 155 156 157
		f 4 85 86 87 88
		mu 0 4 68 65 64 69
		f 4 90 -77 -69 -66
		mu 0 4 196 197 63 34
		f 4 92 93 -89 94
		mu 0 4 178 179 180 181
		f 4 -87 95 96 97
		mu 0 4 64 65 66 67
		f 4 -82 98 99 100
		mu 0 4 198 199 91 94
		f 4 104 -93 -57 105
		mu 0 4 43 49 44 38
		f 4 106 -92 -61 -97
		mu 0 4 66 72 73 67
		f 4 115 121 -159 -104
		mu 0 4 147 158 159 144
		h 4 117 107 -131 -153
		mu 0 4 160 161 162 163
		f 4 -83 108 109 -99
		mu 0 4 88 89 90 91
		f 4 -110 110 111 -100
		mu 0 4 91 90 95 94
		f 4 112 113 -106 -73
		mu 0 4 37 42 43 38
		f 4 -90 -101 -112 114
		mu 0 4 92 93 94 95
		f 4 116 -113 -79 -102
		mu 0 4 46 42 37 40
		f 4 118 119 -86 120
		mu 0 4 76 70 65 68
		f 4 -103 -115 -111 -109
		mu 0 4 200 201 95 90
		f 3 122 123 124
		mu 0 3 82 83 78
		f 4 134 145 -180 -122
		mu 0 4 158 164 165 159
		h 4 144 125 -167 -178
		mu 0 4 166 167 168 169
		f 4 126 127 -121 -94
		mu 0 4 179 182 183 180
		f 4 -120 128 129 -96
		mu 0 4 65 70 71 66
		f 4 130 131 132 133
		mu 0 4 202 203 99 102
		f 3 135 136 137
		mu 0 3 52 56 59
		f 3 138 139 140
		mu 0 3 79 86 87
		f 4 141 -127 -105 142
		mu 0 4 48 53 49 43
		f 4 143 -116 -107 -130
		mu 0 4 71 80 72 66
		f 4 -108 146 147 -132
		mu 0 4 96 97 98 99
		f 4 -148 148 149 -133
		mu 0 4 99 98 103 102
		f 4 150 151 -143 -114
		mu 0 4 42 47 48 43
		f 4 152 -134 -150 153
		mu 0 4 100 101 102 103
		f 3 154 155 156
		mu 0 3 54 57 51
		f 4 157 -151 -117 158
		mu 0 4 50 47 42 46
		f 4 -125 159 -119 160
		mu 0 4 82 78 70 76
		f 6 -195 -155 -146 -140 -194 14
		mu 0 6 170 171 165 164 172 173
		h 4 161 -181 -185 -191
		mu 0 4 174 175 176 177
		f 4 162 163 -161 -128
		mu 0 4 182 186 187 183
		f 4 -160 164 165 -129
		mu 0 4 70 78 79 71
		f 4 -118 -154 -149 -147
		mu 0 4 204 205 103 98
		f 4 166 167 168 169
		mu 0 4 206 207 107 110
		f 4 -138 -163 -142 170
		mu 0 4 52 59 53 48
		f 4 -141 -135 -144 -166
		mu 0 4 79 87 80 71
		f 4 -126 171 172 -168
		mu 0 4 104 105 106 107
		f 4 -173 173 174 -169
		mu 0 4 107 106 111 110
		f 4 175 176 -171 -152
		mu 0 4 47 51 52 48
		f 4 177 -170 -175 178
		mu 0 4 108 109 110 111
		f 4 -157 -176 -158 179
		mu 0 4 54 51 47 50
		f 4 -145 -179 -174 -172
		mu 0 4 208 209 111 106
		f 4 180 181 182 183
		mu 0 4 112 113 114 115
		f 4 184 -184 185 186
		mu 0 4 210 211 115 118
		f 4 -183 187 188 -186
		mu 0 4 115 114 119 118
		f 4 18 -17 -15 19
		mu 0 4 212 213 214 215
		f 4 -162 189 -188 -182
		mu 0 4 216 217 119 114
		f 4 190 -187 -189 -190
		mu 0 4 116 117 118 119
		f 6 -123 -164 -137 191 -19 192
		mu 0 6 188 187 186 189 190 191
		f 6 -124 -193 -20 193 -139 -165
		mu 0 6 78 83 84 85 86 79
		f 6 -192 -136 -177 -156 194 16
		mu 0 6 55 56 52 51 57 58
		f 4 -84 -68 -71 -76
		mu 0 4 218 219 35 62
		f 4 195 -98 -64 196
		mu 0 4 74 64 67 75
		f 4 -58 -95 197 198
		mu 0 4 184 178 181 185
		f 4 -88 -196 199 -198
		mu 0 4 69 64 74 77
		f 8 -63 -85 -80 -74 -59 -199 -200 -197
		mu 0 8 220 221 222 223 224 184 185 225;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 30 
		0 0 
		3 0 
		17 0 
		18 0 
		34 0 
		35 0 
		62 0 
		63 0 
		90 0 
		91 0 
		94 0 
		95 0 
		98 0 
		99 0 
		102 0 
		103 0 
		106 0 
		107 0 
		110 0 
		111 0 
		114 0 
		115 0 
		118 0 
		119 0 
		121 0 
		122 0 
		132 0 
		135 0 
		184 0 
		185 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Lighting";
	rename -uid "29F9FDC0-4370-8603-342E-86BFDC66C2C3";
createNode transform -n "directionalLight1" -p "Lighting";
	rename -uid "E8651C6C-4494-9D31-82D5-57B6B8BBEA05";
	setAttr ".t" -type "double3" -3.7551976990506368 14.415289521754506 3.2700735665297671 ;
	setAttr ".r" -type "double3" -51.937584308404311 -42.996764225762554 4.3486307493988743e-15 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	rename -uid "7570EECF-4028-9A5C-D754-B1AE61E5BC9E";
	setAttr -k off ".v";
	setAttr ".ai_exposure" 8;
createNode transform -n "directionalLight2" -p "Lighting";
	rename -uid "8D7A4584-4D49-3926-630B-A89DFD588421";
	setAttr ".t" -type "double3" -4.9473038640982345 14.735634026891194 -9.4625256595914404 ;
	setAttr ".r" -type "double3" 145.82251569535526 -48.632257765141695 -198.11293864742336 ;
createNode directionalLight -n "directionalLightShape2" -p "directionalLight2";
	rename -uid "2BF23442-4668-CD7A-73FB-74B16F8E7899";
	setAttr -k off ".v";
	setAttr ".ai_exposure" 8;
createNode transform -n "directionalLight3" -p "Lighting";
	rename -uid "5F65EB8C-4C1D-1FC1-47C7-A4A0BDBAFCA4";
	setAttr ".t" -type "double3" 8.2288900604049999 13.078780066433481 -4.3209445399365061 ;
	setAttr ".r" -type "double3" 104.70763086909047 14.614589109955876 -238.99480183536636 ;
createNode directionalLight -n "directionalLightShape3" -p "directionalLight3";
	rename -uid "B1954F06-472E-EA5F-1196-BDA4AE25FE53";
	setAttr -k off ".v";
	setAttr ".ai_exposure" 8;
createNode transform -n "Locators";
	rename -uid "A94DCE0F-4603-8471-5BB6-928B33A9F9ED";
	setAttr ".v" no;
createNode transform -n "locator4" -p "Locators";
	rename -uid "80FB3D56-4F4A-B38C-0A41-C09FD5CE57DC";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0.5860596630051963 10.200325818467078 -12.486263533487408 ;
	setAttr ".s" -type "double3" 0.45360487579797804 0.45360487579797804 0.45360487579797804 ;
createNode locator -n "locatorShape4" -p "locator4";
	rename -uid "3937D35D-4A3B-E98B-3493-F58FD50CC06F";
	setAttr -k off ".v";
createNode transform -n "locator5" -p "Locators";
	rename -uid "4E884486-4511-F85D-FA4F-C28FF86F4901";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0.5860596630051963 10.200325818467078 -13.24941542579506 ;
	setAttr ".s" -type "double3" 0.3619114347789813 0.3619114347789813 0.3619114347789813 ;
createNode locator -n "locatorShape5" -p "locator5";
	rename -uid "DA48E649-47FF-7B31-ECE2-71B7A005C096";
	setAttr -k off ".v";
createNode transform -n "locator6" -p "Locators";
	rename -uid "8DBAE517-46F9-D272-242A-1BB14E52944D";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0.5860596630051963 10.200325818467078 -13.825632201421543 ;
	setAttr ".s" -type "double3" 0.3619114347789813 0.3619114347789813 0.3619114347789813 ;
createNode locator -n "locatorShape6" -p "locator6";
	rename -uid "43E46564-44AA-47D1-A6E6-1C988BD3B0C5";
	setAttr -k off ".v";
createNode transform -n "locator7" -p "Locators";
	rename -uid "3E1C3250-45B1-5C81-562A-9E8B5DA2D0E5";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0.5860596630051963 10.200325818467078 -14.165812898599484 ;
	setAttr ".s" -type "double3" 0.3619114347789813 0.3619114347789813 0.3619114347789813 ;
createNode locator -n "locatorShape7" -p "locator7";
	rename -uid "70904DCD-4B8E-6FA6-8EB5-07BEF249FEAE";
	setAttr -k off ".v";
createNode transform -n "locator8" -p "Locators";
	rename -uid "AB37F0E3-43A8-5CBB-E683-86976D79B805";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.60120641220402826 10.170164212170912 -12.533439484206045 ;
	setAttr ".s" -type "double3" 0.45360487579797804 0.45360487579797804 0.45360487579797804 ;
createNode locator -n "locatorShape8" -p "locator8";
	rename -uid "8AF0F1EF-4FB0-8E76-F76F-41BBF36100E9";
	setAttr -k off ".v";
createNode transform -n "locator9" -p "Locators";
	rename -uid "45E01919-4043-3C12-62CF-15B668A5C2EF";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.60120641220402826 10.170164212170912 -13.307584597937195 ;
	setAttr ".s" -type "double3" 0.45360487579797804 0.45360487579797804 0.45360487579797804 ;
createNode locator -n "locatorShape9" -p "locator9";
	rename -uid "5FEAF275-452B-38B1-A3D5-5CA98862626D";
	setAttr -k off ".v";
createNode transform -n "locator10" -p "Locators";
	rename -uid "9CB36673-42DA-46BA-29D8-B285341C75B5";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.60120641220402826 10.170164212170912 -13.884005870689633 ;
	setAttr ".s" -type "double3" 0.45360487579797804 0.45360487579797804 0.45360487579797804 ;
createNode locator -n "locatorShape10" -p "locator10";
	rename -uid "44224202-4991-F2B9-69B2-68873847E334";
	setAttr -k off ".v";
createNode transform -n "locator11" -p "Locators";
	rename -uid "ABAF2E08-4AAD-B575-903B-F98B9A58EF4F";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.60120641220402826 10.170164212170912 -14.224327446840123 ;
	setAttr ".s" -type "double3" 0.45360487579797804 0.45360487579797804 0.45360487579797804 ;
createNode locator -n "locatorShape11" -p "locator11";
	rename -uid "A87B924F-466F-BA55-0E2B-FD94596A6AB4";
	setAttr -k off ".v";
createNode transform -n "locator12" -p "Locators";
	rename -uid "32424698-4E82-AE3A-9314-A9AEAE6B6957";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.0084160960043996313 9.752382331736813 -12.533439484206045 ;
	setAttr ".s" -type "double3" 0.45360487579797804 0.45360487579797804 0.45360487579797804 ;
createNode locator -n "locatorShape12" -p "locator12";
	rename -uid "98DE1AA2-4C93-4DC4-DA25-C5AE44E1664E";
	setAttr -k off ".v";
createNode transform -n "locator13" -p "Locators";
	rename -uid "09E8B364-405D-2DC3-0F44-BC9F3EF5EA7D";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.0084160960043996313 9.752382331736813 -13.126474620078774 ;
	setAttr ".s" -type "double3" 0.45360487579797804 0.45360487579797804 0.45360487579797804 ;
createNode locator -n "locatorShape13" -p "locator13";
	rename -uid "5668A8AD-447A-4DAB-4AF9-A88A3719FE53";
	setAttr -k off ".v";
createNode transform -n "locator14" -p "Locators";
	rename -uid "AE395E55-4573-089B-9B97-FBA0E878BDCB";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.0084160960043996313 9.752382331736813 -13.590858369456265 ;
	setAttr ".s" -type "double3" 0.45360487579797804 0.45360487579797804 0.45360487579797804 ;
createNode locator -n "locatorShape14" -p "locator14";
	rename -uid "AE781735-4135-2553-D250-FBA0CCC58A6B";
	setAttr -k off ".v";
createNode transform -n "locator15" -p "Locators";
	rename -uid "4C785F71-4730-015F-AEC2-D6A5B4FA4666";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" -0.0084160960043996313 9.752382331736813 -13.8887739900391 ;
	setAttr ".s" -type "double3" 0.45360487579797804 0.45360487579797804 0.45360487579797804 ;
createNode locator -n "locatorShape15" -p "locator15";
	rename -uid "2ADB9E8B-45FD-939C-1738-A6859CBCE550";
	setAttr -k off ".v";
createNode transform -n "locator1" -p "Locators";
	rename -uid "154BF58E-4ACB-391F-C82C-2DA7069BBC2B";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 10 0 ;
createNode locator -n "locatorShape1" -p "locator1";
	rename -uid "6D48F517-4A35-B2C5-8975-0AB80B62627B";
	setAttr -k off ".v";
createNode transform -n "locator2" -p "Locators";
	rename -uid "2C9CEBE0-4E39-6BDD-78FE-D4B2A9D2A2FB";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 10 -11 ;
createNode locator -n "locatorShape2" -p "locator2";
	rename -uid "1E536436-45B5-BBD2-103D-E6BA953EDEB3";
	setAttr -k off ".v";
createNode transform -n "locator3" -p "Locators";
	rename -uid "7CDD7554-4D36-EF01-8A25-9CA8E41CB240";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".t" -type "double3" 0 2 0 ;
createNode locator -n "locatorShape3" -p "locator3";
	rename -uid "FE969F18-47FB-234A-44FB-779A2C0D97D9";
	setAttr -k off ".v";
createNode joint -n "Right_Finger_Jnt";
	rename -uid "7F54A402-4444-30D6-34B1-9F90DA39D229";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -2.9118847791719207e-17 89.999999999998735 0 ;
	setAttr ".is" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".radi" 0.5;
createNode joint -n "joint10" -p "Right_Finger_Jnt";
	rename -uid "13B85AF5-472D-5097-2B47-6FAE24713ADB";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.5;
createNode joint -n "joint11" -p "joint10";
	rename -uid "3C078247-4872-AB9C-2F6F-B48DDADA429B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "joint11_parentConstraint1" -p "joint11";
	rename -uid "207B2430-4FFD-402E-37B6-BC878D36BAE2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle10W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.3290705182007514e-15 -5.3290705182007514e-15 
		1.1102230246251565e-16 ;
	setAttr ".rst" -type "double3" 0.91674232482909979 0 -2.886579864025407e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "joint11_scaleConstraint1" -p "joint11";
	rename -uid "6E39B9F6-46CA-99AF-AFEF-259F9152287B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle10W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint10_parentConstraint1" -p "joint10";
	rename -uid "5D62534A-4598-F616-6F8C-99814E1C98F1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle9W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 -3.5527136788005009e-15 
		0 ;
	setAttr ".rst" -type "double3" 0.77414512634277344 -1.7763568394002505e-15 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "joint10_scaleConstraint1" -p "joint10";
	rename -uid "363F87F6-4B3D-B194-556D-4BAD66BB45E4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle9W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint9_parentConstraint1" -p "Right_Finger_Jnt";
	rename -uid "64BFA42B-423F-5B99-19B6-C2A53769932E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle8W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 -1.7763568394002505e-15 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 3.6158720393626899e-28 0 ;
	setAttr ".rst" -type "double3" -0.60120642185211182 10.170164108276364 -12.533439636230465 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "joint9_scaleConstraint1" -p "Right_Finger_Jnt";
	rename -uid "6B193F1F-4841-D322-3E35-01A8BAA4DD0F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle8W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "Bottom_Finger_Jnt";
	rename -uid "A9FC51F3-49B8-A90D-57C1-038DF660D847";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -2.9167379204705409e-17 89.999999999998735 0 ;
	setAttr ".is" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".radi" 0.5;
createNode joint -n "joint6" -p "Bottom_Finger_Jnt";
	rename -uid "32B69AB2-4A94-A1FD-D5BC-0494AA993D49";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.5;
createNode joint -n "joint7" -p "joint6";
	rename -uid "38A70BD5-42DC-0637-F034-F6A94F11B312";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "joint7_parentConstraint1" -p "joint7";
	rename -uid "6E74D113-428E-A5C1-7CFC-3EA260769F4A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle13W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 -3.5527136788005009e-15 
		3.4694469519536142e-18 ;
	setAttr ".rst" -type "double3" 0.76229953765869318 4.7961634663806763e-14 -1.4033912920652369e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "joint7_scaleConstraint1" -p "joint7";
	rename -uid "003C6038-46FA-1053-0A7B-0D91DEC6FE14";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle13W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint6_parentConstraint1" -p "joint6";
	rename -uid "CCCC9A8B-46BC-BD24-5B30-659D757D1D35";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle12W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 -1.7763568394002505e-15 
		0 ;
	setAttr ".rst" -type "double3" 0.59303474426269354 -1.7763568394002505e-15 -1.7780915628762273e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "joint6_scaleConstraint1" -p "joint6";
	rename -uid "736B0676-4853-D6FC-1D3F-FEB45FE6923C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle12W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint5_parentConstraint1" -p "Bottom_Finger_Jnt";
	rename -uid "FF07FE08-4BCF-1460-50FF-63981DB94737";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle11W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 -1.7763568394002505e-15 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 3.6158720393626899e-28 0 ;
	setAttr ".rst" -type "double3" -0.0084160957485437393 9.752382278442381 -12.533439636230465 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "joint5_scaleConstraint1" -p "Bottom_Finger_Jnt";
	rename -uid "788424E4-4737-2B75-F003-15ADEA815369";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle11W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "Left_Finger_Jnt";
	rename -uid "10EEE7E8-4247-F195-298F-98980E6EAC02";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -2.9167379204705409e-17 89.999999999998735 0 ;
	setAttr ".is" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "Left_Finger_Jnt";
	rename -uid "251B1950-4B36-76E1-199A-B6A08B32F468";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "joint2";
	rename -uid "8B2F3E88-4EE7-AFD0-A9D2-A6A959BBF006";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "joint3_parentConstraint1" -p "joint3";
	rename -uid "AE240C79-4E92-5E74-9267-4C859BBA2F29";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle7W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 1.7763568394002505e-15 
		1.1102230246251565e-16 ;
	setAttr ".lr" -type "double3" 0 0 -2.3051836030788602 ;
	setAttr ".rst" -type "double3" 0.91639709472656605 -7.1054273576010019e-15 -3.5527136788005009e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "joint3_scaleConstraint1" -p "joint3";
	rename -uid "26F81673-41E8-321B-631E-C3A490845758";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle7W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint2_parentConstraint1" -p "joint2";
	rename -uid "411E8E52-4377-3424-B94B-FC8A987B07BA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle6W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 0 0 ;
	setAttr ".lr" -type "double3" 0 0 -2.3051836030788602 ;
	setAttr ".rst" -type "double3" 0.76315212249755682 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "joint2_scaleConstraint1" -p "joint2";
	rename -uid "A002446B-44E0-697B-DE6F-B9BE42E3D3F5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle6W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint1_parentConstraint1" -p "Left_Finger_Jnt";
	rename -uid "3746B988-4F32-801A-587F-978E27E58705";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle5W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 3.6158720393626899e-28 0 ;
	setAttr ".lr" -type "double3" 0 0 -2.3051836030788602 ;
	setAttr ".rst" -type "double3" 0.58605968952178955 10.200325965881346 -12.486263275146483 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "joint1_scaleConstraint1" -p "Left_Finger_Jnt";
	rename -uid "41DD0902-43F5-9934-EE0F-B78E374B657D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle5W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F6CB3346-455F-2B65-142E-A9B29E981698";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "58B6930A-467C-3728-825C-1DB7F88BD8BC";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "AC4CB316-40E2-246E-4DC0-BAAD8396DCEA";
createNode displayLayerManager -n "layerManager";
	rename -uid "379A98B9-43D9-0217-59CF-3394565DC2BD";
createNode displayLayer -n "defaultLayer";
	rename -uid "84C2C83A-433B-AB33-74A5-8695ABFB1CB3";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "ED44B27A-4D7B-A238-D068-7795E622D9E9";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "97EA5075-494A-B38B-237F-12AF632AE93D";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "830F2103-49E1-EC76-60B1-6DA33DD6E0D5";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.3.1.1";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=perspShape;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1 1;Background.Offset=0 0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1 1;Foreground.Offset=0 0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "AA1FDCD9-4561-D581-0F6E-9BA45EE6ABEA";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "741599B0-4198-5B54-73B3-8BAE07052942";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "D2DD5139-4B74-85E1-D08A-31BAF6A1B456";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C94B048A-44FA-2DB2-CF11-5297070362BE";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1.5\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 609\n            -height 375\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1.5\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 608\n            -height 374\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1.5\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 609\n            -height 374\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1.5\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1224\n            -height 794\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1.5\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1.5\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1224\\n    -height 794\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1.5\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1224\\n    -height 794\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "735C16DC-4D3D-4D85-19EC-29B872F25D7C";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 25 -ast 1 -aet 25 ";
	setAttr ".st" 6;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "2833AD81-43A4-2936-B7CD-7BB6837A1DFE";
createNode groupId -n "groupId33";
	rename -uid "3B326D17-45E5-AF64-B0A6-FFB5D7E06806";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	rename -uid "91B2C43E-410E-DFA7-0352-C9A31A156256";
	setAttr ".ihi" 0;
createNode animCurveTL -n "pCylinder4_translateX";
	rename -uid "A408E64D-40A4-E730-EF69-B19F52A94146";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.19779982191988876;
createNode animCurveTL -n "pCylinder4_translateY";
	rename -uid "C88218EF-48F6-942C-52B0-E695EE21D79B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 10.652686550093405;
createNode animCurveTL -n "pCylinder4_translateZ";
	rename -uid "9107C76F-4B63-7364-78DF-C7890A7C5427";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.9998236431146841;
createNode animCurveTU -n "pCylinder4_visibility";
	rename -uid "9772D739-4AB6-0FA1-F5C1-E7A297EF0276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "pCylinder4_rotateX";
	rename -uid "50A2A9C7-4D22-CC5C-C9E0-228F7DDE5EB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 90;
createNode animCurveTA -n "pCylinder4_rotateY";
	rename -uid "D567ADBF-4C24-B43C-60DC-109B7F54D9F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pCylinder4_rotateZ";
	rename -uid "468F7BDE-47C6-1F16-3FC6-078A2177900F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "pCylinder4_scaleX";
	rename -uid "5C848F5B-408A-E7FE-DFFE-FD825D407E7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.17417772921662866;
createNode animCurveTU -n "pCylinder4_scaleY";
	rename -uid "6A280423-4F9B-0E8A-8E46-69B9FF9AA4E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.34513352552160664;
createNode animCurveTU -n "pCylinder4_scaleZ";
	rename -uid "B0D5CAFE-49A2-5571-A569-9FBEB2DB1A9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.17417772921662866;
createNode groupId -n "groupId38";
	rename -uid "A7913957-4930-8AB1-A346-BF8C7F515FBD";
	setAttr ".ihi" 0;
createNode substanceNode -n "substanceNode1";
	rename -uid "BE91971B-4B6A-D827-0F2B-BE8821C24577";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	setAttr ".sbs" -type "string" "C:/Users/Jonat/OneDrive/Documents/Substance Material/tofuscales.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"0\" >\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture1";
	rename -uid "7CD3B541-4DC0-529D-96BE-FA9AB77D59A4";
createNode substanceOutputNode -n "Steel_Rust_and_Wear_basecolor";
	rename -uid "33447A4A-412E-BE56-C2A7-8BA7EED27EAF";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Steel_Rust_and_Wear_basecolor.exr";
createNode file -n "file1";
	rename -uid "EABD46CC-4EB8-39DD-423C-C4A45BF23FB5";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Steel_Rust_and_Wear_metallic";
	rename -uid "B8AE06B1-4037-8BE6-0536-E3A3B263BE7F";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Steel_Rust_and_Wear_metallic.exr";
createNode file -n "file2";
	rename -uid "5F4EF4FC-442B-E63B-B5F7-9A8216CB03C6";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Steel_Rust_and_Wear_normal";
	rename -uid "2BAE10E0-4746-C7B8-2659-5B9798C8321A";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Steel_Rust_and_Wear_normal.exr";
createNode file -n "file3";
	rename -uid "45DB68C1-40AD-FBCB-97E7-C48CE2E6363C";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Steel_Rust_and_Wear_height";
	rename -uid "E4264C9B-4A74-0E4B-6C41-9E94096B5603";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Steel_Rust_and_Wear_height.exr";
createNode file -n "file4";
	rename -uid "92B285B0-4638-9018-8631-5E949CB054BE";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Steel_Rust_and_Wear_roughness";
	rename -uid "953794D5-4943-11B8-5B87-2EB0CDF73A31";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Steel_Rust_and_Wear_roughness.exr";
createNode file -n "file5";
	rename -uid "E80A3A95-425F-0D14-4B54-77A85B672A39";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "ED2272D9-4BE5-77C6-27D8-AEAE6CFE3B9E";
createNode aiStandardSurface -n "Green";
	rename -uid "C73A28D6-45AB-DF54-FEA4-119E4EFA8170";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set1";
	rename -uid "63C1FC75-4DEF-A497-D9C5-CF894254F2AD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "C348426B-48D4-E9E7-BDE1-FEBE4D6F92ED";
createNode displacementShader -n "displacementShader1";
	rename -uid "03C0F7B2-40CF-7565-E60D-42ADDE3F586A";
createNode bump2d -n "bump2d1";
	rename -uid "E85FD088-4009-DF5A-14D3-C0871ECAF320";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 4.9999999e-05 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode substanceNode -n "substanceNode2";
	rename -uid "CC9245A4-44BB-340F-04DC-6486A98BDC0D";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_color" -ln "input_color" 
		-nn "Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_colorr" -ln "input_colorR" 
		-nn "Color" -dv 0.54022997617721558 -smn 0 -smx 0 -at "float" -p "input_color";
	addAttr -r false -ci true -h true -k true -sn "input_colorg" -ln "input_colorG" 
		-nn "Color" -dv 0.54022997617721558 -smn 0 -smx 0 -at "float" -p "input_color";
	addAttr -r false -ci true -h true -k true -sn "input_colorb" -ln "input_colorB" 
		-nn "Color" -dv 0.54022997617721558 -smn 0 -smx 0 -at "float" -p "input_color";
	addAttr -r false -ci true -h true -k true -sn "input_roughness" -ln "input_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 0.34999999403953552 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_weathering" -ln "input_weathering" 
		-nn "Weathering" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_rust" -ln "input_rust" -nn "Rust" 
		-ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_tile" -ln "input_tile" -nn "Tile" 
		-ct "substance_input" -dv 1 -smn 1 -smx 3 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_pattern_type" -ln "input_pattern_type" 
		-nn "Type" -ct "substance_input" -dv 1 -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 0.20000000298023224 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	setAttr ".sbs" -type "string" "C:/Users/Jonat/OneDrive/Documents/Substance Material/iron_diamond_armor.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"0\" >\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture2";
	rename -uid "93582474-4540-D28C-7051-94A3A8558469";
createNode substanceOutputNode -n "Iron_Diamond_Armor_basecolor";
	rename -uid "322F3CD3-4B9E-78B5-AE49-F0B04668F1E1";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Iron_Diamond_Armor_basecolor.exr";
createNode file -n "file6";
	rename -uid "1914D442-40D6-D6D9-0DF3-9395C3AD36AE";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Iron_Diamond_Armor_metallic";
	rename -uid "6DC078AE-4A15-61A7-F63E-2C86754E72EE";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Iron_Diamond_Armor_metallic.exr";
createNode file -n "file7";
	rename -uid "F09543B7-49B8-C95A-403B-5C9221B946DE";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Iron_Diamond_Armor_normal";
	rename -uid "688C88F4-428E-39ED-AADD-1EBD5205E5F2";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Iron_Diamond_Armor_normal.exr";
createNode file -n "file8";
	rename -uid "A7B354DC-4EC7-48C1-C982-65AD2A4D0734";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Iron_Diamond_Armor_height";
	rename -uid "16587D08-4BC1-89C7-CD7E-2CAFADBA576C";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Iron_Diamond_Armor_height.exr";
createNode file -n "file9";
	rename -uid "875E0A6B-4514-1759-F331-1EB6C7576E52";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Iron_Diamond_Armor_roughness";
	rename -uid "3AA5E454-4D97-C8E2-2117-CEB292E6478F";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Iron_Diamond_Armor_roughness.exr";
createNode file -n "file10";
	rename -uid "DFE7381E-427E-DE69-C47C-BDBECE37C276";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide2";
	rename -uid "6A49E873-4480-7DC5-07C0-3C968C548BE4";
createNode aiStandardSurface -n "Steel_armor";
	rename -uid "C4630761-4454-9348-F31D-96874AA38D68";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set2";
	rename -uid "AD660EBA-47DA-0DBF-E0A9-62B4D315A095";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "4282A96D-408E-B6A9-20C7-6AB6B6A1107C";
createNode bump2d -n "bump2d2";
	rename -uid "2B27747E-4406-4ADA-27F1-2B80EC82BA6D";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader2";
	rename -uid "DC3D1636-46B9-779D-481A-7DA49FF75E96";
createNode lambert -n "lambert2";
	rename -uid "973A4708-4153-3A06-E730-FC8DE09FAD8F";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "4A49A955-449C-5BA8-B517-C2A412766859";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "F01EC937-4221-C646-5CE6-1EBE1184476C";
createNode substanceNode -n "substanceNode3";
	rename -uid "9C91869A-4DD5-10CA-CDBD-C58A4D586112";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	addAttr -w false -s false -ci true -sn "output_normalScale" -ln "output_normalScale" 
		-nn "Normal scale" -ct "substance_output_value" -at "float";
	addAttr -w false -s false -ci true -sn "output_heightScale" -ln "output_heightScale" 
		-nn "Height scale" -ct "substance_output_value" -at "float";
	addAttr -w false -s false -ci true -sn "output_heightLevel" -ln "output_heightLevel" 
		-nn "Height level" -ct "substance_output_value" -at "float";
	addAttr -w false -s false -ci true -sn "output_emissionIntensity" -ln "output_emissionIntensity" 
		-nn "Emission intensity" -ct "substance_output_value" -at "float";
	addAttr -w false -s false -ci true -sn "output_scatteringDistance" -ln "output_scatteringDistance" 
		-nn "Scattering distance" -ct "substance_output_value" -at "float";
	addAttr -w false -s false -ci true -sn "output_redShift" -ln "output_redShift" -nn "Red shift" 
		-ct "substance_output_value" -at "float";
	addAttr -w false -s false -ci true -sn "output_rayleighScattering" -ln "output_rayleighScattering" 
		-nn "Rayleigh scattering" -ct "substance_output_value" -at "float";
	addAttr -w false -s false -ci true -sn "output_absorptionDistance" -ln "output_absorptionDistance" 
		-nn "Absorption distance" -ct "substance_output_value" -at "float";
	addAttr -w false -s false -ci true -sn "output_indexOfRefraction" -ln "output_indexOfRefraction" 
		-nn "Index of refraction" -ct "substance_output_value" -at "float";
	addAttr -w false -s false -ci true -sn "output_coatIndexOfRefraction" -ln "output_coatIndexOfRefraction" 
		-nn "Coat index of refraction" -ct "substance_output_value" -at "float";
	addAttr -w false -s false -ci true -sn "output_coatNormalScale" -ln "output_coatNormalScale" 
		-nn "Coat normal scale" -ct "substance_output_value" -at "float";
	addAttr -w false -s false -ci true -sn "output_combineNormalAndHeight" -ln "output_combineNormalAndHeight" 
		-nn "Combine normal and height" -ct "substance_output_value" -min 0 -max 1 -at "bool";
	addAttr -w false -s false -ci true -sn "output_subsurfaceScattering" -ln "output_subsurfaceScattering" 
		-nn "Subsurface scattering" -ct "substance_output_value" -min 0 -max 1 -at "bool";
	setAttr ".sbs" -type "string" "C:/Users/Jonat/OneDrive/Documents/Substance Material/gold-clean.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"0\" >\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture3";
	rename -uid "50E95428-441B-782D-EC3B-9C910E1572A9";
createNode substanceOutputNode -n "Substance_graph_basecolor";
	rename -uid "D8A4800C-499C-B0B9-5E78-28ADC044F3E1";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Substance_graph_basecolor.exr";
createNode file -n "file11";
	rename -uid "6194367B-4853-8A0B-4AC4-7DA1B89EF698";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Substance_graph_metallic";
	rename -uid "9E0B67CA-4214-FCCD-1F51-FD859ED01B3C";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Substance_graph_metallic.exr";
createNode file -n "file12";
	rename -uid "17AA4A32-4DD1-28DD-C7BF-2F8C975A7419";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Substance_graph_normal";
	rename -uid "39036BAA-449C-4A3E-D06D-EABAF8919310";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Substance_graph_normal.exr";
createNode file -n "file13";
	rename -uid "B2089B42-4520-607D-E058-D291F0FB2F1A";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Substance_graph_height";
	rename -uid "EC9E24B1-4DB8-13D0-D975-A2ADCB6193DE";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Substance_graph_height.exr";
createNode file -n "file14";
	rename -uid "7E618711-4CB6-85FA-5E86-1F92085CB79D";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Substance_graph_roughness";
	rename -uid "FEF2815A-461C-BC2F-5B0E-ADB17E9172DF";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Substance_graph_roughness.exr";
createNode file -n "file15";
	rename -uid "B6C500BE-41A8-4312-EA26-91AA611115A7";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide3";
	rename -uid "8BD73EB7-4E66-F2E1-98D0-50B5193E8A7D";
createNode aiStandardSurface -n "Gold1";
	rename -uid "CC20661F-4009-69BC-ECC4-04BA76256434";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set3";
	rename -uid "28AE2FBB-4579-815D-CF16-ED99DED1BAA0";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "82B421CA-434C-3C66-0DC4-ADBC2D5DF4A6";
createNode bump2d -n "bump2d3";
	rename -uid "95934DE0-426B-697C-12A5-0EA9E4AA1EFE";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-05 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader3";
	rename -uid "43EE14BD-4449-DD2A-6110-F99117CD68D9";
createNode substanceNode -n "substanceNode4";
	rename -uid "A58F9B42-4B21-C0E7-E64B-BCB7D4395A94";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	setAttr ".sbs" -type "string" "C:/Users/Jonat/OneDrive/Documents/Substance Material/diamond.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"0\" >\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture4";
	rename -uid "9C8BC226-4A7A-25F9-1798-DFBC2A1E54E8";
createNode substanceOutputNode -n "Diamond_basecolor";
	rename -uid "9A7D41D9-4531-D371-2C62-B6A818A95B74";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Diamond_basecolor.exr";
createNode file -n "file16";
	rename -uid "9E6926B6-476A-D2A8-7251-9EBE625D3736";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Diamond_ambientocclusion";
	rename -uid "10A14348-4381-15CA-F396-6CA437171E29";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Diamond_ambientocclusion.exr";
createNode file -n "file17";
	rename -uid "BDD2F1EF-48F1-CCDB-EE23-6B896B90C0C6";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Diamond_metallic";
	rename -uid "BC0F5AA2-44CE-EA76-9CF2-74AE589EC986";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Diamond_metallic.png";
createNode file -n "file18";
	rename -uid "C20F9487-464A-EFED-27A1-D2893A0B1B55";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Diamond_normal";
	rename -uid "76FEE05F-47BC-45B4-C0B0-C592A46C5850";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Diamond_normal.exr";
createNode file -n "file19";
	rename -uid "6C024112-4A33-36C9-9627-6986DC6BF0A3";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Diamond_height";
	rename -uid "F5E1151C-42A6-0D08-E157-9498777CF8AA";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Diamond_height.exr";
createNode file -n "file20";
	rename -uid "E971E745-4A74-9D6A-D5BE-14A609A3A06E";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Diamond_roughness";
	rename -uid "8A4EDE3D-4494-3FA0-89E4-A2AB77DA3A24";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Diamond_roughness.png";
createNode file -n "file21";
	rename -uid "428E8C0B-4DB1-B33B-1C60-18A40ABD9202";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide4";
	rename -uid "0739E0B3-465C-FD07-92EE-D5925A54A73D";
createNode aiStandardSurface -n "Diamond";
	rename -uid "931CE0B1-4803-7D66-6BE4-F588B4F6D5BB";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set4";
	rename -uid "BE5FF550-4751-574A-3B05-65961A7AE502";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "E7751712-4EAE-197A-EAC9-4F80AFAC8791";
createNode bump2d -n "bump2d4";
	rename -uid "05B0FC31-4B69-B369-10DF-D38C88BF6678";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-05 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader4";
	rename -uid "F5EDE329-414F-7336-B329-10B15E820CE9";
createNode substanceNode -n "substanceNode5";
	rename -uid "0179B4C6-4ABE-2ED3-2962-35A5AACE1D8D";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_Colour" -ln "input_Colour" 
		-nn "Colour" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_Colourr" -ln "input_ColourR" 
		-dv 0.5 -smn 1 -smx 0 -at "float" -p "input_Colour";
	addAttr -r false -ci true -h true -k true -sn "input_Colourg" -ln "input_ColourG" 
		-smn 0 -smx 0 -at "float" -p "input_Colour";
	addAttr -r false -ci true -h true -k true -sn "input_Colourb" -ln "input_ColourB" 
		-smn 0 -smx 0 -at "float" -p "input_Colour";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	setAttr ".sbs" -type "string" "C:/Users/Jonat/OneDrive/Documents/Substance Material/glitter-metal.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"0\" >\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture5";
	rename -uid "C449643D-4CAA-F0CE-124D-8585F7633828";
createNode substanceOutputNode -n "Glitter_Metal_basecolor";
	rename -uid "48E877B4-4CB3-AD40-331A-6A892B8F6229";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Glitter_Metal_basecolor.png";
createNode file -n "file22";
	rename -uid "2DDD5E76-406D-F9BE-D91F-F89377B7D6B8";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Glitter_Metal_ambientocclusion";
	rename -uid "A4A21261-442F-4A8A-8C09-2F887136546E";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Glitter_Metal_ambientocclusion.png";
createNode file -n "file23";
	rename -uid "D01CF0D2-4B9D-66EE-FD2A-97AE70DEF5ED";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Glitter_Metal_metallic";
	rename -uid "31DC05CF-4565-3143-EBEB-AF88C0AE6203";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Glitter_Metal_metallic.png";
createNode file -n "file24";
	rename -uid "290973F4-4B98-209E-E609-A7A53E822F37";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Glitter_Metal_normal";
	rename -uid "5248E607-473C-F139-3E9B-C6A04372E2CA";
	setAttr ".os" -type "long2" 4096 4096 ;
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Glitter_Metal_normal.png";
createNode file -n "file25";
	rename -uid "72F2642B-48EC-8EAB-94D1-97B4CAFF99B4";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Glitter_Metal_height";
	rename -uid "5C33AADA-4B35-78BE-0781-32B161C41FCB";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Glitter_Metal_height.png";
createNode file -n "file26";
	rename -uid "35ADE74E-4FD2-A4A2-8236-559E79454322";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Glitter_Metal_roughness";
	rename -uid "E0EC5C32-4610-0AD8-EC9F-7EB0E962166E";
	setAttr ".cpth" -type "string" "C:/Users/Jonat/OneDrive/Documents/maya\\2024\\substance/baked_images/Glitter_Metal_roughness.png";
createNode file -n "file27";
	rename -uid "D5148C85-4B2C-2E89-4609-29BC9A96CBEA";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide5";
	rename -uid "97851AB9-4F80-F64F-1EC0-E4BB226655D5";
createNode aiStandardSurface -n "aiStandardSurface1";
	rename -uid "C07C7E70-4E19-D7B0-EE1B-459782FE0D4F";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set5";
	rename -uid "D088B8D4-481F-C70C-D18C-F7A20456678B";
	setAttr ".ihi" 0;
	setAttr -s 13 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "AFDC15AD-49DA-5E7E-7ADB-F3866A4982E3";
createNode bump2d -n "bump2d5";
	rename -uid "232109CE-4BD8-3768-B5BC-79A5F52ABF27";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 1.9999999e-05 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader5";
	rename -uid "B7EAEE93-458C-F0BE-F962-4A810108415C";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "257506DA-4403-9CBA-95CE-A5AD8F8F66C0";
	setAttr -s 2 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_3";
	setAttr ".tgi[0].vl" -type "double2" -2427.9303064531209 -621.4285467352197 ;
	setAttr ".tgi[0].vh" -type "double2" 2187.4541255325953 628.57140359424511 ;
	setAttr -s 19 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -121.42857360839844;
	setAttr ".tgi[0].ni[0].y" -74.285713195800781;
	setAttr ".tgi[0].ni[0].nvs" 1922;
	setAttr ".tgi[0].ni[1].x" 208.57142639160156;
	setAttr ".tgi[0].ni[1].y" -564.28570556640625;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -428.57144165039062;
	setAttr ".tgi[0].ni[2].y" 1331.4285888671875;
	setAttr ".tgi[0].ni[2].nvs" 1922;
	setAttr ".tgi[0].ni[3].x" -428.57144165039062;
	setAttr ".tgi[0].ni[3].y" 861.4285888671875;
	setAttr ".tgi[0].ni[3].nvs" 1922;
	setAttr ".tgi[0].ni[4].x" 208.57142639160156;
	setAttr ".tgi[0].ni[4].y" -388.57144165039062;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 208.57142639160156;
	setAttr ".tgi[0].ni[5].y" 104.28571319580078;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" -1047.142822265625;
	setAttr ".tgi[0].ni[6].y" -151.42857360839844;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 864.28570556640625;
	setAttr ".tgi[0].ni[7].y" -552.85711669921875;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" -121.42857360839844;
	setAttr ".tgi[0].ni[8].y" 101.42857360839844;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 515.71429443359375;
	setAttr ".tgi[0].ni[9].y" -228.57142639160156;
	setAttr ".tgi[0].ni[9].nvs" 2387;
	setAttr ".tgi[0].ni[10].x" 515.71429443359375;
	setAttr ".tgi[0].ni[10].y" -922.85711669921875;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" -121.42857360839844;
	setAttr ".tgi[0].ni[11].y" -544.28570556640625;
	setAttr ".tgi[0].ni[11].nvs" 1922;
	setAttr ".tgi[0].ni[12].x" -121.42857360839844;
	setAttr ".tgi[0].ni[12].y" 381.42855834960938;
	setAttr ".tgi[0].ni[12].nvs" 1923;
	setAttr ".tgi[0].ni[13].x" -121.42857360839844;
	setAttr ".tgi[0].ni[13].y" 557.14288330078125;
	setAttr ".tgi[0].ni[13].nvs" 1923;
	setAttr ".tgi[0].ni[14].x" 208.57142639160156;
	setAttr ".tgi[0].ni[14].y" -1092.857177734375;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" -740;
	setAttr ".tgi[0].ni[15].y" -2.8571429252624512;
	setAttr ".tgi[0].ni[15].nvs" 1970;
	setAttr ".tgi[0].ni[16].x" 208.57142639160156;
	setAttr ".tgi[0].ni[16].y" -235.71427917480469;
	setAttr ".tgi[0].ni[16].nvs" 1923;
	setAttr ".tgi[0].ni[17].x" -428.57144165039062;
	setAttr ".tgi[0].ni[17].y" 391.42855834960938;
	setAttr ".tgi[0].ni[17].nvs" 1922;
	setAttr ".tgi[0].ni[18].x" -121.42857360839844;
	setAttr ".tgi[0].ni[18].y" -1014.2857055664062;
	setAttr ".tgi[0].ni[18].nvs" 1922;
	setAttr ".tgi[1].tn" -type "string" "Untitled_4";
	setAttr ".tgi[1].vl" -type "double2" -707.71076261641474 -688.53754363167559 ;
	setAttr ".tgi[1].vh" -type "double2" 802.15156270814816 684.96611520216288 ;
	setAttr -s 19 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" -460;
	setAttr ".tgi[1].ni[0].y" 861.4285888671875;
	setAttr ".tgi[1].ni[0].nvs" 1922;
	setAttr ".tgi[1].ni[1].x" 232.85714721679688;
	setAttr ".tgi[1].ni[1].y" -388.57144165039062;
	setAttr ".tgi[1].ni[1].nvs" 1923;
	setAttr ".tgi[1].ni[2].x" -1078.5714111328125;
	setAttr ".tgi[1].ni[2].y" -151.42857360839844;
	setAttr ".tgi[1].ni[2].nvs" 1923;
	setAttr ".tgi[1].ni[3].x" 545.71429443359375;
	setAttr ".tgi[1].ni[3].y" -228.57142639160156;
	setAttr ".tgi[1].ni[3].nvs" 2387;
	setAttr ".tgi[1].ni[4].x" -771.4285888671875;
	setAttr ".tgi[1].ni[4].y" -2.8571429252624512;
	setAttr ".tgi[1].ni[4].nvs" 1970;
	setAttr ".tgi[1].ni[5].x" -460;
	setAttr ".tgi[1].ni[5].y" 1331.4285888671875;
	setAttr ".tgi[1].ni[5].nvs" 1922;
	setAttr ".tgi[1].ni[6].x" 232.85714721679688;
	setAttr ".tgi[1].ni[6].y" -1092.857177734375;
	setAttr ".tgi[1].ni[6].nvs" 1923;
	setAttr ".tgi[1].ni[7].x" 545.71429443359375;
	setAttr ".tgi[1].ni[7].y" -922.85711669921875;
	setAttr ".tgi[1].ni[7].nvs" 1923;
	setAttr ".tgi[1].ni[8].x" -128.57142639160156;
	setAttr ".tgi[1].ni[8].y" -74.285713195800781;
	setAttr ".tgi[1].ni[8].nvs" 1922;
	setAttr ".tgi[1].ni[9].x" 894.28570556640625;
	setAttr ".tgi[1].ni[9].y" -552.85711669921875;
	setAttr ".tgi[1].ni[9].nvs" 1923;
	setAttr ".tgi[1].ni[10].x" 232.85714721679688;
	setAttr ".tgi[1].ni[10].y" -235.71427917480469;
	setAttr ".tgi[1].ni[10].nvs" 1923;
	setAttr ".tgi[1].ni[11].x" -128.57142639160156;
	setAttr ".tgi[1].ni[11].y" 101.42857360839844;
	setAttr ".tgi[1].ni[11].nvs" 1923;
	setAttr ".tgi[1].ni[12].x" -128.57142639160156;
	setAttr ".tgi[1].ni[12].y" -1014.2857055664062;
	setAttr ".tgi[1].ni[12].nvs" 1922;
	setAttr ".tgi[1].ni[13].x" -128.57142639160156;
	setAttr ".tgi[1].ni[13].y" 557.14288330078125;
	setAttr ".tgi[1].ni[13].nvs" 1923;
	setAttr ".tgi[1].ni[14].x" -128.57142639160156;
	setAttr ".tgi[1].ni[14].y" 381.42855834960938;
	setAttr ".tgi[1].ni[14].nvs" 1923;
	setAttr ".tgi[1].ni[15].x" -460;
	setAttr ".tgi[1].ni[15].y" 391.42855834960938;
	setAttr ".tgi[1].ni[15].nvs" 1922;
	setAttr ".tgi[1].ni[16].x" 232.85714721679688;
	setAttr ".tgi[1].ni[16].y" -564.28570556640625;
	setAttr ".tgi[1].ni[16].nvs" 1923;
	setAttr ".tgi[1].ni[17].x" 232.85714721679688;
	setAttr ".tgi[1].ni[17].y" 104.28571319580078;
	setAttr ".tgi[1].ni[17].nvs" 1923;
	setAttr ".tgi[1].ni[18].x" -128.57142639160156;
	setAttr ".tgi[1].ni[18].y" -544.28570556640625;
	setAttr ".tgi[1].ni[18].nvs" 1922;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "CB186424-4F66-A3D0-D7A3-828F702EF5ED";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -785.71425449280639 -96.428567596844417 ;
	setAttr ".tgi[0].vh" -type "double2" 757.14282705670462 98.809519883186269 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -568.5714111328125;
	setAttr ".tgi[0].ni[0].y" 34.285713195800781;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -261.42855834960938;
	setAttr ".tgi[0].ni[1].y" 34.285713195800781;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 45.714286804199219;
	setAttr ".tgi[0].ni[2].y" 34.285713195800781;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 352.85714721679688;
	setAttr ".tgi[0].ni[3].y" 34.285713195800781;
	setAttr ".tgi[0].ni[3].nvs" 18304;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "49576F96-4EBC-1A92-05B8-D1825C53E420";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "F3F7E863-4979-0B63-1E4D-7A85283FE74E";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "C0EE3F03-43BD-5087-4DDA-91A04F31BBF5";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "C2FB183D-4238-D713-6F7B-D49A2A73CB81";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "60DE223F-4BB5-51BF-5719-1BB29D3A5BEC";
	setAttr ".txf" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 0 0 0 1;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "71C70E20-4DE3-6897-F8F6-5EA7799E5E56";
	setAttr ".txf" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 0 0 0 1;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "9C36E4EB-4D15-64C6-F870-1C83D80F835C";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "7A70B9BE-46D7-E4AC-A612-CAAAB481D6C2";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "3977D358-45F0-E31E-7698-D99464B64A3B";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "319160FF-47C3-19C0-6749-18A4677DF360";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "A8256276-404E-3BE5-379B-B9ABDA958A08";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "965D26FF-4F34-5A90-8A66-B8A00163BC2D";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle11";
	rename -uid "BD41017D-4BA2-A0F5-286B-33AED78F0AB8";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle12";
	rename -uid "8A50DFC1-4283-6F84-98BE-C8ABA39A9933";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle13";
	rename -uid "CB6DE357-4455-C3E1-139D-40B59015ABA7";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry3";
	rename -uid "2BFFA385-4C6C-48ED-4BA8-32AFE1B052EF";
	setAttr ".txf" -type "matrix" 0 0.33868375034521986 0 0 -0.33868375034521986 0 0 0
		 0 0 0.33868375034521986 0 0 0 0 1;
createNode transformGeometry -n "transformGeometry4";
	rename -uid "061EBBEF-47E0-1E85-C714-EB917713D246";
	setAttr ".txf" -type "matrix" 0 0.33868375034521986 0 0 -0.33868375034521986 0 0 0
		 0 0 0.33868375034521986 0 0 0 0 1;
createNode transformGeometry -n "transformGeometry5";
	rename -uid "F8194FBD-4DA2-C0C1-72D1-70AE45A6EEBD";
	setAttr ".txf" -type "matrix" 0 0.33868375034521986 0 0 -0.33868375034521986 0 0 0
		 0 0 0.33868375034521986 0 0 0 0 1;
createNode transformGeometry -n "transformGeometry6";
	rename -uid "3F11239E-4338-A26D-72C8-27A96D14C929";
	setAttr ".txf" -type "matrix" 0 0.33868375034521986 0 0 -0.33868375034521986 0 0 0
		 0 0 0.33868375034521986 0 0 0 0 1;
createNode transformGeometry -n "transformGeometry7";
	rename -uid "7CA42B44-4818-EB69-1405-3C85D51C6165";
	setAttr ".txf" -type "matrix" 0 0.33868375034521986 0 0 -0.33868375034521986 0 0 0
		 0 0 0.33868375034521986 0 0 0 0 1;
createNode transformGeometry -n "transformGeometry8";
	rename -uid "E6A8B6E8-49BE-7E72-D8E5-6C84FF3B92C3";
	setAttr ".txf" -type "matrix" 0 0.33868375034521986 0 0 -0.33868375034521986 0 0 0
		 0 0 0.33868375034521986 0 0 0 0 1;
createNode transformGeometry -n "transformGeometry9";
	rename -uid "ACAF20C7-463C-85A4-08A2-11A2D23A5952";
	setAttr ".txf" -type "matrix" 0 0.33868375034521986 0 0 -0.33868375034521986 0 0 0
		 0 0 0.33868375034521986 0 0 0 0 1;
createNode transformGeometry -n "transformGeometry10";
	rename -uid "7C3DB80C-4290-C2EA-4E02-E6B833C6E3F0";
	setAttr ".txf" -type "matrix" 0 0.33868375034521986 0 0 -0.33868375034521986 0 0 0
		 0 0 0.33868375034521986 0 0 0 0 1;
createNode transformGeometry -n "transformGeometry11";
	rename -uid "D3174700-479E-3348-22BF-80A9CF361B07";
	setAttr ".txf" -type "matrix" 0 0.33868375034521986 0 0 -0.33868375034521986 0 0 0
		 0 0 0.33868375034521986 0 0 0 0 1;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 16 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 15 ".u";
select -ne :defaultRenderingList1;
select -ne :lightList1;
	setAttr -s 3 ".l";
select -ne :defaultTextureList1;
	setAttr -s 59 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
	setAttr -s 3 ".dsm";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Main_Jnt_scaleConstraint1.csx" "Main_Jnt.sx";
connectAttr "Main_Jnt_scaleConstraint1.csy" "Main_Jnt.sy";
connectAttr "Main_Jnt_scaleConstraint1.csz" "Main_Jnt.sz";
connectAttr "Main_Jnt_parentConstraint1.ctx" "Main_Jnt.tx";
connectAttr "Main_Jnt_parentConstraint1.cty" "Main_Jnt.ty";
connectAttr "Main_Jnt_parentConstraint1.ctz" "Main_Jnt.tz";
connectAttr "Main_Jnt_parentConstraint1.crx" "Main_Jnt.rx";
connectAttr "Main_Jnt_parentConstraint1.cry" "Main_Jnt.ry";
connectAttr "Main_Jnt_parentConstraint1.crz" "Main_Jnt.rz";
connectAttr "Main_Jnt.s" "Stem_Jnt.is";
connectAttr "Stem_Jnt_scaleConstraint1.csx" "Stem_Jnt.sx";
connectAttr "Stem_Jnt_scaleConstraint1.csy" "Stem_Jnt.sy";
connectAttr "Stem_Jnt_scaleConstraint1.csz" "Stem_Jnt.sz";
connectAttr "Stem_Jnt_parentConstraint1.ctx" "Stem_Jnt.tx";
connectAttr "Stem_Jnt_parentConstraint1.cty" "Stem_Jnt.ty";
connectAttr "Stem_Jnt_parentConstraint1.ctz" "Stem_Jnt.tz";
connectAttr "Stem_Jnt_parentConstraint1.crx" "Stem_Jnt.rx";
connectAttr "Stem_Jnt_parentConstraint1.cry" "Stem_Jnt.ry";
connectAttr "Stem_Jnt_parentConstraint1.crz" "Stem_Jnt.rz";
connectAttr "Stem_Jnt.s" "Arm_Jnt.is";
connectAttr "Arm_Jnt_scaleConstraint1.csx" "Arm_Jnt.sx";
connectAttr "Arm_Jnt_scaleConstraint1.csy" "Arm_Jnt.sy";
connectAttr "Arm_Jnt_scaleConstraint1.csz" "Arm_Jnt.sz";
connectAttr "Arm_Jnt_parentConstraint1.ctx" "Arm_Jnt.tx";
connectAttr "Arm_Jnt_parentConstraint1.cty" "Arm_Jnt.ty";
connectAttr "Arm_Jnt_parentConstraint1.ctz" "Arm_Jnt.tz";
connectAttr "Arm_Jnt_parentConstraint1.crx" "Arm_Jnt.rx";
connectAttr "Arm_Jnt_parentConstraint1.cry" "Arm_Jnt.ry";
connectAttr "Arm_Jnt_parentConstraint1.crz" "Arm_Jnt.rz";
connectAttr "Arm_Jnt.s" "Robot_Wrist_Jnt.is";
connectAttr "Robot_Wrist_Jnt_parentConstraint1.ctx" "Robot_Wrist_Jnt.tx";
connectAttr "Robot_Wrist_Jnt_parentConstraint1.cty" "Robot_Wrist_Jnt.ty";
connectAttr "Robot_Wrist_Jnt_parentConstraint1.ctz" "Robot_Wrist_Jnt.tz";
connectAttr "Robot_Wrist_Jnt_parentConstraint1.crx" "Robot_Wrist_Jnt.rx";
connectAttr "Robot_Wrist_Jnt_parentConstraint1.cry" "Robot_Wrist_Jnt.ry";
connectAttr "Robot_Wrist_Jnt_parentConstraint1.crz" "Robot_Wrist_Jnt.rz";
connectAttr "Robot_Wrist_Jnt_scaleConstraint1.csx" "Robot_Wrist_Jnt.sx";
connectAttr "Robot_Wrist_Jnt_scaleConstraint1.csy" "Robot_Wrist_Jnt.sy";
connectAttr "Robot_Wrist_Jnt_scaleConstraint1.csz" "Robot_Wrist_Jnt.sz";
connectAttr "Robot_Wrist_Jnt.ro" "Robot_Wrist_Jnt_parentConstraint1.cro";
connectAttr "Robot_Wrist_Jnt.pim" "Robot_Wrist_Jnt_parentConstraint1.cpim";
connectAttr "Robot_Wrist_Jnt.rp" "Robot_Wrist_Jnt_parentConstraint1.crp";
connectAttr "Robot_Wrist_Jnt.rpt" "Robot_Wrist_Jnt_parentConstraint1.crt";
connectAttr "Robot_Wrist_Jnt.jo" "Robot_Wrist_Jnt_parentConstraint1.cjo";
connectAttr "Robot_Wrist_Ctrl.t" "Robot_Wrist_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Robot_Wrist_Ctrl.rp" "Robot_Wrist_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Robot_Wrist_Ctrl.rpt" "Robot_Wrist_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Robot_Wrist_Ctrl.r" "Robot_Wrist_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Robot_Wrist_Ctrl.ro" "Robot_Wrist_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Robot_Wrist_Ctrl.s" "Robot_Wrist_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Robot_Wrist_Ctrl.pm" "Robot_Wrist_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Robot_Wrist_Jnt_parentConstraint1.w0" "Robot_Wrist_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Robot_Wrist_Jnt.ssc" "Robot_Wrist_Jnt_scaleConstraint1.tsc";
connectAttr "Robot_Wrist_Jnt.pim" "Robot_Wrist_Jnt_scaleConstraint1.cpim";
connectAttr "Robot_Wrist_Ctrl.s" "Robot_Wrist_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Robot_Wrist_Ctrl.pm" "Robot_Wrist_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Robot_Wrist_Jnt_scaleConstraint1.w0" "Robot_Wrist_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Robot_Wrist_Jnt.tx" "effector1.tx";
connectAttr "Robot_Wrist_Jnt.ty" "effector1.ty";
connectAttr "Robot_Wrist_Jnt.tz" "effector1.tz";
connectAttr "Robot_Wrist_Jnt.opm" "effector1.opm";
connectAttr "Arm_Jnt.ro" "Arm_Jnt_parentConstraint1.cro";
connectAttr "Arm_Jnt.pim" "Arm_Jnt_parentConstraint1.cpim";
connectAttr "Arm_Jnt.rp" "Arm_Jnt_parentConstraint1.crp";
connectAttr "Arm_Jnt.rpt" "Arm_Jnt_parentConstraint1.crt";
connectAttr "Arm_Jnt.jo" "Arm_Jnt_parentConstraint1.cjo";
connectAttr "Robot_Arm_Ctrl.t" "Arm_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Robot_Arm_Ctrl.rp" "Arm_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Robot_Arm_Ctrl.rpt" "Arm_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Robot_Arm_Ctrl.r" "Arm_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Robot_Arm_Ctrl.ro" "Arm_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Robot_Arm_Ctrl.s" "Arm_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Robot_Arm_Ctrl.pm" "Arm_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Arm_Jnt_parentConstraint1.w0" "Arm_Jnt_parentConstraint1.tg[0].tw";
connectAttr "Arm_Jnt.ssc" "Arm_Jnt_scaleConstraint1.tsc";
connectAttr "Arm_Jnt.pim" "Arm_Jnt_scaleConstraint1.cpim";
connectAttr "Robot_Arm_Ctrl.s" "Arm_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Robot_Arm_Ctrl.pm" "Arm_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Arm_Jnt_scaleConstraint1.w0" "Arm_Jnt_scaleConstraint1.tg[0].tw";
connectAttr "Stem_Jnt.ro" "Stem_Jnt_parentConstraint1.cro";
connectAttr "Stem_Jnt.pim" "Stem_Jnt_parentConstraint1.cpim";
connectAttr "Stem_Jnt.rp" "Stem_Jnt_parentConstraint1.crp";
connectAttr "Stem_Jnt.rpt" "Stem_Jnt_parentConstraint1.crt";
connectAttr "Stem_Jnt.jo" "Stem_Jnt_parentConstraint1.cjo";
connectAttr "Robot_Stem_Ctrl.t" "Stem_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Robot_Stem_Ctrl.rp" "Stem_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Robot_Stem_Ctrl.rpt" "Stem_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Robot_Stem_Ctrl.r" "Stem_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Robot_Stem_Ctrl.ro" "Stem_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Robot_Stem_Ctrl.s" "Stem_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Robot_Stem_Ctrl.pm" "Stem_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Stem_Jnt_parentConstraint1.w0" "Stem_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Stem_Jnt.ssc" "Stem_Jnt_scaleConstraint1.tsc";
connectAttr "Stem_Jnt.pim" "Stem_Jnt_scaleConstraint1.cpim";
connectAttr "Robot_Stem_Ctrl.s" "Stem_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Robot_Stem_Ctrl.pm" "Stem_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Stem_Jnt_scaleConstraint1.w0" "Stem_Jnt_scaleConstraint1.tg[0].tw";
connectAttr "Main_Jnt.ro" "Main_Jnt_parentConstraint1.cro";
connectAttr "Main_Jnt.pim" "Main_Jnt_parentConstraint1.cpim";
connectAttr "Main_Jnt.rp" "Main_Jnt_parentConstraint1.crp";
connectAttr "Main_Jnt.rpt" "Main_Jnt_parentConstraint1.crt";
connectAttr "Main_Jnt.jo" "Main_Jnt_parentConstraint1.cjo";
connectAttr "Overall_Ctrl.t" "Main_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Overall_Ctrl.rp" "Main_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Overall_Ctrl.rpt" "Main_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Overall_Ctrl.r" "Main_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Overall_Ctrl.ro" "Main_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Overall_Ctrl.s" "Main_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Overall_Ctrl.pm" "Main_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Main_Jnt_parentConstraint1.w0" "Main_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Main_Jnt.pim" "Main_Jnt_scaleConstraint1.cpim";
connectAttr "Overall_Ctrl.s" "Main_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Overall_Ctrl.pm" "Main_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Main_Jnt_scaleConstraint1.w0" "Main_Jnt_scaleConstraint1.tg[0].tw";
connectAttr "Stem_Jnt.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "transformGeometry1.og" "Overall_CtrlShape.cr";
connectAttr "transformGeometry2.og" "Robot_Stem_CtrlShape.cr";
connectAttr "makeNurbCircle3.oc" "Robot_Arm_CtrlShape.cr";
connectAttr "makeNurbCircle4.oc" "Robot_Wrist_CtrlShape.cr";
connectAttr "transformGeometry3.og" "Left_Finger_Ctrl_Shape1.cr";
connectAttr "transformGeometry4.og" "Left_Finger_Ctrl_Shape2.cr";
connectAttr "transformGeometry5.og" "Left_Finger_Ctrl_Shape3.cr";
connectAttr "transformGeometry6.og" "Right_Finger_Ctrl_Shape1.cr";
connectAttr "transformGeometry7.og" "Right_Finger_Ctrl_Shape2.cr";
connectAttr "transformGeometry8.og" "Right_Finger_Ctrl_Shape3.cr";
connectAttr "transformGeometry9.og" "Bottom_FInger_Ctrl_Shape1.cr";
connectAttr "transformGeometry10.og" "Btm_Finger_Ctrl_Shape2.cr";
connectAttr "transformGeometry11.og" "Btm_Finger_Ctrl_Shape3.cr";
connectAttr "pCylinder4_translateX.o" "pCylinder4.tx";
connectAttr "pCylinder4_translateY.o" "pCylinder4.ty";
connectAttr "pCylinder4_translateZ.o" "pCylinder4.tz";
connectAttr "pCylinder4_visibility.o" "pCylinder4.v";
connectAttr "pCylinder4_rotateX.o" "pCylinder4.rx";
connectAttr "pCylinder4_rotateY.o" "pCylinder4.ry";
connectAttr "pCylinder4_rotateZ.o" "pCylinder4.rz";
connectAttr "pCylinder4_scaleX.o" "pCylinder4.sx";
connectAttr "pCylinder4_scaleY.o" "pCylinder4.sy";
connectAttr "pCylinder4_scaleZ.o" "pCylinder4.sz";
connectAttr "joint9_scaleConstraint1.csx" "Right_Finger_Jnt.sx";
connectAttr "joint9_scaleConstraint1.csy" "Right_Finger_Jnt.sy";
connectAttr "joint9_scaleConstraint1.csz" "Right_Finger_Jnt.sz";
connectAttr "joint9_parentConstraint1.ctx" "Right_Finger_Jnt.tx";
connectAttr "joint9_parentConstraint1.cty" "Right_Finger_Jnt.ty";
connectAttr "joint9_parentConstraint1.ctz" "Right_Finger_Jnt.tz";
connectAttr "joint9_parentConstraint1.crx" "Right_Finger_Jnt.rx";
connectAttr "joint9_parentConstraint1.cry" "Right_Finger_Jnt.ry";
connectAttr "joint9_parentConstraint1.crz" "Right_Finger_Jnt.rz";
connectAttr "Right_Finger_Jnt.s" "joint10.is";
connectAttr "joint10_scaleConstraint1.csx" "joint10.sx";
connectAttr "joint10_scaleConstraint1.csy" "joint10.sy";
connectAttr "joint10_scaleConstraint1.csz" "joint10.sz";
connectAttr "joint10_parentConstraint1.ctx" "joint10.tx";
connectAttr "joint10_parentConstraint1.cty" "joint10.ty";
connectAttr "joint10_parentConstraint1.ctz" "joint10.tz";
connectAttr "joint10_parentConstraint1.crx" "joint10.rx";
connectAttr "joint10_parentConstraint1.cry" "joint10.ry";
connectAttr "joint10_parentConstraint1.crz" "joint10.rz";
connectAttr "joint10.s" "joint11.is";
connectAttr "joint11_scaleConstraint1.csx" "joint11.sx";
connectAttr "joint11_scaleConstraint1.csy" "joint11.sy";
connectAttr "joint11_scaleConstraint1.csz" "joint11.sz";
connectAttr "joint11_parentConstraint1.ctx" "joint11.tx";
connectAttr "joint11_parentConstraint1.cty" "joint11.ty";
connectAttr "joint11_parentConstraint1.ctz" "joint11.tz";
connectAttr "joint11_parentConstraint1.crx" "joint11.rx";
connectAttr "joint11_parentConstraint1.cry" "joint11.ry";
connectAttr "joint11_parentConstraint1.crz" "joint11.rz";
connectAttr "joint11.ro" "joint11_parentConstraint1.cro";
connectAttr "joint11.pim" "joint11_parentConstraint1.cpim";
connectAttr "joint11.rp" "joint11_parentConstraint1.crp";
connectAttr "joint11.rpt" "joint11_parentConstraint1.crt";
connectAttr "joint11.jo" "joint11_parentConstraint1.cjo";
connectAttr "Right_Finger_Ctrl_3.t" "joint11_parentConstraint1.tg[0].tt";
connectAttr "Right_Finger_Ctrl_3.rp" "joint11_parentConstraint1.tg[0].trp";
connectAttr "Right_Finger_Ctrl_3.rpt" "joint11_parentConstraint1.tg[0].trt";
connectAttr "Right_Finger_Ctrl_3.r" "joint11_parentConstraint1.tg[0].tr";
connectAttr "Right_Finger_Ctrl_3.ro" "joint11_parentConstraint1.tg[0].tro";
connectAttr "Right_Finger_Ctrl_3.s" "joint11_parentConstraint1.tg[0].ts";
connectAttr "Right_Finger_Ctrl_3.pm" "joint11_parentConstraint1.tg[0].tpm";
connectAttr "joint11_parentConstraint1.w0" "joint11_parentConstraint1.tg[0].tw";
connectAttr "joint11.ssc" "joint11_scaleConstraint1.tsc";
connectAttr "joint11.pim" "joint11_scaleConstraint1.cpim";
connectAttr "Right_Finger_Ctrl_3.s" "joint11_scaleConstraint1.tg[0].ts";
connectAttr "Right_Finger_Ctrl_3.pm" "joint11_scaleConstraint1.tg[0].tpm";
connectAttr "joint11_scaleConstraint1.w0" "joint11_scaleConstraint1.tg[0].tw";
connectAttr "joint10.ro" "joint10_parentConstraint1.cro";
connectAttr "joint10.pim" "joint10_parentConstraint1.cpim";
connectAttr "joint10.rp" "joint10_parentConstraint1.crp";
connectAttr "joint10.rpt" "joint10_parentConstraint1.crt";
connectAttr "joint10.jo" "joint10_parentConstraint1.cjo";
connectAttr "Right_Finger_Ctrl_2.t" "joint10_parentConstraint1.tg[0].tt";
connectAttr "Right_Finger_Ctrl_2.rp" "joint10_parentConstraint1.tg[0].trp";
connectAttr "Right_Finger_Ctrl_2.rpt" "joint10_parentConstraint1.tg[0].trt";
connectAttr "Right_Finger_Ctrl_2.r" "joint10_parentConstraint1.tg[0].tr";
connectAttr "Right_Finger_Ctrl_2.ro" "joint10_parentConstraint1.tg[0].tro";
connectAttr "Right_Finger_Ctrl_2.s" "joint10_parentConstraint1.tg[0].ts";
connectAttr "Right_Finger_Ctrl_2.pm" "joint10_parentConstraint1.tg[0].tpm";
connectAttr "joint10_parentConstraint1.w0" "joint10_parentConstraint1.tg[0].tw";
connectAttr "joint10.ssc" "joint10_scaleConstraint1.tsc";
connectAttr "joint10.pim" "joint10_scaleConstraint1.cpim";
connectAttr "Right_Finger_Ctrl_2.s" "joint10_scaleConstraint1.tg[0].ts";
connectAttr "Right_Finger_Ctrl_2.pm" "joint10_scaleConstraint1.tg[0].tpm";
connectAttr "joint10_scaleConstraint1.w0" "joint10_scaleConstraint1.tg[0].tw";
connectAttr "Right_Finger_Jnt.ro" "joint9_parentConstraint1.cro";
connectAttr "Right_Finger_Jnt.pim" "joint9_parentConstraint1.cpim";
connectAttr "Right_Finger_Jnt.rp" "joint9_parentConstraint1.crp";
connectAttr "Right_Finger_Jnt.rpt" "joint9_parentConstraint1.crt";
connectAttr "Right_Finger_Jnt.jo" "joint9_parentConstraint1.cjo";
connectAttr "Right_Finger_Ctrl_1.t" "joint9_parentConstraint1.tg[0].tt";
connectAttr "Right_Finger_Ctrl_1.rp" "joint9_parentConstraint1.tg[0].trp";
connectAttr "Right_Finger_Ctrl_1.rpt" "joint9_parentConstraint1.tg[0].trt";
connectAttr "Right_Finger_Ctrl_1.r" "joint9_parentConstraint1.tg[0].tr";
connectAttr "Right_Finger_Ctrl_1.ro" "joint9_parentConstraint1.tg[0].tro";
connectAttr "Right_Finger_Ctrl_1.s" "joint9_parentConstraint1.tg[0].ts";
connectAttr "Right_Finger_Ctrl_1.pm" "joint9_parentConstraint1.tg[0].tpm";
connectAttr "joint9_parentConstraint1.w0" "joint9_parentConstraint1.tg[0].tw";
connectAttr "Right_Finger_Jnt.pim" "joint9_scaleConstraint1.cpim";
connectAttr "Right_Finger_Ctrl_1.s" "joint9_scaleConstraint1.tg[0].ts";
connectAttr "Right_Finger_Ctrl_1.pm" "joint9_scaleConstraint1.tg[0].tpm";
connectAttr "joint9_scaleConstraint1.w0" "joint9_scaleConstraint1.tg[0].tw";
connectAttr "joint5_scaleConstraint1.csx" "Bottom_Finger_Jnt.sx";
connectAttr "joint5_scaleConstraint1.csy" "Bottom_Finger_Jnt.sy";
connectAttr "joint5_scaleConstraint1.csz" "Bottom_Finger_Jnt.sz";
connectAttr "joint5_parentConstraint1.ctx" "Bottom_Finger_Jnt.tx";
connectAttr "joint5_parentConstraint1.cty" "Bottom_Finger_Jnt.ty";
connectAttr "joint5_parentConstraint1.ctz" "Bottom_Finger_Jnt.tz";
connectAttr "joint5_parentConstraint1.crx" "Bottom_Finger_Jnt.rx";
connectAttr "joint5_parentConstraint1.cry" "Bottom_Finger_Jnt.ry";
connectAttr "joint5_parentConstraint1.crz" "Bottom_Finger_Jnt.rz";
connectAttr "Bottom_Finger_Jnt.s" "joint6.is";
connectAttr "joint6_scaleConstraint1.csx" "joint6.sx";
connectAttr "joint6_scaleConstraint1.csy" "joint6.sy";
connectAttr "joint6_scaleConstraint1.csz" "joint6.sz";
connectAttr "joint6_parentConstraint1.ctx" "joint6.tx";
connectAttr "joint6_parentConstraint1.cty" "joint6.ty";
connectAttr "joint6_parentConstraint1.ctz" "joint6.tz";
connectAttr "joint6_parentConstraint1.crx" "joint6.rx";
connectAttr "joint6_parentConstraint1.cry" "joint6.ry";
connectAttr "joint6_parentConstraint1.crz" "joint6.rz";
connectAttr "joint6.s" "joint7.is";
connectAttr "joint7_scaleConstraint1.csx" "joint7.sx";
connectAttr "joint7_scaleConstraint1.csy" "joint7.sy";
connectAttr "joint7_scaleConstraint1.csz" "joint7.sz";
connectAttr "joint7_parentConstraint1.ctx" "joint7.tx";
connectAttr "joint7_parentConstraint1.cty" "joint7.ty";
connectAttr "joint7_parentConstraint1.ctz" "joint7.tz";
connectAttr "joint7_parentConstraint1.crx" "joint7.rx";
connectAttr "joint7_parentConstraint1.cry" "joint7.ry";
connectAttr "joint7_parentConstraint1.crz" "joint7.rz";
connectAttr "joint7.ro" "joint7_parentConstraint1.cro";
connectAttr "joint7.pim" "joint7_parentConstraint1.cpim";
connectAttr "joint7.rp" "joint7_parentConstraint1.crp";
connectAttr "joint7.rpt" "joint7_parentConstraint1.crt";
connectAttr "joint7.jo" "joint7_parentConstraint1.cjo";
connectAttr "Btm_Finger_Ctrl_3.t" "joint7_parentConstraint1.tg[0].tt";
connectAttr "Btm_Finger_Ctrl_3.rp" "joint7_parentConstraint1.tg[0].trp";
connectAttr "Btm_Finger_Ctrl_3.rpt" "joint7_parentConstraint1.tg[0].trt";
connectAttr "Btm_Finger_Ctrl_3.r" "joint7_parentConstraint1.tg[0].tr";
connectAttr "Btm_Finger_Ctrl_3.ro" "joint7_parentConstraint1.tg[0].tro";
connectAttr "Btm_Finger_Ctrl_3.s" "joint7_parentConstraint1.tg[0].ts";
connectAttr "Btm_Finger_Ctrl_3.pm" "joint7_parentConstraint1.tg[0].tpm";
connectAttr "joint7_parentConstraint1.w0" "joint7_parentConstraint1.tg[0].tw";
connectAttr "joint7.ssc" "joint7_scaleConstraint1.tsc";
connectAttr "joint7.pim" "joint7_scaleConstraint1.cpim";
connectAttr "Btm_Finger_Ctrl_3.s" "joint7_scaleConstraint1.tg[0].ts";
connectAttr "Btm_Finger_Ctrl_3.pm" "joint7_scaleConstraint1.tg[0].tpm";
connectAttr "joint7_scaleConstraint1.w0" "joint7_scaleConstraint1.tg[0].tw";
connectAttr "joint6.ro" "joint6_parentConstraint1.cro";
connectAttr "joint6.pim" "joint6_parentConstraint1.cpim";
connectAttr "joint6.rp" "joint6_parentConstraint1.crp";
connectAttr "joint6.rpt" "joint6_parentConstraint1.crt";
connectAttr "joint6.jo" "joint6_parentConstraint1.cjo";
connectAttr "Btm_Finger_Ctrl_2.t" "joint6_parentConstraint1.tg[0].tt";
connectAttr "Btm_Finger_Ctrl_2.rp" "joint6_parentConstraint1.tg[0].trp";
connectAttr "Btm_Finger_Ctrl_2.rpt" "joint6_parentConstraint1.tg[0].trt";
connectAttr "Btm_Finger_Ctrl_2.r" "joint6_parentConstraint1.tg[0].tr";
connectAttr "Btm_Finger_Ctrl_2.ro" "joint6_parentConstraint1.tg[0].tro";
connectAttr "Btm_Finger_Ctrl_2.s" "joint6_parentConstraint1.tg[0].ts";
connectAttr "Btm_Finger_Ctrl_2.pm" "joint6_parentConstraint1.tg[0].tpm";
connectAttr "joint6_parentConstraint1.w0" "joint6_parentConstraint1.tg[0].tw";
connectAttr "joint6.ssc" "joint6_scaleConstraint1.tsc";
connectAttr "joint6.pim" "joint6_scaleConstraint1.cpim";
connectAttr "Btm_Finger_Ctrl_2.s" "joint6_scaleConstraint1.tg[0].ts";
connectAttr "Btm_Finger_Ctrl_2.pm" "joint6_scaleConstraint1.tg[0].tpm";
connectAttr "joint6_scaleConstraint1.w0" "joint6_scaleConstraint1.tg[0].tw";
connectAttr "Bottom_Finger_Jnt.ro" "joint5_parentConstraint1.cro";
connectAttr "Bottom_Finger_Jnt.pim" "joint5_parentConstraint1.cpim";
connectAttr "Bottom_Finger_Jnt.rp" "joint5_parentConstraint1.crp";
connectAttr "Bottom_Finger_Jnt.rpt" "joint5_parentConstraint1.crt";
connectAttr "Bottom_Finger_Jnt.jo" "joint5_parentConstraint1.cjo";
connectAttr "Bottom_FInger_Ctrl_1.t" "joint5_parentConstraint1.tg[0].tt";
connectAttr "Bottom_FInger_Ctrl_1.rp" "joint5_parentConstraint1.tg[0].trp";
connectAttr "Bottom_FInger_Ctrl_1.rpt" "joint5_parentConstraint1.tg[0].trt";
connectAttr "Bottom_FInger_Ctrl_1.r" "joint5_parentConstraint1.tg[0].tr";
connectAttr "Bottom_FInger_Ctrl_1.ro" "joint5_parentConstraint1.tg[0].tro";
connectAttr "Bottom_FInger_Ctrl_1.s" "joint5_parentConstraint1.tg[0].ts";
connectAttr "Bottom_FInger_Ctrl_1.pm" "joint5_parentConstraint1.tg[0].tpm";
connectAttr "joint5_parentConstraint1.w0" "joint5_parentConstraint1.tg[0].tw";
connectAttr "Bottom_Finger_Jnt.pim" "joint5_scaleConstraint1.cpim";
connectAttr "Bottom_FInger_Ctrl_1.s" "joint5_scaleConstraint1.tg[0].ts";
connectAttr "Bottom_FInger_Ctrl_1.pm" "joint5_scaleConstraint1.tg[0].tpm";
connectAttr "joint5_scaleConstraint1.w0" "joint5_scaleConstraint1.tg[0].tw";
connectAttr "joint1_scaleConstraint1.csx" "Left_Finger_Jnt.sx";
connectAttr "joint1_scaleConstraint1.csy" "Left_Finger_Jnt.sy";
connectAttr "joint1_scaleConstraint1.csz" "Left_Finger_Jnt.sz";
connectAttr "joint1_parentConstraint1.ctx" "Left_Finger_Jnt.tx";
connectAttr "joint1_parentConstraint1.cty" "Left_Finger_Jnt.ty";
connectAttr "joint1_parentConstraint1.ctz" "Left_Finger_Jnt.tz";
connectAttr "joint1_parentConstraint1.crx" "Left_Finger_Jnt.rx";
connectAttr "joint1_parentConstraint1.cry" "Left_Finger_Jnt.ry";
connectAttr "joint1_parentConstraint1.crz" "Left_Finger_Jnt.rz";
connectAttr "Left_Finger_Jnt.s" "joint2.is";
connectAttr "joint2_scaleConstraint1.csx" "joint2.sx";
connectAttr "joint2_scaleConstraint1.csy" "joint2.sy";
connectAttr "joint2_scaleConstraint1.csz" "joint2.sz";
connectAttr "joint2_parentConstraint1.ctx" "joint2.tx";
connectAttr "joint2_parentConstraint1.cty" "joint2.ty";
connectAttr "joint2_parentConstraint1.ctz" "joint2.tz";
connectAttr "joint2_parentConstraint1.crx" "joint2.rx";
connectAttr "joint2_parentConstraint1.cry" "joint2.ry";
connectAttr "joint2_parentConstraint1.crz" "joint2.rz";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3_scaleConstraint1.csx" "joint3.sx";
connectAttr "joint3_scaleConstraint1.csy" "joint3.sy";
connectAttr "joint3_scaleConstraint1.csz" "joint3.sz";
connectAttr "joint3_parentConstraint1.ctx" "joint3.tx";
connectAttr "joint3_parentConstraint1.cty" "joint3.ty";
connectAttr "joint3_parentConstraint1.ctz" "joint3.tz";
connectAttr "joint3_parentConstraint1.crx" "joint3.rx";
connectAttr "joint3_parentConstraint1.cry" "joint3.ry";
connectAttr "joint3_parentConstraint1.crz" "joint3.rz";
connectAttr "joint3.ro" "joint3_parentConstraint1.cro";
connectAttr "joint3.pim" "joint3_parentConstraint1.cpim";
connectAttr "joint3.rp" "joint3_parentConstraint1.crp";
connectAttr "joint3.rpt" "joint3_parentConstraint1.crt";
connectAttr "joint3.jo" "joint3_parentConstraint1.cjo";
connectAttr "Left_Finger_Ctrl_3.t" "joint3_parentConstraint1.tg[0].tt";
connectAttr "Left_Finger_Ctrl_3.rp" "joint3_parentConstraint1.tg[0].trp";
connectAttr "Left_Finger_Ctrl_3.rpt" "joint3_parentConstraint1.tg[0].trt";
connectAttr "Left_Finger_Ctrl_3.r" "joint3_parentConstraint1.tg[0].tr";
connectAttr "Left_Finger_Ctrl_3.ro" "joint3_parentConstraint1.tg[0].tro";
connectAttr "Left_Finger_Ctrl_3.s" "joint3_parentConstraint1.tg[0].ts";
connectAttr "Left_Finger_Ctrl_3.pm" "joint3_parentConstraint1.tg[0].tpm";
connectAttr "joint3_parentConstraint1.w0" "joint3_parentConstraint1.tg[0].tw";
connectAttr "joint3.ssc" "joint3_scaleConstraint1.tsc";
connectAttr "joint3.pim" "joint3_scaleConstraint1.cpim";
connectAttr "Left_Finger_Ctrl_3.s" "joint3_scaleConstraint1.tg[0].ts";
connectAttr "Left_Finger_Ctrl_3.pm" "joint3_scaleConstraint1.tg[0].tpm";
connectAttr "joint3_scaleConstraint1.w0" "joint3_scaleConstraint1.tg[0].tw";
connectAttr "joint2.ro" "joint2_parentConstraint1.cro";
connectAttr "joint2.pim" "joint2_parentConstraint1.cpim";
connectAttr "joint2.rp" "joint2_parentConstraint1.crp";
connectAttr "joint2.rpt" "joint2_parentConstraint1.crt";
connectAttr "joint2.jo" "joint2_parentConstraint1.cjo";
connectAttr "Left_Finger_Ctrl_2.t" "joint2_parentConstraint1.tg[0].tt";
connectAttr "Left_Finger_Ctrl_2.rp" "joint2_parentConstraint1.tg[0].trp";
connectAttr "Left_Finger_Ctrl_2.rpt" "joint2_parentConstraint1.tg[0].trt";
connectAttr "Left_Finger_Ctrl_2.r" "joint2_parentConstraint1.tg[0].tr";
connectAttr "Left_Finger_Ctrl_2.ro" "joint2_parentConstraint1.tg[0].tro";
connectAttr "Left_Finger_Ctrl_2.s" "joint2_parentConstraint1.tg[0].ts";
connectAttr "Left_Finger_Ctrl_2.pm" "joint2_parentConstraint1.tg[0].tpm";
connectAttr "joint2_parentConstraint1.w0" "joint2_parentConstraint1.tg[0].tw";
connectAttr "joint2.ssc" "joint2_scaleConstraint1.tsc";
connectAttr "joint2.pim" "joint2_scaleConstraint1.cpim";
connectAttr "Left_Finger_Ctrl_2.s" "joint2_scaleConstraint1.tg[0].ts";
connectAttr "Left_Finger_Ctrl_2.pm" "joint2_scaleConstraint1.tg[0].tpm";
connectAttr "joint2_scaleConstraint1.w0" "joint2_scaleConstraint1.tg[0].tw";
connectAttr "Left_Finger_Jnt.ro" "joint1_parentConstraint1.cro";
connectAttr "Left_Finger_Jnt.pim" "joint1_parentConstraint1.cpim";
connectAttr "Left_Finger_Jnt.rp" "joint1_parentConstraint1.crp";
connectAttr "Left_Finger_Jnt.rpt" "joint1_parentConstraint1.crt";
connectAttr "Left_Finger_Jnt.jo" "joint1_parentConstraint1.cjo";
connectAttr "Left_Finger_Ctrl_1.t" "joint1_parentConstraint1.tg[0].tt";
connectAttr "Left_Finger_Ctrl_1.rp" "joint1_parentConstraint1.tg[0].trp";
connectAttr "Left_Finger_Ctrl_1.rpt" "joint1_parentConstraint1.tg[0].trt";
connectAttr "Left_Finger_Ctrl_1.r" "joint1_parentConstraint1.tg[0].tr";
connectAttr "Left_Finger_Ctrl_1.ro" "joint1_parentConstraint1.tg[0].tro";
connectAttr "Left_Finger_Ctrl_1.s" "joint1_parentConstraint1.tg[0].ts";
connectAttr "Left_Finger_Ctrl_1.pm" "joint1_parentConstraint1.tg[0].tpm";
connectAttr "joint1_parentConstraint1.w0" "joint1_parentConstraint1.tg[0].tw";
connectAttr "Left_Finger_Jnt.pim" "joint1_scaleConstraint1.cpim";
connectAttr "Left_Finger_Ctrl_1.s" "joint1_scaleConstraint1.tg[0].ts";
connectAttr "Left_Finger_Ctrl_1.pm" "joint1_scaleConstraint1.tg[0].tpm";
connectAttr "joint1_scaleConstraint1.w0" "joint1_scaleConstraint1.tg[0].tw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set5.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "place2dTexture1.o" "substanceNode1.uv";
connectAttr "place2dTexture1.ofs" "substanceNode1.fs";
connectAttr "substanceNode1.output_basecolor" "Steel_Rust_and_Wear_basecolor.sbs"
		;
connectAttr "substanceNode1.rsw" "Steel_Rust_and_Wear_basecolor.rsw";
connectAttr "substanceNode1.cext" "Steel_Rust_and_Wear_basecolor.cext";
connectAttr "substanceNode1.hext" "Steel_Rust_and_Wear_basecolor.hext";
connectAttr "substanceNode1.cfld" "Steel_Rust_and_Wear_basecolor.cprx";
connectAttr "place2dTexture1.o" "Steel_Rust_and_Wear_basecolor.uv";
connectAttr "place2dTexture1.ofs" "Steel_Rust_and_Wear_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "Steel_Rust_and_Wear_basecolor.cpth" "file1.ftn";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "substanceNode1.output_metallic" "Steel_Rust_and_Wear_metallic.sbs";
connectAttr "substanceNode1.rsw" "Steel_Rust_and_Wear_metallic.rsw";
connectAttr "substanceNode1.cext" "Steel_Rust_and_Wear_metallic.cext";
connectAttr "substanceNode1.hext" "Steel_Rust_and_Wear_metallic.hext";
connectAttr "substanceNode1.cfld" "Steel_Rust_and_Wear_metallic.cprx";
connectAttr "place2dTexture1.o" "Steel_Rust_and_Wear_metallic.uv";
connectAttr "place2dTexture1.ofs" "Steel_Rust_and_Wear_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "Steel_Rust_and_Wear_metallic.cpth" "file2.ftn";
connectAttr "place2dTexture1.o" "file2.uv";
connectAttr "place2dTexture1.ofs" "file2.fs";
connectAttr "place2dTexture1.c" "file2.c";
connectAttr "place2dTexture1.tf" "file2.tf";
connectAttr "place2dTexture1.rf" "file2.rf";
connectAttr "place2dTexture1.mu" "file2.mu";
connectAttr "place2dTexture1.mv" "file2.mv";
connectAttr "place2dTexture1.s" "file2.s";
connectAttr "place2dTexture1.wu" "file2.wu";
connectAttr "place2dTexture1.wv" "file2.wv";
connectAttr "place2dTexture1.re" "file2.re";
connectAttr "place2dTexture1.of" "file2.of";
connectAttr "place2dTexture1.r" "file2.ro";
connectAttr "place2dTexture1.n" "file2.n";
connectAttr "place2dTexture1.vt1" "file2.vt1";
connectAttr "place2dTexture1.vt2" "file2.vt2";
connectAttr "place2dTexture1.vt3" "file2.vt3";
connectAttr "place2dTexture1.vc1" "file2.vc1";
connectAttr "substanceNode1.output_normal" "Steel_Rust_and_Wear_normal.sbs";
connectAttr "substanceNode1.rsw" "Steel_Rust_and_Wear_normal.rsw";
connectAttr "substanceNode1.cext" "Steel_Rust_and_Wear_normal.cext";
connectAttr "substanceNode1.hext" "Steel_Rust_and_Wear_normal.hext";
connectAttr "substanceNode1.cfld" "Steel_Rust_and_Wear_normal.cprx";
connectAttr "place2dTexture1.o" "Steel_Rust_and_Wear_normal.uv";
connectAttr "place2dTexture1.ofs" "Steel_Rust_and_Wear_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "Steel_Rust_and_Wear_normal.cpth" "file3.ftn";
connectAttr "place2dTexture1.o" "file3.uv";
connectAttr "place2dTexture1.ofs" "file3.fs";
connectAttr "place2dTexture1.c" "file3.c";
connectAttr "place2dTexture1.tf" "file3.tf";
connectAttr "place2dTexture1.rf" "file3.rf";
connectAttr "place2dTexture1.mu" "file3.mu";
connectAttr "place2dTexture1.mv" "file3.mv";
connectAttr "place2dTexture1.s" "file3.s";
connectAttr "place2dTexture1.wu" "file3.wu";
connectAttr "place2dTexture1.wv" "file3.wv";
connectAttr "place2dTexture1.re" "file3.re";
connectAttr "place2dTexture1.of" "file3.of";
connectAttr "place2dTexture1.r" "file3.ro";
connectAttr "place2dTexture1.n" "file3.n";
connectAttr "place2dTexture1.vt1" "file3.vt1";
connectAttr "place2dTexture1.vt2" "file3.vt2";
connectAttr "place2dTexture1.vt3" "file3.vt3";
connectAttr "place2dTexture1.vc1" "file3.vc1";
connectAttr "substanceNode1.output_height" "Steel_Rust_and_Wear_height.sbs";
connectAttr "substanceNode1.rsw" "Steel_Rust_and_Wear_height.rsw";
connectAttr "substanceNode1.cext" "Steel_Rust_and_Wear_height.cext";
connectAttr "substanceNode1.hext" "Steel_Rust_and_Wear_height.hext";
connectAttr "substanceNode1.cfld" "Steel_Rust_and_Wear_height.cprx";
connectAttr "place2dTexture1.o" "Steel_Rust_and_Wear_height.uv";
connectAttr "place2dTexture1.ofs" "Steel_Rust_and_Wear_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "Steel_Rust_and_Wear_height.cpth" "file4.ftn";
connectAttr "place2dTexture1.o" "file4.uv";
connectAttr "place2dTexture1.ofs" "file4.fs";
connectAttr "place2dTexture1.c" "file4.c";
connectAttr "place2dTexture1.tf" "file4.tf";
connectAttr "place2dTexture1.rf" "file4.rf";
connectAttr "place2dTexture1.mu" "file4.mu";
connectAttr "place2dTexture1.mv" "file4.mv";
connectAttr "place2dTexture1.s" "file4.s";
connectAttr "place2dTexture1.wu" "file4.wu";
connectAttr "place2dTexture1.wv" "file4.wv";
connectAttr "place2dTexture1.re" "file4.re";
connectAttr "place2dTexture1.of" "file4.of";
connectAttr "place2dTexture1.r" "file4.ro";
connectAttr "place2dTexture1.n" "file4.n";
connectAttr "place2dTexture1.vt1" "file4.vt1";
connectAttr "place2dTexture1.vt2" "file4.vt2";
connectAttr "place2dTexture1.vt3" "file4.vt3";
connectAttr "place2dTexture1.vc1" "file4.vc1";
connectAttr "substanceNode1.output_roughness" "Steel_Rust_and_Wear_roughness.sbs"
		;
connectAttr "substanceNode1.rsw" "Steel_Rust_and_Wear_roughness.rsw";
connectAttr "substanceNode1.cext" "Steel_Rust_and_Wear_roughness.cext";
connectAttr "substanceNode1.hext" "Steel_Rust_and_Wear_roughness.hext";
connectAttr "substanceNode1.cfld" "Steel_Rust_and_Wear_roughness.cprx";
connectAttr "place2dTexture1.o" "Steel_Rust_and_Wear_roughness.uv";
connectAttr "place2dTexture1.ofs" "Steel_Rust_and_Wear_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file5.ws";
connectAttr "Steel_Rust_and_Wear_roughness.cpth" "file5.ftn";
connectAttr "place2dTexture1.o" "file5.uv";
connectAttr "place2dTexture1.ofs" "file5.fs";
connectAttr "place2dTexture1.c" "file5.c";
connectAttr "place2dTexture1.tf" "file5.tf";
connectAttr "place2dTexture1.rf" "file5.rf";
connectAttr "place2dTexture1.mu" "file5.mu";
connectAttr "place2dTexture1.mv" "file5.mv";
connectAttr "place2dTexture1.s" "file5.s";
connectAttr "place2dTexture1.wu" "file5.wu";
connectAttr "place2dTexture1.wv" "file5.wv";
connectAttr "place2dTexture1.re" "file5.re";
connectAttr "place2dTexture1.of" "file5.of";
connectAttr "place2dTexture1.r" "file5.ro";
connectAttr "place2dTexture1.n" "file5.n";
connectAttr "place2dTexture1.vt1" "file5.vt1";
connectAttr "place2dTexture1.vt2" "file5.vt2";
connectAttr "place2dTexture1.vt3" "file5.vt3";
connectAttr "place2dTexture1.vc1" "file5.vc1";
connectAttr "file1.oc" "multiplyDivide1.i1";
connectAttr "multiplyDivide1.o" "Green.base_color";
connectAttr "file5.oa" "Green.specular_roughness";
connectAttr "file2.oa" "Green.metalness";
connectAttr "bump2d1.o" "Green.n";
connectAttr "Green.out" "set1.ss";
connectAttr "displacementShader1.d" "set1.ds";
connectAttr "set1.msg" "materialInfo1.sg";
connectAttr "Green.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "file4.oa" "displacementShader1.d";
connectAttr "file3.oa" "bump2d1.bv";
connectAttr "place2dTexture2.o" "substanceNode2.uv";
connectAttr "place2dTexture2.ofs" "substanceNode2.fs";
connectAttr "substanceNode2.output_basecolor" "Iron_Diamond_Armor_basecolor.sbs"
		;
connectAttr "substanceNode2.rsw" "Iron_Diamond_Armor_basecolor.rsw";
connectAttr "substanceNode2.cext" "Iron_Diamond_Armor_basecolor.cext";
connectAttr "substanceNode2.hext" "Iron_Diamond_Armor_basecolor.hext";
connectAttr "substanceNode2.cfld" "Iron_Diamond_Armor_basecolor.cprx";
connectAttr "place2dTexture2.o" "Iron_Diamond_Armor_basecolor.uv";
connectAttr "place2dTexture2.ofs" "Iron_Diamond_Armor_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file6.ws";
connectAttr "Iron_Diamond_Armor_basecolor.cpth" "file6.ftn";
connectAttr "place2dTexture2.o" "file6.uv";
connectAttr "place2dTexture2.ofs" "file6.fs";
connectAttr "place2dTexture2.c" "file6.c";
connectAttr "place2dTexture2.tf" "file6.tf";
connectAttr "place2dTexture2.rf" "file6.rf";
connectAttr "place2dTexture2.mu" "file6.mu";
connectAttr "place2dTexture2.mv" "file6.mv";
connectAttr "place2dTexture2.s" "file6.s";
connectAttr "place2dTexture2.wu" "file6.wu";
connectAttr "place2dTexture2.wv" "file6.wv";
connectAttr "place2dTexture2.re" "file6.re";
connectAttr "place2dTexture2.of" "file6.of";
connectAttr "place2dTexture2.r" "file6.ro";
connectAttr "place2dTexture2.n" "file6.n";
connectAttr "place2dTexture2.vt1" "file6.vt1";
connectAttr "place2dTexture2.vt2" "file6.vt2";
connectAttr "place2dTexture2.vt3" "file6.vt3";
connectAttr "place2dTexture2.vc1" "file6.vc1";
connectAttr "substanceNode2.output_metallic" "Iron_Diamond_Armor_metallic.sbs";
connectAttr "substanceNode2.rsw" "Iron_Diamond_Armor_metallic.rsw";
connectAttr "substanceNode2.cext" "Iron_Diamond_Armor_metallic.cext";
connectAttr "substanceNode2.hext" "Iron_Diamond_Armor_metallic.hext";
connectAttr "substanceNode2.cfld" "Iron_Diamond_Armor_metallic.cprx";
connectAttr "place2dTexture2.o" "Iron_Diamond_Armor_metallic.uv";
connectAttr "place2dTexture2.ofs" "Iron_Diamond_Armor_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file7.ws";
connectAttr "Iron_Diamond_Armor_metallic.cpth" "file7.ftn";
connectAttr "place2dTexture2.o" "file7.uv";
connectAttr "place2dTexture2.ofs" "file7.fs";
connectAttr "place2dTexture2.c" "file7.c";
connectAttr "place2dTexture2.tf" "file7.tf";
connectAttr "place2dTexture2.rf" "file7.rf";
connectAttr "place2dTexture2.mu" "file7.mu";
connectAttr "place2dTexture2.mv" "file7.mv";
connectAttr "place2dTexture2.s" "file7.s";
connectAttr "place2dTexture2.wu" "file7.wu";
connectAttr "place2dTexture2.wv" "file7.wv";
connectAttr "place2dTexture2.re" "file7.re";
connectAttr "place2dTexture2.of" "file7.of";
connectAttr "place2dTexture2.r" "file7.ro";
connectAttr "place2dTexture2.n" "file7.n";
connectAttr "place2dTexture2.vt1" "file7.vt1";
connectAttr "place2dTexture2.vt2" "file7.vt2";
connectAttr "place2dTexture2.vt3" "file7.vt3";
connectAttr "place2dTexture2.vc1" "file7.vc1";
connectAttr "substanceNode2.output_normal" "Iron_Diamond_Armor_normal.sbs";
connectAttr "substanceNode2.rsw" "Iron_Diamond_Armor_normal.rsw";
connectAttr "substanceNode2.cext" "Iron_Diamond_Armor_normal.cext";
connectAttr "substanceNode2.hext" "Iron_Diamond_Armor_normal.hext";
connectAttr "substanceNode2.cfld" "Iron_Diamond_Armor_normal.cprx";
connectAttr "place2dTexture2.o" "Iron_Diamond_Armor_normal.uv";
connectAttr "place2dTexture2.ofs" "Iron_Diamond_Armor_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file8.ws";
connectAttr "Iron_Diamond_Armor_normal.cpth" "file8.ftn";
connectAttr "place2dTexture2.o" "file8.uv";
connectAttr "place2dTexture2.ofs" "file8.fs";
connectAttr "place2dTexture2.c" "file8.c";
connectAttr "place2dTexture2.tf" "file8.tf";
connectAttr "place2dTexture2.rf" "file8.rf";
connectAttr "place2dTexture2.mu" "file8.mu";
connectAttr "place2dTexture2.mv" "file8.mv";
connectAttr "place2dTexture2.s" "file8.s";
connectAttr "place2dTexture2.wu" "file8.wu";
connectAttr "place2dTexture2.wv" "file8.wv";
connectAttr "place2dTexture2.re" "file8.re";
connectAttr "place2dTexture2.of" "file8.of";
connectAttr "place2dTexture2.r" "file8.ro";
connectAttr "place2dTexture2.n" "file8.n";
connectAttr "place2dTexture2.vt1" "file8.vt1";
connectAttr "place2dTexture2.vt2" "file8.vt2";
connectAttr "place2dTexture2.vt3" "file8.vt3";
connectAttr "place2dTexture2.vc1" "file8.vc1";
connectAttr "substanceNode2.output_height" "Iron_Diamond_Armor_height.sbs";
connectAttr "substanceNode2.rsw" "Iron_Diamond_Armor_height.rsw";
connectAttr "substanceNode2.cext" "Iron_Diamond_Armor_height.cext";
connectAttr "substanceNode2.hext" "Iron_Diamond_Armor_height.hext";
connectAttr "substanceNode2.cfld" "Iron_Diamond_Armor_height.cprx";
connectAttr "place2dTexture2.o" "Iron_Diamond_Armor_height.uv";
connectAttr "place2dTexture2.ofs" "Iron_Diamond_Armor_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file9.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file9.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file9.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file9.ws";
connectAttr "Iron_Diamond_Armor_height.cpth" "file9.ftn";
connectAttr "place2dTexture2.o" "file9.uv";
connectAttr "place2dTexture2.ofs" "file9.fs";
connectAttr "place2dTexture2.c" "file9.c";
connectAttr "place2dTexture2.tf" "file9.tf";
connectAttr "place2dTexture2.rf" "file9.rf";
connectAttr "place2dTexture2.mu" "file9.mu";
connectAttr "place2dTexture2.mv" "file9.mv";
connectAttr "place2dTexture2.s" "file9.s";
connectAttr "place2dTexture2.wu" "file9.wu";
connectAttr "place2dTexture2.wv" "file9.wv";
connectAttr "place2dTexture2.re" "file9.re";
connectAttr "place2dTexture2.of" "file9.of";
connectAttr "place2dTexture2.r" "file9.ro";
connectAttr "place2dTexture2.n" "file9.n";
connectAttr "place2dTexture2.vt1" "file9.vt1";
connectAttr "place2dTexture2.vt2" "file9.vt2";
connectAttr "place2dTexture2.vt3" "file9.vt3";
connectAttr "place2dTexture2.vc1" "file9.vc1";
connectAttr "substanceNode2.output_roughness" "Iron_Diamond_Armor_roughness.sbs"
		;
connectAttr "substanceNode2.rsw" "Iron_Diamond_Armor_roughness.rsw";
connectAttr "substanceNode2.cext" "Iron_Diamond_Armor_roughness.cext";
connectAttr "substanceNode2.hext" "Iron_Diamond_Armor_roughness.hext";
connectAttr "substanceNode2.cfld" "Iron_Diamond_Armor_roughness.cprx";
connectAttr "place2dTexture2.o" "Iron_Diamond_Armor_roughness.uv";
connectAttr "place2dTexture2.ofs" "Iron_Diamond_Armor_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file10.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file10.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file10.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file10.ws";
connectAttr "Iron_Diamond_Armor_roughness.cpth" "file10.ftn";
connectAttr "place2dTexture2.o" "file10.uv";
connectAttr "place2dTexture2.ofs" "file10.fs";
connectAttr "place2dTexture2.c" "file10.c";
connectAttr "place2dTexture2.tf" "file10.tf";
connectAttr "place2dTexture2.rf" "file10.rf";
connectAttr "place2dTexture2.mu" "file10.mu";
connectAttr "place2dTexture2.mv" "file10.mv";
connectAttr "place2dTexture2.s" "file10.s";
connectAttr "place2dTexture2.wu" "file10.wu";
connectAttr "place2dTexture2.wv" "file10.wv";
connectAttr "place2dTexture2.re" "file10.re";
connectAttr "place2dTexture2.of" "file10.of";
connectAttr "place2dTexture2.r" "file10.ro";
connectAttr "place2dTexture2.n" "file10.n";
connectAttr "place2dTexture2.vt1" "file10.vt1";
connectAttr "place2dTexture2.vt2" "file10.vt2";
connectAttr "place2dTexture2.vt3" "file10.vt3";
connectAttr "place2dTexture2.vc1" "file10.vc1";
connectAttr "file6.oc" "multiplyDivide2.i1";
connectAttr "multiplyDivide2.o" "Steel_armor.base_color";
connectAttr "bump2d2.o" "Steel_armor.n";
connectAttr "file10.oa" "Steel_armor.specular_roughness";
connectAttr "file7.oa" "Steel_armor.metalness";
connectAttr "Steel_armor.out" "set2.ss";
connectAttr "displacementShader2.d" "set2.ds";
connectAttr "set2.msg" "materialInfo2.sg";
connectAttr "Steel_armor.msg" "materialInfo2.m";
connectAttr "Steel_armor.msg" "materialInfo2.t" -na;
connectAttr "file8.oa" "bump2d2.bv";
connectAttr "file9.oa" "displacementShader2.d";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo3.sg";
connectAttr "lambert2.msg" "materialInfo3.m";
connectAttr "place2dTexture3.o" "substanceNode3.uv";
connectAttr "place2dTexture3.ofs" "substanceNode3.fs";
connectAttr "substanceNode3.output_basecolor" "Substance_graph_basecolor.sbs";
connectAttr "substanceNode3.rsw" "Substance_graph_basecolor.rsw";
connectAttr "substanceNode3.cext" "Substance_graph_basecolor.cext";
connectAttr "substanceNode3.hext" "Substance_graph_basecolor.hext";
connectAttr "substanceNode3.cfld" "Substance_graph_basecolor.cprx";
connectAttr "place2dTexture3.o" "Substance_graph_basecolor.uv";
connectAttr "place2dTexture3.ofs" "Substance_graph_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file11.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file11.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file11.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file11.ws";
connectAttr "Substance_graph_basecolor.cpth" "file11.ftn";
connectAttr "place2dTexture3.o" "file11.uv";
connectAttr "place2dTexture3.ofs" "file11.fs";
connectAttr "place2dTexture3.c" "file11.c";
connectAttr "place2dTexture3.tf" "file11.tf";
connectAttr "place2dTexture3.rf" "file11.rf";
connectAttr "place2dTexture3.mu" "file11.mu";
connectAttr "place2dTexture3.mv" "file11.mv";
connectAttr "place2dTexture3.s" "file11.s";
connectAttr "place2dTexture3.wu" "file11.wu";
connectAttr "place2dTexture3.wv" "file11.wv";
connectAttr "place2dTexture3.re" "file11.re";
connectAttr "place2dTexture3.of" "file11.of";
connectAttr "place2dTexture3.r" "file11.ro";
connectAttr "place2dTexture3.n" "file11.n";
connectAttr "place2dTexture3.vt1" "file11.vt1";
connectAttr "place2dTexture3.vt2" "file11.vt2";
connectAttr "place2dTexture3.vt3" "file11.vt3";
connectAttr "place2dTexture3.vc1" "file11.vc1";
connectAttr "substanceNode3.output_metallic" "Substance_graph_metallic.sbs";
connectAttr "substanceNode3.rsw" "Substance_graph_metallic.rsw";
connectAttr "substanceNode3.cext" "Substance_graph_metallic.cext";
connectAttr "substanceNode3.hext" "Substance_graph_metallic.hext";
connectAttr "substanceNode3.cfld" "Substance_graph_metallic.cprx";
connectAttr "place2dTexture3.o" "Substance_graph_metallic.uv";
connectAttr "place2dTexture3.ofs" "Substance_graph_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file12.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file12.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file12.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file12.ws";
connectAttr "Substance_graph_metallic.cpth" "file12.ftn";
connectAttr "place2dTexture3.o" "file12.uv";
connectAttr "place2dTexture3.ofs" "file12.fs";
connectAttr "place2dTexture3.c" "file12.c";
connectAttr "place2dTexture3.tf" "file12.tf";
connectAttr "place2dTexture3.rf" "file12.rf";
connectAttr "place2dTexture3.mu" "file12.mu";
connectAttr "place2dTexture3.mv" "file12.mv";
connectAttr "place2dTexture3.s" "file12.s";
connectAttr "place2dTexture3.wu" "file12.wu";
connectAttr "place2dTexture3.wv" "file12.wv";
connectAttr "place2dTexture3.re" "file12.re";
connectAttr "place2dTexture3.of" "file12.of";
connectAttr "place2dTexture3.r" "file12.ro";
connectAttr "place2dTexture3.n" "file12.n";
connectAttr "place2dTexture3.vt1" "file12.vt1";
connectAttr "place2dTexture3.vt2" "file12.vt2";
connectAttr "place2dTexture3.vt3" "file12.vt3";
connectAttr "place2dTexture3.vc1" "file12.vc1";
connectAttr "substanceNode3.output_normal" "Substance_graph_normal.sbs";
connectAttr "substanceNode3.rsw" "Substance_graph_normal.rsw";
connectAttr "substanceNode3.cext" "Substance_graph_normal.cext";
connectAttr "substanceNode3.hext" "Substance_graph_normal.hext";
connectAttr "substanceNode3.cfld" "Substance_graph_normal.cprx";
connectAttr "place2dTexture3.o" "Substance_graph_normal.uv";
connectAttr "place2dTexture3.ofs" "Substance_graph_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file13.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file13.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file13.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file13.ws";
connectAttr "Substance_graph_normal.cpth" "file13.ftn";
connectAttr "place2dTexture3.o" "file13.uv";
connectAttr "place2dTexture3.ofs" "file13.fs";
connectAttr "place2dTexture3.c" "file13.c";
connectAttr "place2dTexture3.tf" "file13.tf";
connectAttr "place2dTexture3.rf" "file13.rf";
connectAttr "place2dTexture3.mu" "file13.mu";
connectAttr "place2dTexture3.mv" "file13.mv";
connectAttr "place2dTexture3.s" "file13.s";
connectAttr "place2dTexture3.wu" "file13.wu";
connectAttr "place2dTexture3.wv" "file13.wv";
connectAttr "place2dTexture3.re" "file13.re";
connectAttr "place2dTexture3.of" "file13.of";
connectAttr "place2dTexture3.r" "file13.ro";
connectAttr "place2dTexture3.n" "file13.n";
connectAttr "place2dTexture3.vt1" "file13.vt1";
connectAttr "place2dTexture3.vt2" "file13.vt2";
connectAttr "place2dTexture3.vt3" "file13.vt3";
connectAttr "place2dTexture3.vc1" "file13.vc1";
connectAttr "substanceNode3.output_height" "Substance_graph_height.sbs";
connectAttr "substanceNode3.rsw" "Substance_graph_height.rsw";
connectAttr "substanceNode3.cext" "Substance_graph_height.cext";
connectAttr "substanceNode3.hext" "Substance_graph_height.hext";
connectAttr "substanceNode3.cfld" "Substance_graph_height.cprx";
connectAttr "place2dTexture3.o" "Substance_graph_height.uv";
connectAttr "place2dTexture3.ofs" "Substance_graph_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file14.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file14.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file14.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file14.ws";
connectAttr "Substance_graph_height.cpth" "file14.ftn";
connectAttr "place2dTexture3.o" "file14.uv";
connectAttr "place2dTexture3.ofs" "file14.fs";
connectAttr "place2dTexture3.c" "file14.c";
connectAttr "place2dTexture3.tf" "file14.tf";
connectAttr "place2dTexture3.rf" "file14.rf";
connectAttr "place2dTexture3.mu" "file14.mu";
connectAttr "place2dTexture3.mv" "file14.mv";
connectAttr "place2dTexture3.s" "file14.s";
connectAttr "place2dTexture3.wu" "file14.wu";
connectAttr "place2dTexture3.wv" "file14.wv";
connectAttr "place2dTexture3.re" "file14.re";
connectAttr "place2dTexture3.of" "file14.of";
connectAttr "place2dTexture3.r" "file14.ro";
connectAttr "place2dTexture3.n" "file14.n";
connectAttr "place2dTexture3.vt1" "file14.vt1";
connectAttr "place2dTexture3.vt2" "file14.vt2";
connectAttr "place2dTexture3.vt3" "file14.vt3";
connectAttr "place2dTexture3.vc1" "file14.vc1";
connectAttr "substanceNode3.output_roughness" "Substance_graph_roughness.sbs";
connectAttr "substanceNode3.rsw" "Substance_graph_roughness.rsw";
connectAttr "substanceNode3.cext" "Substance_graph_roughness.cext";
connectAttr "substanceNode3.hext" "Substance_graph_roughness.hext";
connectAttr "substanceNode3.cfld" "Substance_graph_roughness.cprx";
connectAttr "place2dTexture3.o" "Substance_graph_roughness.uv";
connectAttr "place2dTexture3.ofs" "Substance_graph_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file15.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file15.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file15.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file15.ws";
connectAttr "Substance_graph_roughness.cpth" "file15.ftn";
connectAttr "place2dTexture3.o" "file15.uv";
connectAttr "place2dTexture3.ofs" "file15.fs";
connectAttr "place2dTexture3.c" "file15.c";
connectAttr "place2dTexture3.tf" "file15.tf";
connectAttr "place2dTexture3.rf" "file15.rf";
connectAttr "place2dTexture3.mu" "file15.mu";
connectAttr "place2dTexture3.mv" "file15.mv";
connectAttr "place2dTexture3.s" "file15.s";
connectAttr "place2dTexture3.wu" "file15.wu";
connectAttr "place2dTexture3.wv" "file15.wv";
connectAttr "place2dTexture3.re" "file15.re";
connectAttr "place2dTexture3.of" "file15.of";
connectAttr "place2dTexture3.r" "file15.ro";
connectAttr "place2dTexture3.n" "file15.n";
connectAttr "place2dTexture3.vt1" "file15.vt1";
connectAttr "place2dTexture3.vt2" "file15.vt2";
connectAttr "place2dTexture3.vt3" "file15.vt3";
connectAttr "place2dTexture3.vc1" "file15.vc1";
connectAttr "file11.oc" "multiplyDivide3.i1";
connectAttr "multiplyDivide3.o" "Gold1.base_color";
connectAttr "bump2d3.o" "Gold1.n";
connectAttr "file15.oa" "Gold1.specular_roughness";
connectAttr "file12.oa" "Gold1.metalness";
connectAttr "Gold1.out" "set3.ss";
connectAttr "displacementShader3.d" "set3.ds";
connectAttr "polySurfaceShape5.iog" "set3.dsm" -na;
connectAttr "polySurfaceShape8.iog" "set3.dsm" -na;
connectAttr "pCube14Shape.iog" "set3.dsm" -na;
connectAttr "pCubeShape13.iog" "set3.dsm" -na;
connectAttr "pCylinderShape2.iog" "set3.dsm" -na;
connectAttr "set3.msg" "materialInfo4.sg";
connectAttr "Gold1.msg" "materialInfo4.m";
connectAttr "file11.msg" "materialInfo4.t" -na;
connectAttr "file13.oa" "bump2d3.bv";
connectAttr "file14.oa" "displacementShader3.d";
connectAttr "place2dTexture4.o" "substanceNode4.uv";
connectAttr "place2dTexture4.ofs" "substanceNode4.fs";
connectAttr "substanceNode4.output_basecolor" "Diamond_basecolor.sbs";
connectAttr "substanceNode4.rsw" "Diamond_basecolor.rsw";
connectAttr "substanceNode4.cext" "Diamond_basecolor.cext";
connectAttr "substanceNode4.hext" "Diamond_basecolor.hext";
connectAttr "substanceNode4.cfld" "Diamond_basecolor.cprx";
connectAttr "place2dTexture4.o" "Diamond_basecolor.uv";
connectAttr "place2dTexture4.ofs" "Diamond_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file16.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file16.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file16.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file16.ws";
connectAttr "Diamond_basecolor.cpth" "file16.ftn";
connectAttr "place2dTexture4.o" "file16.uv";
connectAttr "place2dTexture4.ofs" "file16.fs";
connectAttr "place2dTexture4.c" "file16.c";
connectAttr "place2dTexture4.tf" "file16.tf";
connectAttr "place2dTexture4.rf" "file16.rf";
connectAttr "place2dTexture4.mu" "file16.mu";
connectAttr "place2dTexture4.mv" "file16.mv";
connectAttr "place2dTexture4.s" "file16.s";
connectAttr "place2dTexture4.wu" "file16.wu";
connectAttr "place2dTexture4.wv" "file16.wv";
connectAttr "place2dTexture4.re" "file16.re";
connectAttr "place2dTexture4.of" "file16.of";
connectAttr "place2dTexture4.r" "file16.ro";
connectAttr "place2dTexture4.n" "file16.n";
connectAttr "place2dTexture4.vt1" "file16.vt1";
connectAttr "place2dTexture4.vt2" "file16.vt2";
connectAttr "place2dTexture4.vt3" "file16.vt3";
connectAttr "place2dTexture4.vc1" "file16.vc1";
connectAttr "substanceNode4.output_ambientocclusion" "Diamond_ambientocclusion.sbs"
		;
connectAttr "substanceNode4.rsw" "Diamond_ambientocclusion.rsw";
connectAttr "substanceNode4.cext" "Diamond_ambientocclusion.cext";
connectAttr "substanceNode4.hext" "Diamond_ambientocclusion.hext";
connectAttr "substanceNode4.cfld" "Diamond_ambientocclusion.cprx";
connectAttr "place2dTexture4.o" "Diamond_ambientocclusion.uv";
connectAttr "place2dTexture4.ofs" "Diamond_ambientocclusion.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file17.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file17.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file17.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file17.ws";
connectAttr "Diamond_ambientocclusion.cpth" "file17.ftn";
connectAttr "place2dTexture4.o" "file17.uv";
connectAttr "place2dTexture4.ofs" "file17.fs";
connectAttr "place2dTexture4.c" "file17.c";
connectAttr "place2dTexture4.tf" "file17.tf";
connectAttr "place2dTexture4.rf" "file17.rf";
connectAttr "place2dTexture4.mu" "file17.mu";
connectAttr "place2dTexture4.mv" "file17.mv";
connectAttr "place2dTexture4.s" "file17.s";
connectAttr "place2dTexture4.wu" "file17.wu";
connectAttr "place2dTexture4.wv" "file17.wv";
connectAttr "place2dTexture4.re" "file17.re";
connectAttr "place2dTexture4.of" "file17.of";
connectAttr "place2dTexture4.r" "file17.ro";
connectAttr "place2dTexture4.n" "file17.n";
connectAttr "place2dTexture4.vt1" "file17.vt1";
connectAttr "place2dTexture4.vt2" "file17.vt2";
connectAttr "place2dTexture4.vt3" "file17.vt3";
connectAttr "place2dTexture4.vc1" "file17.vc1";
connectAttr "substanceNode4.output_metallic" "Diamond_metallic.sbs";
connectAttr "substanceNode4.rsw" "Diamond_metallic.rsw";
connectAttr "substanceNode4.cext" "Diamond_metallic.cext";
connectAttr "substanceNode4.hext" "Diamond_metallic.hext";
connectAttr "substanceNode4.cfld" "Diamond_metallic.cprx";
connectAttr "place2dTexture4.o" "Diamond_metallic.uv";
connectAttr "place2dTexture4.ofs" "Diamond_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file18.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file18.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file18.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file18.ws";
connectAttr "Diamond_metallic.cpth" "file18.ftn";
connectAttr "place2dTexture4.o" "file18.uv";
connectAttr "place2dTexture4.ofs" "file18.fs";
connectAttr "place2dTexture4.c" "file18.c";
connectAttr "place2dTexture4.tf" "file18.tf";
connectAttr "place2dTexture4.rf" "file18.rf";
connectAttr "place2dTexture4.mu" "file18.mu";
connectAttr "place2dTexture4.mv" "file18.mv";
connectAttr "place2dTexture4.s" "file18.s";
connectAttr "place2dTexture4.wu" "file18.wu";
connectAttr "place2dTexture4.wv" "file18.wv";
connectAttr "place2dTexture4.re" "file18.re";
connectAttr "place2dTexture4.of" "file18.of";
connectAttr "place2dTexture4.r" "file18.ro";
connectAttr "place2dTexture4.n" "file18.n";
connectAttr "place2dTexture4.vt1" "file18.vt1";
connectAttr "place2dTexture4.vt2" "file18.vt2";
connectAttr "place2dTexture4.vt3" "file18.vt3";
connectAttr "place2dTexture4.vc1" "file18.vc1";
connectAttr "substanceNode4.output_normal" "Diamond_normal.sbs";
connectAttr "substanceNode4.rsw" "Diamond_normal.rsw";
connectAttr "substanceNode4.cext" "Diamond_normal.cext";
connectAttr "substanceNode4.hext" "Diamond_normal.hext";
connectAttr "substanceNode4.cfld" "Diamond_normal.cprx";
connectAttr "place2dTexture4.o" "Diamond_normal.uv";
connectAttr "place2dTexture4.ofs" "Diamond_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file19.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file19.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file19.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file19.ws";
connectAttr "Diamond_normal.cpth" "file19.ftn";
connectAttr "place2dTexture4.o" "file19.uv";
connectAttr "place2dTexture4.ofs" "file19.fs";
connectAttr "place2dTexture4.c" "file19.c";
connectAttr "place2dTexture4.tf" "file19.tf";
connectAttr "place2dTexture4.rf" "file19.rf";
connectAttr "place2dTexture4.mu" "file19.mu";
connectAttr "place2dTexture4.mv" "file19.mv";
connectAttr "place2dTexture4.s" "file19.s";
connectAttr "place2dTexture4.wu" "file19.wu";
connectAttr "place2dTexture4.wv" "file19.wv";
connectAttr "place2dTexture4.re" "file19.re";
connectAttr "place2dTexture4.of" "file19.of";
connectAttr "place2dTexture4.r" "file19.ro";
connectAttr "place2dTexture4.n" "file19.n";
connectAttr "place2dTexture4.vt1" "file19.vt1";
connectAttr "place2dTexture4.vt2" "file19.vt2";
connectAttr "place2dTexture4.vt3" "file19.vt3";
connectAttr "place2dTexture4.vc1" "file19.vc1";
connectAttr "substanceNode4.output_height" "Diamond_height.sbs";
connectAttr "substanceNode4.rsw" "Diamond_height.rsw";
connectAttr "substanceNode4.cext" "Diamond_height.cext";
connectAttr "substanceNode4.hext" "Diamond_height.hext";
connectAttr "substanceNode4.cfld" "Diamond_height.cprx";
connectAttr "place2dTexture4.o" "Diamond_height.uv";
connectAttr "place2dTexture4.ofs" "Diamond_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file20.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file20.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file20.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file20.ws";
connectAttr "Diamond_height.cpth" "file20.ftn";
connectAttr "place2dTexture4.o" "file20.uv";
connectAttr "place2dTexture4.ofs" "file20.fs";
connectAttr "place2dTexture4.c" "file20.c";
connectAttr "place2dTexture4.tf" "file20.tf";
connectAttr "place2dTexture4.rf" "file20.rf";
connectAttr "place2dTexture4.mu" "file20.mu";
connectAttr "place2dTexture4.mv" "file20.mv";
connectAttr "place2dTexture4.s" "file20.s";
connectAttr "place2dTexture4.wu" "file20.wu";
connectAttr "place2dTexture4.wv" "file20.wv";
connectAttr "place2dTexture4.re" "file20.re";
connectAttr "place2dTexture4.of" "file20.of";
connectAttr "place2dTexture4.r" "file20.ro";
connectAttr "place2dTexture4.n" "file20.n";
connectAttr "place2dTexture4.vt1" "file20.vt1";
connectAttr "place2dTexture4.vt2" "file20.vt2";
connectAttr "place2dTexture4.vt3" "file20.vt3";
connectAttr "place2dTexture4.vc1" "file20.vc1";
connectAttr "substanceNode4.output_roughness" "Diamond_roughness.sbs";
connectAttr "substanceNode4.rsw" "Diamond_roughness.rsw";
connectAttr "substanceNode4.cext" "Diamond_roughness.cext";
connectAttr "substanceNode4.hext" "Diamond_roughness.hext";
connectAttr "substanceNode4.cfld" "Diamond_roughness.cprx";
connectAttr "place2dTexture4.o" "Diamond_roughness.uv";
connectAttr "place2dTexture4.ofs" "Diamond_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file21.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file21.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file21.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file21.ws";
connectAttr "Diamond_roughness.cpth" "file21.ftn";
connectAttr "place2dTexture4.o" "file21.uv";
connectAttr "place2dTexture4.ofs" "file21.fs";
connectAttr "place2dTexture4.c" "file21.c";
connectAttr "place2dTexture4.tf" "file21.tf";
connectAttr "place2dTexture4.rf" "file21.rf";
connectAttr "place2dTexture4.mu" "file21.mu";
connectAttr "place2dTexture4.mv" "file21.mv";
connectAttr "place2dTexture4.s" "file21.s";
connectAttr "place2dTexture4.wu" "file21.wu";
connectAttr "place2dTexture4.wv" "file21.wv";
connectAttr "place2dTexture4.re" "file21.re";
connectAttr "place2dTexture4.of" "file21.of";
connectAttr "place2dTexture4.r" "file21.ro";
connectAttr "place2dTexture4.n" "file21.n";
connectAttr "place2dTexture4.vt1" "file21.vt1";
connectAttr "place2dTexture4.vt2" "file21.vt2";
connectAttr "place2dTexture4.vt3" "file21.vt3";
connectAttr "place2dTexture4.vc1" "file21.vc1";
connectAttr "file16.oc" "multiplyDivide4.i1";
connectAttr "file17.oc" "multiplyDivide4.i2";
connectAttr "multiplyDivide4.o" "Diamond.base_color";
connectAttr "bump2d4.o" "Diamond.n";
connectAttr "file21.oa" "Diamond.specular_roughness";
connectAttr "file18.oa" "Diamond.metalness";
connectAttr "Diamond.out" "set4.ss";
connectAttr "displacementShader4.d" "set4.ds";
connectAttr "pCylinderShape3.iog" "set4.dsm" -na;
connectAttr "pCylinderShape4.iog" "set4.dsm" -na;
connectAttr "set4.msg" "materialInfo5.sg";
connectAttr "Diamond.msg" "materialInfo5.m";
connectAttr "Diamond.msg" "materialInfo5.t" -na;
connectAttr "file19.oa" "bump2d4.bv";
connectAttr "file20.oa" "displacementShader4.d";
connectAttr "place2dTexture5.o" "substanceNode5.uv";
connectAttr "place2dTexture5.ofs" "substanceNode5.fs";
connectAttr "substanceNode5.output_basecolor" "Glitter_Metal_basecolor.sbs";
connectAttr "substanceNode5.rsw" "Glitter_Metal_basecolor.rsw";
connectAttr "substanceNode5.cext" "Glitter_Metal_basecolor.cext";
connectAttr "substanceNode5.hext" "Glitter_Metal_basecolor.hext";
connectAttr "substanceNode5.cfld" "Glitter_Metal_basecolor.cprx";
connectAttr "place2dTexture5.o" "Glitter_Metal_basecolor.uv";
connectAttr "place2dTexture5.ofs" "Glitter_Metal_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file22.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file22.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file22.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file22.ws";
connectAttr "Glitter_Metal_basecolor.cpth" "file22.ftn";
connectAttr "place2dTexture5.o" "file22.uv";
connectAttr "place2dTexture5.ofs" "file22.fs";
connectAttr "place2dTexture5.c" "file22.c";
connectAttr "place2dTexture5.tf" "file22.tf";
connectAttr "place2dTexture5.rf" "file22.rf";
connectAttr "place2dTexture5.mu" "file22.mu";
connectAttr "place2dTexture5.mv" "file22.mv";
connectAttr "place2dTexture5.s" "file22.s";
connectAttr "place2dTexture5.wu" "file22.wu";
connectAttr "place2dTexture5.wv" "file22.wv";
connectAttr "place2dTexture5.re" "file22.re";
connectAttr "place2dTexture5.of" "file22.of";
connectAttr "place2dTexture5.r" "file22.ro";
connectAttr "place2dTexture5.n" "file22.n";
connectAttr "place2dTexture5.vt1" "file22.vt1";
connectAttr "place2dTexture5.vt2" "file22.vt2";
connectAttr "place2dTexture5.vt3" "file22.vt3";
connectAttr "place2dTexture5.vc1" "file22.vc1";
connectAttr "substanceNode5.output_ambientocclusion" "Glitter_Metal_ambientocclusion.sbs"
		;
connectAttr "substanceNode5.rsw" "Glitter_Metal_ambientocclusion.rsw";
connectAttr "substanceNode5.cext" "Glitter_Metal_ambientocclusion.cext";
connectAttr "substanceNode5.hext" "Glitter_Metal_ambientocclusion.hext";
connectAttr "substanceNode5.cfld" "Glitter_Metal_ambientocclusion.cprx";
connectAttr "place2dTexture5.o" "Glitter_Metal_ambientocclusion.uv";
connectAttr "place2dTexture5.ofs" "Glitter_Metal_ambientocclusion.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file23.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file23.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file23.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file23.ws";
connectAttr "Glitter_Metal_ambientocclusion.cpth" "file23.ftn";
connectAttr "place2dTexture5.o" "file23.uv";
connectAttr "place2dTexture5.ofs" "file23.fs";
connectAttr "place2dTexture5.c" "file23.c";
connectAttr "place2dTexture5.tf" "file23.tf";
connectAttr "place2dTexture5.rf" "file23.rf";
connectAttr "place2dTexture5.mu" "file23.mu";
connectAttr "place2dTexture5.mv" "file23.mv";
connectAttr "place2dTexture5.s" "file23.s";
connectAttr "place2dTexture5.wu" "file23.wu";
connectAttr "place2dTexture5.wv" "file23.wv";
connectAttr "place2dTexture5.re" "file23.re";
connectAttr "place2dTexture5.of" "file23.of";
connectAttr "place2dTexture5.r" "file23.ro";
connectAttr "place2dTexture5.n" "file23.n";
connectAttr "place2dTexture5.vt1" "file23.vt1";
connectAttr "place2dTexture5.vt2" "file23.vt2";
connectAttr "place2dTexture5.vt3" "file23.vt3";
connectAttr "place2dTexture5.vc1" "file23.vc1";
connectAttr "substanceNode5.output_metallic" "Glitter_Metal_metallic.sbs";
connectAttr "substanceNode5.rsw" "Glitter_Metal_metallic.rsw";
connectAttr "substanceNode5.cext" "Glitter_Metal_metallic.cext";
connectAttr "substanceNode5.hext" "Glitter_Metal_metallic.hext";
connectAttr "substanceNode5.cfld" "Glitter_Metal_metallic.cprx";
connectAttr "place2dTexture5.o" "Glitter_Metal_metallic.uv";
connectAttr "place2dTexture5.ofs" "Glitter_Metal_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file24.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file24.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file24.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file24.ws";
connectAttr "Glitter_Metal_metallic.cpth" "file24.ftn";
connectAttr "place2dTexture5.o" "file24.uv";
connectAttr "place2dTexture5.ofs" "file24.fs";
connectAttr "place2dTexture5.c" "file24.c";
connectAttr "place2dTexture5.tf" "file24.tf";
connectAttr "place2dTexture5.rf" "file24.rf";
connectAttr "place2dTexture5.mu" "file24.mu";
connectAttr "place2dTexture5.mv" "file24.mv";
connectAttr "place2dTexture5.s" "file24.s";
connectAttr "place2dTexture5.wu" "file24.wu";
connectAttr "place2dTexture5.wv" "file24.wv";
connectAttr "place2dTexture5.re" "file24.re";
connectAttr "place2dTexture5.of" "file24.of";
connectAttr "place2dTexture5.r" "file24.ro";
connectAttr "place2dTexture5.n" "file24.n";
connectAttr "place2dTexture5.vt1" "file24.vt1";
connectAttr "place2dTexture5.vt2" "file24.vt2";
connectAttr "place2dTexture5.vt3" "file24.vt3";
connectAttr "place2dTexture5.vc1" "file24.vc1";
connectAttr "substanceNode5.output_normal" "Glitter_Metal_normal.sbs";
connectAttr "substanceNode5.rsw" "Glitter_Metal_normal.rsw";
connectAttr "substanceNode5.cext" "Glitter_Metal_normal.cext";
connectAttr "substanceNode5.hext" "Glitter_Metal_normal.hext";
connectAttr "substanceNode5.cfld" "Glitter_Metal_normal.cprx";
connectAttr "place2dTexture5.o" "Glitter_Metal_normal.uv";
connectAttr "place2dTexture5.ofs" "Glitter_Metal_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file25.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file25.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file25.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file25.ws";
connectAttr "Glitter_Metal_normal.cpth" "file25.ftn";
connectAttr "place2dTexture5.o" "file25.uv";
connectAttr "place2dTexture5.ofs" "file25.fs";
connectAttr "place2dTexture5.c" "file25.c";
connectAttr "place2dTexture5.tf" "file25.tf";
connectAttr "place2dTexture5.rf" "file25.rf";
connectAttr "place2dTexture5.mu" "file25.mu";
connectAttr "place2dTexture5.mv" "file25.mv";
connectAttr "place2dTexture5.s" "file25.s";
connectAttr "place2dTexture5.wu" "file25.wu";
connectAttr "place2dTexture5.wv" "file25.wv";
connectAttr "place2dTexture5.re" "file25.re";
connectAttr "place2dTexture5.of" "file25.of";
connectAttr "place2dTexture5.r" "file25.ro";
connectAttr "place2dTexture5.n" "file25.n";
connectAttr "place2dTexture5.vt1" "file25.vt1";
connectAttr "place2dTexture5.vt2" "file25.vt2";
connectAttr "place2dTexture5.vt3" "file25.vt3";
connectAttr "place2dTexture5.vc1" "file25.vc1";
connectAttr "substanceNode5.output_height" "Glitter_Metal_height.sbs";
connectAttr "substanceNode5.rsw" "Glitter_Metal_height.rsw";
connectAttr "substanceNode5.cext" "Glitter_Metal_height.cext";
connectAttr "substanceNode5.hext" "Glitter_Metal_height.hext";
connectAttr "substanceNode5.cfld" "Glitter_Metal_height.cprx";
connectAttr "place2dTexture5.o" "Glitter_Metal_height.uv";
connectAttr "place2dTexture5.ofs" "Glitter_Metal_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file26.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file26.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file26.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file26.ws";
connectAttr "Glitter_Metal_height.cpth" "file26.ftn";
connectAttr "place2dTexture5.o" "file26.uv";
connectAttr "place2dTexture5.ofs" "file26.fs";
connectAttr "place2dTexture5.c" "file26.c";
connectAttr "place2dTexture5.tf" "file26.tf";
connectAttr "place2dTexture5.rf" "file26.rf";
connectAttr "place2dTexture5.mu" "file26.mu";
connectAttr "place2dTexture5.mv" "file26.mv";
connectAttr "place2dTexture5.s" "file26.s";
connectAttr "place2dTexture5.wu" "file26.wu";
connectAttr "place2dTexture5.wv" "file26.wv";
connectAttr "place2dTexture5.re" "file26.re";
connectAttr "place2dTexture5.of" "file26.of";
connectAttr "place2dTexture5.r" "file26.ro";
connectAttr "place2dTexture5.n" "file26.n";
connectAttr "place2dTexture5.vt1" "file26.vt1";
connectAttr "place2dTexture5.vt2" "file26.vt2";
connectAttr "place2dTexture5.vt3" "file26.vt3";
connectAttr "place2dTexture5.vc1" "file26.vc1";
connectAttr "substanceNode5.output_roughness" "Glitter_Metal_roughness.sbs";
connectAttr "substanceNode5.rsw" "Glitter_Metal_roughness.rsw";
connectAttr "substanceNode5.cext" "Glitter_Metal_roughness.cext";
connectAttr "substanceNode5.hext" "Glitter_Metal_roughness.hext";
connectAttr "substanceNode5.cfld" "Glitter_Metal_roughness.cprx";
connectAttr "place2dTexture5.o" "Glitter_Metal_roughness.uv";
connectAttr "place2dTexture5.ofs" "Glitter_Metal_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file27.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file27.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file27.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file27.ws";
connectAttr "Glitter_Metal_roughness.cpth" "file27.ftn";
connectAttr "place2dTexture5.o" "file27.uv";
connectAttr "place2dTexture5.ofs" "file27.fs";
connectAttr "place2dTexture5.c" "file27.c";
connectAttr "place2dTexture5.tf" "file27.tf";
connectAttr "place2dTexture5.rf" "file27.rf";
connectAttr "place2dTexture5.mu" "file27.mu";
connectAttr "place2dTexture5.mv" "file27.mv";
connectAttr "place2dTexture5.s" "file27.s";
connectAttr "place2dTexture5.wu" "file27.wu";
connectAttr "place2dTexture5.wv" "file27.wv";
connectAttr "place2dTexture5.re" "file27.re";
connectAttr "place2dTexture5.of" "file27.of";
connectAttr "place2dTexture5.r" "file27.ro";
connectAttr "place2dTexture5.n" "file27.n";
connectAttr "place2dTexture5.vt1" "file27.vt1";
connectAttr "place2dTexture5.vt2" "file27.vt2";
connectAttr "place2dTexture5.vt3" "file27.vt3";
connectAttr "place2dTexture5.vc1" "file27.vc1";
connectAttr "file22.oc" "multiplyDivide5.i1";
connectAttr "file23.oc" "multiplyDivide5.i2";
connectAttr "multiplyDivide5.o" "aiStandardSurface1.base_color";
connectAttr "bump2d5.o" "aiStandardSurface1.n";
connectAttr "file27.oa" "aiStandardSurface1.specular_roughness";
connectAttr "file24.oa" "aiStandardSurface1.metalness";
connectAttr "aiStandardSurface1.out" "set5.ss";
connectAttr "displacementShader5.d" "set5.ds";
connectAttr "pSphereShape1.iog" "set5.dsm" -na;
connectAttr "pTorusShape1.iog" "set5.dsm" -na;
connectAttr "pCylinderShape1.iog" "set5.dsm" -na;
connectAttr "pSphereShape2.iog" "set5.dsm" -na;
connectAttr "|Mesh|pCube7|pCube8|pCube9|pCubeShape9.iog" "set5.dsm" -na;
connectAttr "|Mesh|pCube7|pCube8|pCubeShape8.iog" "set5.dsm" -na;
connectAttr "pCubeShape7.iog" "set5.dsm" -na;
connectAttr "|Mesh|pCube11|pCube8|pCube9|pCubeShape9.iog" "set5.dsm" -na;
connectAttr "|Mesh|pCube11|pCube8|pCubeShape8.iog" "set5.dsm" -na;
connectAttr "pCubeShape11.iog" "set5.dsm" -na;
connectAttr "|Mesh|pCube10|pCube8|pCube9|pCubeShape9.iog" "set5.dsm" -na;
connectAttr "|Mesh|pCube10|pCube8|pCubeShape8.iog" "set5.dsm" -na;
connectAttr "pCubeShape10.iog" "set5.dsm" -na;
connectAttr "set5.msg" "materialInfo6.sg";
connectAttr "aiStandardSurface1.msg" "materialInfo6.m";
connectAttr "file22.msg" "materialInfo6.t" -na;
connectAttr "file25.oa" "bump2d5.bv";
connectAttr "file26.oa" "displacementShader5.d";
connectAttr "Diamond_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "file18.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Diamond_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "Diamond_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "file21.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "multiplyDivide4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "place2dTexture4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "set4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "file19.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Diamond.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "displacementShader4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "Diamond_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "file17.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "file16.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "file20.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "substanceNode4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "bump2d4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "Diamond_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "Diamond_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Glitter_Metal_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "file27.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "place2dTexture5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "aiStandardSurface1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "substanceNode5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "Glitter_Metal_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "file26.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "displacementShader5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "Glitter_Metal_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "set5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "bump2d5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[10].dn"
		;
connectAttr "file25.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "Glitter_Metal_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[12].dn"
		;
connectAttr "file22.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[13].dn"
		;
connectAttr "file23.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[14].dn"
		;
connectAttr "Glitter_Metal_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[15].dn"
		;
connectAttr "file24.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[16].dn"
		;
connectAttr "multiplyDivide5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[17].dn"
		;
connectAttr "Glitter_Metal_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[18].dn"
		;
connectAttr "Main_Jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "Stem_Jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "Arm_Jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "Robot_Wrist_Jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "makeNurbCircle1.oc" "transformGeometry1.ig";
connectAttr "makeNurbCircle2.oc" "transformGeometry2.ig";
connectAttr "makeNurbCircle5.oc" "transformGeometry3.ig";
connectAttr "makeNurbCircle6.oc" "transformGeometry4.ig";
connectAttr "makeNurbCircle7.oc" "transformGeometry5.ig";
connectAttr "makeNurbCircle8.oc" "transformGeometry6.ig";
connectAttr "makeNurbCircle9.oc" "transformGeometry7.ig";
connectAttr "makeNurbCircle10.oc" "transformGeometry8.ig";
connectAttr "makeNurbCircle11.oc" "transformGeometry9.ig";
connectAttr "makeNurbCircle12.oc" "transformGeometry10.ig";
connectAttr "makeNurbCircle13.oc" "transformGeometry11.ig";
connectAttr "set1.pa" ":renderPartition.st" -na;
connectAttr "set2.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "set3.pa" ":renderPartition.st" -na;
connectAttr "set4.pa" ":renderPartition.st" -na;
connectAttr "set5.pa" ":renderPartition.st" -na;
connectAttr "Green.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "Steel_armor.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "Gold1.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader3.msg" ":defaultShaderList1.s" -na;
connectAttr "Diamond.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader4.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader5.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "directionalLightShape2.ltd" ":lightList1.l" -na;
connectAttr "directionalLightShape3.ltd" ":lightList1.l" -na;
connectAttr "substanceNode1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Steel_Rust_and_Wear_basecolor.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Steel_Rust_and_Wear_metallic.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "Steel_Rust_and_Wear_normal.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "Steel_Rust_and_Wear_height.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "Steel_Rust_and_Wear_roughness.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode2.msg" ":defaultTextureList1.tx" -na;
connectAttr "Iron_Diamond_Armor_basecolor.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "Iron_Diamond_Armor_metallic.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "Iron_Diamond_Armor_normal.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "Iron_Diamond_Armor_height.msg" ":defaultTextureList1.tx" -na;
connectAttr "file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "Iron_Diamond_Armor_roughness.msg" ":defaultTextureList1.tx" -na;
connectAttr "file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode3.msg" ":defaultTextureList1.tx" -na;
connectAttr "Substance_graph_basecolor.msg" ":defaultTextureList1.tx" -na;
connectAttr "file11.msg" ":defaultTextureList1.tx" -na;
connectAttr "Substance_graph_metallic.msg" ":defaultTextureList1.tx" -na;
connectAttr "file12.msg" ":defaultTextureList1.tx" -na;
connectAttr "Substance_graph_normal.msg" ":defaultTextureList1.tx" -na;
connectAttr "file13.msg" ":defaultTextureList1.tx" -na;
connectAttr "Substance_graph_height.msg" ":defaultTextureList1.tx" -na;
connectAttr "file14.msg" ":defaultTextureList1.tx" -na;
connectAttr "Substance_graph_roughness.msg" ":defaultTextureList1.tx" -na;
connectAttr "file15.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode4.msg" ":defaultTextureList1.tx" -na;
connectAttr "Diamond_basecolor.msg" ":defaultTextureList1.tx" -na;
connectAttr "file16.msg" ":defaultTextureList1.tx" -na;
connectAttr "Diamond_ambientocclusion.msg" ":defaultTextureList1.tx" -na;
connectAttr "file17.msg" ":defaultTextureList1.tx" -na;
connectAttr "Diamond_metallic.msg" ":defaultTextureList1.tx" -na;
connectAttr "file18.msg" ":defaultTextureList1.tx" -na;
connectAttr "Diamond_normal.msg" ":defaultTextureList1.tx" -na;
connectAttr "file19.msg" ":defaultTextureList1.tx" -na;
connectAttr "Diamond_height.msg" ":defaultTextureList1.tx" -na;
connectAttr "file20.msg" ":defaultTextureList1.tx" -na;
connectAttr "Diamond_roughness.msg" ":defaultTextureList1.tx" -na;
connectAttr "file21.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode5.msg" ":defaultTextureList1.tx" -na;
connectAttr "Glitter_Metal_basecolor.msg" ":defaultTextureList1.tx" -na;
connectAttr "file22.msg" ":defaultTextureList1.tx" -na;
connectAttr "Glitter_Metal_ambientocclusion.msg" ":defaultTextureList1.tx" -na;
connectAttr "file23.msg" ":defaultTextureList1.tx" -na;
connectAttr "Glitter_Metal_metallic.msg" ":defaultTextureList1.tx" -na;
connectAttr "file24.msg" ":defaultTextureList1.tx" -na;
connectAttr "Glitter_Metal_normal.msg" ":defaultTextureList1.tx" -na;
connectAttr "file25.msg" ":defaultTextureList1.tx" -na;
connectAttr "Glitter_Metal_height.msg" ":defaultTextureList1.tx" -na;
connectAttr "file26.msg" ":defaultTextureList1.tx" -na;
connectAttr "Glitter_Metal_roughness.msg" ":defaultTextureList1.tx" -na;
connectAttr "file27.msg" ":defaultTextureList1.tx" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "directionalLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "directionalLight3.iog" ":defaultLightSet.dsm" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of RobotArmPrototype.ma
