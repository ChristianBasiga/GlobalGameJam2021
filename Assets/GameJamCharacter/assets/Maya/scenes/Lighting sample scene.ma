//Maya ASCII 2014 scene
//Name: Lighting sample scene.ma
//Last modified: Wed, Sep 23, 2015 04:56:48 PM
//Codeset: 1252
file -rdi 1 -ns "model" -rfn "modelRN" "D:/Rabbix/Freelancer/Contest - Girl/Turbosquid/Maya//scenes/Little Girl model -materialsApplied.ma";
file -r -ns "model" -dr 1 -rfn "modelRN" "D:/Rabbix/Freelancer/Contest - Girl/Turbosquid/Maya//scenes/Little Girl model -materialsApplied.ma";
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "mib_illum_hair_x" -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "p_buffer_writer"
		 -nodeType "p_z" -nodeType "p_constant" -nodeType "p_facing_ratio" -nodeType "p_color_plus_alpha"
		 -nodeType "p_motion_to_rgb" -nodeType "p_irradiance" -nodeType "p_color_to_float"
		 -nodeType "p_fisheye" -nodeType "p_CSG" -nodeType "p_shadow" -nodeType "p_bake_read"
		 -nodeType "p_ray_type" -nodeType "p_MegaTK" -nodeType "p_SpotTK" -nodeType "p_PointTK"
		 -nodeType "p_DirectTK" -nodeType "p_environment" -nodeType "p_shadow_transparency"
		 -nodeType "p_scatter_wrap" -nodeType "p_MegaTK_pass" -nodeType "p_maya_shadingengine"
		 -nodeType "p_float4_to_color" -nodeType "p_float2_to_vector" -nodeType "p_float3_to_vector"
		 -nodeType "p_grade_color" -nodeType "p_HairTK" -nodeType "p_HairTK_shadow" -nodeType "p_physical_lens_dof"
		 -nodeType "p_hair_mapping" -nodeType "p_shader_replacer" -nodeType "p_dielectric_interface"
		 -nodeType "p_eye" -nodeType "shaveMRInstanceGeom" -nodeType "shaveMRGeomPasser" -nodeType "shaveMRHairComp"
		 -nodeType "shaveMRHairGeomDRA" -nodeType "shaveMRHairIllum" -nodeType "shaveMRRenderComp"
		 -nodeType "shaveMRSatData" -nodeType "shaveMRShadowMatte" -nodeType "shaveMRVertexIllum"
		 -nodeType "shaveMRHairShadows" -nodeType "misss_physical" -nodeType "misss_physical_phen"
		 -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x" -nodeType "misss_fast_shader2"
		 -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular" -nodeType "misss_lightmap_write"
		 -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader" -nodeType "misss_set_normal"
		 -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya" -nodeType "misss_fast_skin_maya"
		 -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d" -nodeType "misss_mia_skin2_phen"
		 -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen" -nodeType "misss_mia_skin2_surface_phen"
		 -nodeType "surfaceSampler" -nodeType "mib_data_bool" -nodeType "mib_data_int" -nodeType "mib_data_scalar"
		 -nodeType "mib_data_vector" -nodeType "mib_data_color" -nodeType "mib_data_string"
		 -nodeType "mib_data_texture" -nodeType "mib_data_shader" -nodeType "mib_data_bool_array"
		 -nodeType "mib_data_int_array" -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array"
		 -nodeType "mib_data_color_array" -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array"
		 -nodeType "mib_data_shader_array" -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int"
		 -nodeType "mib_data_get_scalar" -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color"
		 -nodeType "mib_data_get_string" -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader"
		 -nodeType "mib_data_get_shader_bool" -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar"
		 -nodeType "mib_data_get_shader_vector" -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env"
		 -nodeType "user_ibl_rect" -nodeType "xgen_geo" -nodeType "xgen_seexpr" -nodeType "xgen_scalar_to_integer"
		 -nodeType "xgen_integer_to_vector" -nodeType "xgen_scalar_to_vector" -nodeType "xgen_boolean_to_vector"
		 -nodeType "xgen_boolean_switch" -nodeType "xgen_tube_normals" -nodeType "xgen_hair_phen"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.4 ";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201309050112-886424";
fileInfo "osv" "Microsoft Windows 7 Ultimate Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 18.895228494715191 39.565235416434057 435.13766694079135 ;
	setAttr ".r" -type "double3" 1.4616472704032608 2.6000000000025376 0 ;
	setAttr ".rp" -type "double3" -2.1316282072803006e-014 7.1054273576010019e-015 0 ;
	setAttr ".rpt" -type "double3" 1.41097478258469e-015 -2.9288735805234573e-015 3.2109855886371163e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 80;
	setAttr ".ncp" 0.2;
	setAttr ".coi" 462.26239563731292;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -10.062597513198853 7.2120025157928467 -6.1746489927172661 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dgm" no;
	setAttr ".dr" yes;
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.6070205581757997 52.519547420545948 100.10048272039403 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".coi" 100.1;
	setAttr ".ow" 202.34760556333009;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".dr" yes;
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "sIBL";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "sIBL_controls" -p "sIBL";
	addAttr -ci true -sn "renderTogglers" -ln "renderTogglers" -nn "[ Render Togglers ]" 
		-min 0 -max 0 -en "Smart IBL" -at "enum";
	addAttr -ci true -sn "toggleBackground" -ln "toggleBackground" -nn "Background" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "toggleReflection" -ln "toggleReflection" -nn "Reflection" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "toggleLighting" -ln "toggleLighting" -nn "Lighting" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "ccBackground" -ln "ccBackground" -nn "[ Background CC ]" -min 
		0 -max 0 -en "Smart IBL" -at "enum";
	addAttr -ci true -uac -sn "backgroundGamma" -ln "backgroundGamma" -at "float3" -nc 
		3;
	addAttr -ci true -sn "redBackgroundgamma" -ln "redBackgroundgamma" -at "float" -p "backgroundGamma";
	addAttr -ci true -sn "greenBackgroundgamma" -ln "greenBackgroundgamma" -at "float" 
		-p "backgroundGamma";
	addAttr -ci true -sn "blueBackgroundgamma" -ln "blueBackgroundgamma" -at "float" 
		-p "backgroundGamma";
	addAttr -ci true -uac -sn "backgroundGain" -ln "backgroundGain" -at "float3" -nc 
		3;
	addAttr -ci true -sn "redBackgroundgain" -ln "redBackgroundgain" -at "float" -p "backgroundGain";
	addAttr -ci true -sn "greenBackgroundgain" -ln "greenBackgroundgain" -at "float" 
		-p "backgroundGain";
	addAttr -ci true -sn "blueBackgroundgain" -ln "blueBackgroundgain" -at "float" -p "backgroundGain";
	addAttr -ci true -sn "ccReflection" -ln "ccReflection" -nn "[ Reflection CC ]" -min 
		0 -max 0 -en "Smart IBL" -at "enum";
	addAttr -ci true -uac -sn "reflectionGamma" -ln "reflectionGamma" -at "float3" -nc 
		3;
	addAttr -ci true -sn "redReflectiongamma" -ln "redReflectiongamma" -at "float" -p "reflectionGamma";
	addAttr -ci true -sn "greenReflectiongamma" -ln "greenReflectiongamma" -at "float" 
		-p "reflectionGamma";
	addAttr -ci true -sn "blueReflectiongamma" -ln "blueReflectiongamma" -at "float" 
		-p "reflectionGamma";
	addAttr -ci true -uac -sn "reflectionGain" -ln "reflectionGain" -at "float3" -nc 
		3;
	addAttr -ci true -sn "redReflectiongain" -ln "redReflectiongain" -at "float" -p "reflectionGain";
	addAttr -ci true -sn "greenReflectiongain" -ln "greenReflectiongain" -at "float" 
		-p "reflectionGain";
	addAttr -ci true -sn "blueReflectiongain" -ln "blueReflectiongain" -at "float" -p "reflectionGain";
	addAttr -ci true -sn "ccLighting" -ln "ccLighting" -nn "[ Lighting CC ]" -min 0 
		-max 0 -en "Smart IBL" -at "enum";
	addAttr -ci true -uac -sn "lightingGamma" -ln "lightingGamma" -at "float3" -nc 3;
	addAttr -ci true -sn "redLightinggamma" -ln "redLightinggamma" -at "float" -p "lightingGamma";
	addAttr -ci true -sn "greenLightinggamma" -ln "greenLightinggamma" -at "float" -p "lightingGamma";
	addAttr -ci true -sn "blueLightinggamma" -ln "blueLightinggamma" -at "float" -p "lightingGamma";
	addAttr -ci true -uac -sn "lightingGain" -ln "lightingGain" -at "float3" -nc 3;
	addAttr -ci true -sn "redLightinggain" -ln "redLightinggain" -at "float" -p "lightingGain";
	addAttr -ci true -sn "greenLightinggain" -ln "greenLightinggain" -at "float" -p "lightingGain";
	addAttr -ci true -sn "blueLightinggain" -ln "blueLightinggain" -at "float" -p "lightingGain";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".renderTogglers";
	setAttr -k on ".toggleBackground";
	setAttr -k on ".toggleReflection" yes;
	setAttr -k on ".toggleLighting" yes;
	setAttr -l on -k on ".ccBackground";
	setAttr -k on ".backgroundGamma" -type "float3" 0.45454547 0.45454547 0.45454547 ;
	setAttr -k on ".backgroundGamma";
	setAttr -k on ".redBackgroundgamma";
	setAttr -k on ".greenBackgroundgamma";
	setAttr -k on ".blueBackgroundgamma";
	setAttr -k on ".backgroundGain" -type "float3" 1 1 1 ;
	setAttr -k on ".backgroundGain";
	setAttr -k on ".redBackgroundgain";
	setAttr -k on ".greenBackgroundgain";
	setAttr -k on ".blueBackgroundgain";
	setAttr -l on -k on ".ccReflection";
	setAttr -k on ".reflectionGamma" -type "float3" 1 1 1 ;
	setAttr -k on ".reflectionGamma";
	setAttr -k on ".redReflectiongamma";
	setAttr -k on ".greenReflectiongamma";
	setAttr -k on ".blueReflectiongamma";
	setAttr -k on ".reflectionGain" -type "float3" 1 1 1 ;
	setAttr -k on ".reflectionGain";
	setAttr -k on ".redReflectiongain";
	setAttr -k on ".greenReflectiongain";
	setAttr -k on ".blueReflectiongain";
	setAttr -l on -k on ".ccLighting";
	setAttr -k on ".lightingGamma" -type "float3" 1 1 1 ;
	setAttr -k on ".lightingGamma";
	setAttr -k on ".redLightinggamma";
	setAttr -k on ".greenLightinggamma";
	setAttr -k on ".blueLightinggamma";
	setAttr -k on ".lightingGain" -type "float3" 1 1 1 ;
	setAttr -k on ".lightingGain";
	setAttr -k on ".redLightinggain";
	setAttr -k on ".greenLightinggain";
	setAttr -k on ".blueLightinggain";
createNode annotationShape -n "sIBL_controlsShape" -p "sIBL_controls";
	setAttr -k off ".v";
	setAttr ".txt" -type "string" "[ Smart IBL Controls ]";
	setAttr -l on -k off ".daro" no;
createNode transform -n "sIBL_feedback" -p "sIBL";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -133.79300861190021 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 100 100 100 ;
	setAttr ".dfm" no;
	setAttr ".hde" yes;
createNode nurbsSurface -n "sIBL_feedbackShape" -p "sIBL_feedback";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 0.25 0.5 0.75 1 1 1
		13 -0.25 -0.125 0 0.125 0.25 0.375 0.5 0.625 0.75 0.875 1 1.125 1.25
		
		77
		-2.5316183359690667e-016 -1 9.596474681976934e-017
		-2.5316183359690667e-016 -1 9.596474681976934e-017
		-2.5316183359690667e-016 -1 9.596474681976934e-017
		-2.5316183359690667e-016 -1 9.596474681976934e-017
		-2.5316183359690667e-016 -1 9.596474681976934e-017
		-2.5316183359690667e-016 -1 9.596474681976934e-017
		-2.5316183359690667e-016 -1 9.596474681976934e-017
		-2.5316183359690667e-016 -1 9.596474681976934e-017
		-2.5316183359690667e-016 -1 9.596474681976934e-017
		-2.5316183359690667e-016 -1 9.596474681976934e-017
		-2.5316183359690667e-016 -1 9.596474681976934e-017
		-0.19991679083637184 -0.99999999999999178 0.19991679083638117
		1.7907247815300612e-015 -1.0000000000000135 0.2827250369468971
		0.19991679083637073 -0.99999999999998446 0.19991679083638528
		0.2827250369468991 -1.000000000000008 -1.4437660772823907e-014
		0.19991679083637842 -0.99999999999999056 -0.19991679083635616
		-8.3120246661773454e-015 -1.0000000000000053 -0.28272503694691509
		-0.19991679083636052 -0.99999999999999578 -0.19991679083636663
		-0.28272503694690931 -1.0000000000000042 -5.7917516254410916e-015
		-0.19991679083637184 -0.99999999999999178 0.19991679083638117
		1.7907247815300612e-015 -1.0000000000000135 0.2827250369468971
		0.19991679083637073 -0.99999999999998446 0.19991679083638528
		-0.6164299796905941 -0.78361162489123759 0.61642997969057312
		-7.671546850828012e-016 -0.78361162489120473 0.87176363753181607
		0.61642997969058966 -0.78361162489124525 0.61642997969056423
		0.8717636375318164 -0.78361162489121028 2.7939509626283506e-014
		0.61642997969057345 -0.78361162489123826 -0.61642997969062097
		1.9243230253656685e-014 -0.78361162489121627 -0.87176363753178177
		-0.61642997969061486 -0.78361162489123093 -0.61642997969060154
		-0.87176363753178987 -0.78361162489121872 1.0988220560774328e-014
		-0.6164299796905941 -0.78361162489123759 0.61642997969057312
		-7.671546850828012e-016 -0.78361162489120473 0.87176363753181607
		0.61642997969058966 -0.78361162489124525 0.61642997969056423
		-0.86720244749153241 6.1547988927657116e-015 0.86720244749155873
		-4.5710303403355329e-015 -1.1955714196432154e-014 1.226409462565663
		0.86720244749155051 1.4837089890029631e-014 0.86720244749157371
		1.2264094625656559 -9.2079122104848921e-015 -3.4420815061967358e-014
		0.86720244749156961 9.2183205513407529e-015 -0.86720244749150466
		-2.8624204415087661e-014 -3.628174150005492e-015 -1.2264094625657038
		-0.86720244749150832 2.5951463200613034e-015 -0.86720244749152842
		-1.2264094625657012 -6.3837823915946501e-016 -1.2999438839365577e-014
		-0.86720244749153241 6.1547988927657116e-015 0.86720244749155873
		-4.5710303403355329e-015 -1.1955714196432154e-014 1.226409462565663
		0.86720244749155051 1.4837089890029631e-014 0.86720244749157371
		-0.6164299796906042 0.78361162489122371 0.61642997969057511
		7.6320646774723086e-015 0.78361162489123226 0.87176363753181574
		0.61642997969057978 0.78361162489121194 0.61642997969056246
		0.87176363753182906 0.78361162489122926 3.0983296150763919e-014
		0.61642997969056135 0.78361162489121972 -0.61642997969062618
		3.1021043814242913e-014 0.78361162489122083 -0.87176363753177799
		-0.61642997969062774 0.78361162489122815 -0.61642997969060465
		-0.87176363753177522 0.78361162489121838 1.2210977335494754e-014
		-0.6164299796906042 0.78361162489122371 0.61642997969057511
		7.6320646774723086e-015 0.78361162489123226 0.87176363753181574
		0.61642997969057978 0.78361162489121194 0.61642997969056246
		-0.19991679083636651 0.99999999999999778 0.19991679083638011
		-2.5601243265456435e-015 0.99999999999999556 0.28272503694689827
		0.19991679083637789 1.0000000000000091 0.19991679083638456
		0.282725036946891 0.99999999999999722 -1.528630785876842e-014
		0.19991679083638675 1.0000000000000007 -0.19991679083635411
		-1.6913881414769997e-014 1.0000000000000067 -0.28272503694691747
		-0.19991679083635167 0.99999999999999412 -0.19991679083636399
		-0.28272503694691814 1.0000000000000075 -6.598066629791946e-015
		-0.19991679083636651 0.99999999999999778 0.19991679083638011
		-2.5601243265456435e-015 0.99999999999999556 0.28272503694689827
		0.19991679083637789 1.0000000000000091 0.19991679083638456
		-1.6799646886496722e-017 1 1.7399673366363367e-016
		-1.6799646886496722e-017 1 1.7399673366363367e-016
		-1.6799646886496722e-017 1 1.7399673366363367e-016
		-1.6799646886496722e-017 1 1.7399673366363367e-016
		-1.6799646886496722e-017 1 1.7399673366363367e-016
		-1.6799646886496722e-017 1 1.7399673366363367e-016
		-1.6799646886496722e-017 1 1.7399673366363367e-016
		-1.6799646886496722e-017 1 1.7399673366363367e-016
		-1.6799646886496722e-017 1 1.7399673366363367e-016
		-1.6799646886496722e-017 1 1.7399673366363367e-016
		-1.6799646886496722e-017 1 1.7399673366363367e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "sIBL_lights_target" -p "sIBL";
createNode locator -n "sIBL_lights_targetShape" -p "sIBL_lights_target";
	setAttr -k off ".v";
createNode transform -n "sIBL_sun" -p "sIBL";
	setAttr ".s" -type "double3" 10 10 10 ;
createNode directionalLight -n "sIBL_sunShape" -p "sIBL_sun";
	setAttr -k off ".v";
	setAttr ".phi" 8000;
createNode aimConstraint -n "sIBL_aimConstraint" -p "sIBL_sun";
	addAttr -ci true -sn "w0" -ln "sIBL_lights_targetW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".rsrr" -type "double3" 145.43650325725991 7.1868323869144675 180 ;
	setAttr -k on ".w0";
createNode transform -n "sIBL_ground" -p "sIBL";
	setAttr ".s" -type "double3" 141.42135623730951 141.42135623730951 141.42135623730951 ;
createNode mesh -n "sIBL_groundShape" -p "sIBL_ground";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 256 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 0.06666667 0 0.13333334
		 0 0.20000002 0 0.26666668 0 0.33333334 0 0.40000004 0 0.4666667 0 0.53333336 0 0.60000002
		 0 0.66666669 0 0.73333335 0 0.80000007 0 0.86666673 0 0.9333334 0 1 0 0 0.06666667
		 0.06666667 0.06666667 0.13333334 0.06666667 0.20000002 0.06666667 0.26666668 0.06666667
		 0.33333334 0.06666667 0.40000004 0.06666667 0.4666667 0.06666667 0.53333336 0.06666667
		 0.60000002 0.06666667 0.66666669 0.06666667 0.73333335 0.06666667 0.80000007 0.06666667
		 0.86666673 0.06666667 0.9333334 0.06666667 1 0.06666667 0 0.13333334 0.06666667 0.13333334
		 0.13333334 0.13333334 0.20000002 0.13333334 0.26666668 0.13333334 0.33333334 0.13333334
		 0.40000004 0.13333334 0.4666667 0.13333334 0.53333336 0.13333334 0.60000002 0.13333334
		 0.66666669 0.13333334 0.73333335 0.13333334 0.80000007 0.13333334 0.86666673 0.13333334
		 0.9333334 0.13333334 1 0.13333334 0 0.20000002 0.06666667 0.20000002 0.13333334 0.20000002
		 0.20000002 0.20000002 0.26666668 0.20000002 0.33333334 0.20000002 0.40000004 0.20000002
		 0.4666667 0.20000002 0.53333336 0.20000002 0.60000002 0.20000002 0.66666669 0.20000002
		 0.73333335 0.20000002 0.80000007 0.20000002 0.86666673 0.20000002 0.9333334 0.20000002
		 1 0.20000002 0 0.26666668 0.06666667 0.26666668 0.13333334 0.26666668 0.20000002
		 0.26666668 0.26666668 0.26666668 0.33333334 0.26666668 0.40000004 0.26666668 0.4666667
		 0.26666668 0.53333336 0.26666668 0.60000002 0.26666668 0.66666669 0.26666668 0.73333335
		 0.26666668 0.80000007 0.26666668 0.86666673 0.26666668 0.9333334 0.26666668 1 0.26666668
		 0 0.33333334 0.06666667 0.33333334 0.13333334 0.33333334 0.20000002 0.33333334 0.26666668
		 0.33333334 0.33333334 0.33333334 0.40000004 0.33333334 0.4666667 0.33333334 0.53333336
		 0.33333334 0.60000002 0.33333334 0.66666669 0.33333334 0.73333335 0.33333334 0.80000007
		 0.33333334 0.86666673 0.33333334 0.9333334 0.33333334 1 0.33333334 0 0.40000004 0.06666667
		 0.40000004 0.13333334 0.40000004 0.20000002 0.40000004 0.26666668 0.40000004 0.33333334
		 0.40000004 0.40000004 0.40000004 0.4666667 0.40000004 0.53333336 0.40000004 0.60000002
		 0.40000004 0.66666669 0.40000004 0.73333335 0.40000004 0.80000007 0.40000004 0.86666673
		 0.40000004 0.9333334 0.40000004 1 0.40000004 0 0.4666667 0.06666667 0.4666667 0.13333334
		 0.4666667 0.20000002 0.4666667 0.26666668 0.4666667 0.33333334 0.4666667 0.40000004
		 0.4666667 0.4666667 0.4666667 0.53333336 0.4666667 0.60000002 0.4666667 0.66666669
		 0.4666667 0.73333335 0.4666667 0.80000007 0.4666667 0.86666673 0.4666667 0.9333334
		 0.4666667 1 0.4666667 0 0.53333336 0.06666667 0.53333336 0.13333334 0.53333336 0.20000002
		 0.53333336 0.26666668 0.53333336 0.33333334 0.53333336 0.40000004 0.53333336 0.4666667
		 0.53333336 0.53333336 0.53333336 0.60000002 0.53333336 0.66666669 0.53333336 0.73333335
		 0.53333336 0.80000007 0.53333336 0.86666673 0.53333336 0.9333334 0.53333336 1 0.53333336
		 0 0.60000002 0.06666667 0.60000002 0.13333334 0.60000002 0.20000002 0.60000002 0.26666668
		 0.60000002 0.33333334 0.60000002 0.40000004 0.60000002 0.4666667 0.60000002 0.53333336
		 0.60000002 0.60000002 0.60000002 0.66666669 0.60000002 0.73333335 0.60000002 0.80000007
		 0.60000002 0.86666673 0.60000002 0.9333334 0.60000002 1 0.60000002 0 0.66666669 0.06666667
		 0.66666669 0.13333334 0.66666669 0.20000002 0.66666669 0.26666668 0.66666669 0.33333334
		 0.66666669 0.40000004 0.66666669 0.4666667 0.66666669 0.53333336 0.66666669 0.60000002
		 0.66666669 0.66666669 0.66666669 0.73333335 0.66666669 0.80000007 0.66666669 0.86666673
		 0.66666669 0.9333334 0.66666669 1 0.66666669 0 0.73333335 0.06666667 0.73333335 0.13333334
		 0.73333335 0.20000002 0.73333335 0.26666668 0.73333335 0.33333334 0.73333335 0.40000004
		 0.73333335 0.4666667 0.73333335 0.53333336 0.73333335 0.60000002 0.73333335 0.66666669
		 0.73333335 0.73333335 0.73333335 0.80000007 0.73333335 0.86666673 0.73333335 0.9333334
		 0.73333335 1 0.73333335 0 0.80000007 0.06666667 0.80000007 0.13333334 0.80000007
		 0.20000002 0.80000007 0.26666668 0.80000007 0.33333334 0.80000007 0.40000004 0.80000007
		 0.4666667 0.80000007 0.53333336 0.80000007 0.60000002 0.80000007 0.66666669 0.80000007
		 0.73333335 0.80000007 0.80000007 0.80000007 0.86666673 0.80000007 0.9333334 0.80000007
		 1 0.80000007 0 0.86666673 0.06666667 0.86666673 0.13333334 0.86666673 0.20000002
		 0.86666673 0.26666668 0.86666673 0.33333334 0.86666673 0.40000004 0.86666673 0.4666667
		 0.86666673 0.53333336 0.86666673 0.60000002 0.86666673 0.66666669 0.86666673 0.73333335
		 0.86666673 0.80000007 0.86666673 0.86666673 0.86666673 0.9333334 0.86666673 1 0.86666673
		 0 0.9333334 0.06666667 0.9333334 0.13333334 0.9333334 0.20000002 0.9333334 0.26666668
		 0.9333334 0.33333334 0.9333334 0.40000004 0.9333334 0.4666667 0.9333334 0.53333336
		 0.9333334 0.60000002 0.9333334 0.66666669 0.9333334 0.73333335 0.9333334 0.80000007
		 0.9333334 0.86666673 0.9333334 0.9333334 0.9333334 1 0.9333334 0 1 0.06666667 1 0.13333334
		 1 0.20000002 1 0.26666668 1 0.33333334 1 0.40000004 1 0.4666667 1 0.53333336 1 0.60000002
		 1;
	setAttr ".uvst[0].uvsp[250:255]" 0.66666669 1 0.73333335 1 0.80000007 1 0.86666673
		 1 0.9333334 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 256 ".vt";
	setAttr ".vt[0:165]"  -0.5 -1.110223e-016 0.5 -0.43333334 -1.110223e-016 0.5
		 -0.36666667 -1.110223e-016 0.5 -0.29999998 -1.110223e-016 0.5 -0.23333332 -1.110223e-016 0.5
		 -0.16666666 -1.110223e-016 0.5 -0.099999964 -1.110223e-016 0.5 -0.033333302 -1.110223e-016 0.5
		 0.033333361 -1.110223e-016 0.5 0.10000002 -1.110223e-016 0.5 0.16666669 -1.110223e-016 0.5
		 0.23333335 -1.110223e-016 0.5 0.30000007 -1.110223e-016 0.5 0.36666673 -1.110223e-016 0.5
		 0.4333334 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5 -0.5 -9.621933e-017 0.43333334
		 -0.43333334 -9.621933e-017 0.43333334 -0.36666667 -9.621933e-017 0.43333334 -0.29999998 -9.621933e-017 0.43333334
		 -0.23333332 -9.621933e-017 0.43333334 -0.16666666 -9.621933e-017 0.43333334 -0.099999964 -9.621933e-017 0.43333334
		 -0.033333302 -9.621933e-017 0.43333334 0.033333361 -9.621933e-017 0.43333334 0.10000002 -9.621933e-017 0.43333334
		 0.16666669 -9.621933e-017 0.43333334 0.23333335 -9.621933e-017 0.43333334 0.30000007 -9.621933e-017 0.43333334
		 0.36666673 -9.621933e-017 0.43333334 0.4333334 -9.621933e-017 0.43333334 0.5 -9.621933e-017 0.43333334
		 -0.5 -8.1416357e-017 0.36666667 -0.43333334 -8.1416357e-017 0.36666667 -0.36666667 -8.1416357e-017 0.36666667
		 -0.29999998 -8.1416357e-017 0.36666667 -0.23333332 -8.1416357e-017 0.36666667 -0.16666666 -8.1416357e-017 0.36666667
		 -0.099999964 -8.1416357e-017 0.36666667 -0.033333302 -8.1416357e-017 0.36666667 0.033333361 -8.1416357e-017 0.36666667
		 0.10000002 -8.1416357e-017 0.36666667 0.16666669 -8.1416357e-017 0.36666667 0.23333335 -8.1416357e-017 0.36666667
		 0.30000007 -8.1416357e-017 0.36666667 0.36666673 -8.1416357e-017 0.36666667 0.4333334 -8.1416357e-017 0.36666667
		 0.5 -8.1416357e-017 0.36666667 -0.5 -6.6613378e-017 0.29999998 -0.43333334 -6.6613378e-017 0.29999998
		 -0.36666667 -6.6613378e-017 0.29999998 -0.29999998 -6.6613378e-017 0.29999998 -0.23333332 -6.6613378e-017 0.29999998
		 -0.16666666 -6.6613378e-017 0.29999998 -0.099999964 -6.6613378e-017 0.29999998 -0.033333302 -6.6613378e-017 0.29999998
		 0.033333361 -6.6613378e-017 0.29999998 0.10000002 -6.6613378e-017 0.29999998 0.16666669 -6.6613378e-017 0.29999998
		 0.23333335 -6.6613378e-017 0.29999998 0.30000007 -6.6613378e-017 0.29999998 0.36666673 -6.6613378e-017 0.29999998
		 0.4333334 -6.6613378e-017 0.29999998 0.5 -6.6613378e-017 0.29999998 -0.5 -5.1810405e-017 0.23333332
		 -0.43333334 -5.1810405e-017 0.23333332 -0.36666667 -5.1810405e-017 0.23333332 -0.29999998 -5.1810405e-017 0.23333332
		 -0.23333332 -5.1810405e-017 0.23333332 -0.16666666 -5.1810405e-017 0.23333332 -0.099999964 -5.1810405e-017 0.23333332
		 -0.033333302 -5.1810405e-017 0.23333332 0.033333361 -5.1810405e-017 0.23333332 0.10000002 -5.1810405e-017 0.23333332
		 0.16666669 -5.1810405e-017 0.23333332 0.23333335 -5.1810405e-017 0.23333332 0.30000007 -5.1810405e-017 0.23333332
		 0.36666673 -5.1810405e-017 0.23333332 0.4333334 -5.1810405e-017 0.23333332 0.5 -5.1810405e-017 0.23333332
		 -0.5 -3.7007432e-017 0.16666666 -0.43333334 -3.7007432e-017 0.16666666 -0.36666667 -3.7007432e-017 0.16666666
		 -0.29999998 -3.7007432e-017 0.16666666 -0.23333332 -3.7007432e-017 0.16666666 -0.16666666 -3.7007432e-017 0.16666666
		 -0.099999964 -3.7007432e-017 0.16666666 -0.033333302 -3.7007432e-017 0.16666666 0.033333361 -3.7007432e-017 0.16666666
		 0.10000002 -3.7007432e-017 0.16666666 0.16666669 -3.7007432e-017 0.16666666 0.23333335 -3.7007432e-017 0.16666666
		 0.30000007 -3.7007432e-017 0.16666666 0.36666673 -3.7007432e-017 0.16666666 0.4333334 -3.7007432e-017 0.16666666
		 0.5 -3.7007432e-017 0.16666666 -0.5 -2.2204453e-017 0.099999964 -0.43333334 -2.2204453e-017 0.099999964
		 -0.36666667 -2.2204453e-017 0.099999964 -0.29999998 -2.2204453e-017 0.099999964 -0.23333332 -2.2204453e-017 0.099999964
		 -0.16666666 -2.2204453e-017 0.099999964 -0.099999964 -2.2204453e-017 0.099999964
		 -0.033333302 -2.2204453e-017 0.099999964 0.033333361 -2.2204453e-017 0.099999964
		 0.10000002 -2.2204453e-017 0.099999964 0.16666669 -2.2204453e-017 0.099999964 0.23333335 -2.2204453e-017 0.099999964
		 0.30000007 -2.2204453e-017 0.099999964 0.36666673 -2.2204453e-017 0.099999964 0.4333334 -2.2204453e-017 0.099999964
		 0.5 -2.2204453e-017 0.099999964 -0.5 -7.4014798e-018 0.033333302 -0.43333334 -7.4014798e-018 0.033333302
		 -0.36666667 -7.4014798e-018 0.033333302 -0.29999998 -7.4014798e-018 0.033333302 -0.23333332 -7.4014798e-018 0.033333302
		 -0.16666666 -7.4014798e-018 0.033333302 -0.099999964 -7.4014798e-018 0.033333302
		 -0.033333302 -7.4014798e-018 0.033333302 0.033333361 -7.4014798e-018 0.033333302
		 0.10000002 -7.4014798e-018 0.033333302 0.16666669 -7.4014798e-018 0.033333302 0.23333335 -7.4014798e-018 0.033333302
		 0.30000007 -7.4014798e-018 0.033333302 0.36666673 -7.4014798e-018 0.033333302 0.4333334 -7.4014798e-018 0.033333302
		 0.5 -7.4014798e-018 0.033333302 -0.5 7.401493e-018 -0.033333361 -0.43333334 7.401493e-018 -0.033333361
		 -0.36666667 7.401493e-018 -0.033333361 -0.29999998 7.401493e-018 -0.033333361 -0.23333332 7.401493e-018 -0.033333361
		 -0.16666666 7.401493e-018 -0.033333361 -0.099999964 7.401493e-018 -0.033333361 -0.033333302 7.401493e-018 -0.033333361
		 0.033333361 7.401493e-018 -0.033333361 0.10000002 7.401493e-018 -0.033333361 0.16666669 7.401493e-018 -0.033333361
		 0.23333335 7.401493e-018 -0.033333361 0.30000007 7.401493e-018 -0.033333361 0.36666673 7.401493e-018 -0.033333361
		 0.4333334 7.401493e-018 -0.033333361 0.5 7.401493e-018 -0.033333361 -0.5 2.2204466e-017 -0.10000002
		 -0.43333334 2.2204466e-017 -0.10000002 -0.36666667 2.2204466e-017 -0.10000002 -0.29999998 2.2204466e-017 -0.10000002
		 -0.23333332 2.2204466e-017 -0.10000002 -0.16666666 2.2204466e-017 -0.10000002 -0.099999964 2.2204466e-017 -0.10000002
		 -0.033333302 2.2204466e-017 -0.10000002 0.033333361 2.2204466e-017 -0.10000002 0.10000002 2.2204466e-017 -0.10000002
		 0.16666669 2.2204466e-017 -0.10000002 0.23333335 2.2204466e-017 -0.10000002 0.30000007 2.2204466e-017 -0.10000002
		 0.36666673 2.2204466e-017 -0.10000002 0.4333334 2.2204466e-017 -0.10000002 0.5 2.2204466e-017 -0.10000002
		 -0.5 3.7007439e-017 -0.16666669 -0.43333334 3.7007439e-017 -0.16666669 -0.36666667 3.7007439e-017 -0.16666669
		 -0.29999998 3.7007439e-017 -0.16666669 -0.23333332 3.7007439e-017 -0.16666669 -0.16666666 3.7007439e-017 -0.16666669;
	setAttr ".vt[166:255]" -0.099999964 3.7007439e-017 -0.16666669 -0.033333302 3.7007439e-017 -0.16666669
		 0.033333361 3.7007439e-017 -0.16666669 0.10000002 3.7007439e-017 -0.16666669 0.16666669 3.7007439e-017 -0.16666669
		 0.23333335 3.7007439e-017 -0.16666669 0.30000007 3.7007439e-017 -0.16666669 0.36666673 3.7007439e-017 -0.16666669
		 0.4333334 3.7007439e-017 -0.16666669 0.5 3.7007439e-017 -0.16666669 -0.5 5.1810411e-017 -0.23333335
		 -0.43333334 5.1810411e-017 -0.23333335 -0.36666667 5.1810411e-017 -0.23333335 -0.29999998 5.1810411e-017 -0.23333335
		 -0.23333332 5.1810411e-017 -0.23333335 -0.16666666 5.1810411e-017 -0.23333335 -0.099999964 5.1810411e-017 -0.23333335
		 -0.033333302 5.1810411e-017 -0.23333335 0.033333361 5.1810411e-017 -0.23333335 0.10000002 5.1810411e-017 -0.23333335
		 0.16666669 5.1810411e-017 -0.23333335 0.23333335 5.1810411e-017 -0.23333335 0.30000007 5.1810411e-017 -0.23333335
		 0.36666673 5.1810411e-017 -0.23333335 0.4333334 5.1810411e-017 -0.23333335 0.5 5.1810411e-017 -0.23333335
		 -0.5 6.6613397e-017 -0.30000007 -0.43333334 6.6613397e-017 -0.30000007 -0.36666667 6.6613397e-017 -0.30000007
		 -0.29999998 6.6613397e-017 -0.30000007 -0.23333332 6.6613397e-017 -0.30000007 -0.16666666 6.6613397e-017 -0.30000007
		 -0.099999964 6.6613397e-017 -0.30000007 -0.033333302 6.6613397e-017 -0.30000007 0.033333361 6.6613397e-017 -0.30000007
		 0.10000002 6.6613397e-017 -0.30000007 0.16666669 6.6613397e-017 -0.30000007 0.23333335 6.6613397e-017 -0.30000007
		 0.30000007 6.6613397e-017 -0.30000007 0.36666673 6.6613397e-017 -0.30000007 0.4333334 6.6613397e-017 -0.30000007
		 0.5 6.6613397e-017 -0.30000007 -0.5 8.141637e-017 -0.36666673 -0.43333334 8.141637e-017 -0.36666673
		 -0.36666667 8.141637e-017 -0.36666673 -0.29999998 8.141637e-017 -0.36666673 -0.23333332 8.141637e-017 -0.36666673
		 -0.16666666 8.141637e-017 -0.36666673 -0.099999964 8.141637e-017 -0.36666673 -0.033333302 8.141637e-017 -0.36666673
		 0.033333361 8.141637e-017 -0.36666673 0.10000002 8.141637e-017 -0.36666673 0.16666669 8.141637e-017 -0.36666673
		 0.23333335 8.141637e-017 -0.36666673 0.30000007 8.141637e-017 -0.36666673 0.36666673 8.141637e-017 -0.36666673
		 0.4333334 8.141637e-017 -0.36666673 0.5 8.141637e-017 -0.36666673 -0.5 9.6219343e-017 -0.4333334
		 -0.43333334 9.6219343e-017 -0.4333334 -0.36666667 9.6219343e-017 -0.4333334 -0.29999998 9.6219343e-017 -0.4333334
		 -0.23333332 9.6219343e-017 -0.4333334 -0.16666666 9.6219343e-017 -0.4333334 -0.099999964 9.6219343e-017 -0.4333334
		 -0.033333302 9.6219343e-017 -0.4333334 0.033333361 9.6219343e-017 -0.4333334 0.10000002 9.6219343e-017 -0.4333334
		 0.16666669 9.6219343e-017 -0.4333334 0.23333335 9.6219343e-017 -0.4333334 0.30000007 9.6219343e-017 -0.4333334
		 0.36666673 9.6219343e-017 -0.4333334 0.4333334 9.6219343e-017 -0.4333334 0.5 9.6219343e-017 -0.4333334
		 -0.5 1.110223e-016 -0.5 -0.43333334 1.110223e-016 -0.5 -0.36666667 1.110223e-016 -0.5
		 -0.29999998 1.110223e-016 -0.5 -0.23333332 1.110223e-016 -0.5 -0.16666666 1.110223e-016 -0.5
		 -0.099999964 1.110223e-016 -0.5 -0.033333302 1.110223e-016 -0.5 0.033333361 1.110223e-016 -0.5
		 0.10000002 1.110223e-016 -0.5 0.16666669 1.110223e-016 -0.5 0.23333335 1.110223e-016 -0.5
		 0.30000007 1.110223e-016 -0.5 0.36666673 1.110223e-016 -0.5 0.4333334 1.110223e-016 -0.5
		 0.5 1.110223e-016 -0.5;
	setAttr -s 480 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 16 0 1 2 0 1 17 1 2 3 0 2 18 1 3 4 0 3 19 1
		 4 5 0 4 20 1 5 6 0 5 21 1 6 7 0 6 22 1 7 8 0 7 23 1 8 9 0 8 24 1 9 10 0 9 25 1 10 11 0
		 10 26 1 11 12 0 11 27 1 12 13 0 12 28 1 13 14 0 13 29 1 14 15 0 14 30 1 15 31 0 16 17 1
		 16 32 0 17 18 1 17 33 1 18 19 1 18 34 1 19 20 1 19 35 1 20 21 1 20 36 1 21 22 1 21 37 1
		 22 23 1 22 38 1 23 24 1 23 39 1 24 25 1 24 40 1 25 26 1 25 41 1 26 27 1 26 42 1 27 28 1
		 27 43 1 28 29 1 28 44 1 29 30 1 29 45 1 30 31 1 30 46 1 31 47 0 32 33 1 32 48 0 33 34 1
		 33 49 1 34 35 1 34 50 1 35 36 1 35 51 1 36 37 1 36 52 1 37 38 1 37 53 1 38 39 1 38 54 1
		 39 40 1 39 55 1 40 41 1 40 56 1 41 42 1 41 57 1 42 43 1 42 58 1 43 44 1 43 59 1 44 45 1
		 44 60 1 45 46 1 45 61 1 46 47 1 46 62 1 47 63 0 48 49 1 48 64 0 49 50 1 49 65 1 50 51 1
		 50 66 1 51 52 1 51 67 1 52 53 1 52 68 1 53 54 1 53 69 1 54 55 1 54 70 1 55 56 1 55 71 1
		 56 57 1 56 72 1 57 58 1 57 73 1 58 59 1 58 74 1 59 60 1 59 75 1 60 61 1 60 76 1 61 62 1
		 61 77 1 62 63 1 62 78 1 63 79 0 64 65 1 64 80 0 65 66 1 65 81 1 66 67 1 66 82 1 67 68 1
		 67 83 1 68 69 1 68 84 1 69 70 1 69 85 1 70 71 1 70 86 1 71 72 1 71 87 1 72 73 1 72 88 1
		 73 74 1 73 89 1 74 75 1 74 90 1 75 76 1 75 91 1 76 77 1 76 92 1 77 78 1 77 93 1 78 79 1
		 78 94 1 79 95 0 80 81 1 80 96 0 81 82 1 81 97 1 82 83 1 82 98 1 83 84 1 83 99 1 84 85 1
		 84 100 1 85 86 1;
	setAttr ".ed[166:331]" 85 101 1 86 87 1 86 102 1 87 88 1 87 103 1 88 89 1 88 104 1
		 89 90 1 89 105 1 90 91 1 90 106 1 91 92 1 91 107 1 92 93 1 92 108 1 93 94 1 93 109 1
		 94 95 1 94 110 1 95 111 0 96 97 1 96 112 0 97 98 1 97 113 1 98 99 1 98 114 1 99 100 1
		 99 115 1 100 101 1 100 116 1 101 102 1 101 117 1 102 103 1 102 118 1 103 104 1 103 119 1
		 104 105 1 104 120 1 105 106 1 105 121 1 106 107 1 106 122 1 107 108 1 107 123 1 108 109 1
		 108 124 1 109 110 1 109 125 1 110 111 1 110 126 1 111 127 0 112 113 1 112 128 0 113 114 1
		 113 129 1 114 115 1 114 130 1 115 116 1 115 131 1 116 117 1 116 132 1 117 118 1 117 133 1
		 118 119 1 118 134 1 119 120 1 119 135 1 120 121 1 120 136 1 121 122 1 121 137 1 122 123 1
		 122 138 1 123 124 1 123 139 1 124 125 1 124 140 1 125 126 1 125 141 1 126 127 1 126 142 1
		 127 143 0 128 129 1 128 144 0 129 130 1 129 145 1 130 131 1 130 146 1 131 132 1 131 147 1
		 132 133 1 132 148 1 133 134 1 133 149 1 134 135 1 134 150 1 135 136 1 135 151 1 136 137 1
		 136 152 1 137 138 1 137 153 1 138 139 1 138 154 1 139 140 1 139 155 1 140 141 1 140 156 1
		 141 142 1 141 157 1 142 143 1 142 158 1 143 159 0 144 145 1 144 160 0 145 146 1 145 161 1
		 146 147 1 146 162 1 147 148 1 147 163 1 148 149 1 148 164 1 149 150 1 149 165 1 150 151 1
		 150 166 1 151 152 1 151 167 1 152 153 1 152 168 1 153 154 1 153 169 1 154 155 1 154 170 1
		 155 156 1 155 171 1 156 157 1 156 172 1 157 158 1 157 173 1 158 159 1 158 174 1 159 175 0
		 160 161 1 160 176 0 161 162 1 161 177 1 162 163 1 162 178 1 163 164 1 163 179 1 164 165 1
		 164 180 1 165 166 1 165 181 1 166 167 1 166 182 1 167 168 1 167 183 1 168 169 1 168 184 1
		 169 170 1 169 185 1 170 171 1 170 186 1;
	setAttr ".ed[332:479]" 171 172 1 171 187 1 172 173 1 172 188 1 173 174 1 173 189 1
		 174 175 1 174 190 1 175 191 0 176 177 1 176 192 0 177 178 1 177 193 1 178 179 1 178 194 1
		 179 180 1 179 195 1 180 181 1 180 196 1 181 182 1 181 197 1 182 183 1 182 198 1 183 184 1
		 183 199 1 184 185 1 184 200 1 185 186 1 185 201 1 186 187 1 186 202 1 187 188 1 187 203 1
		 188 189 1 188 204 1 189 190 1 189 205 1 190 191 1 190 206 1 191 207 0 192 193 1 192 208 0
		 193 194 1 193 209 1 194 195 1 194 210 1 195 196 1 195 211 1 196 197 1 196 212 1 197 198 1
		 197 213 1 198 199 1 198 214 1 199 200 1 199 215 1 200 201 1 200 216 1 201 202 1 201 217 1
		 202 203 1 202 218 1 203 204 1 203 219 1 204 205 1 204 220 1 205 206 1 205 221 1 206 207 1
		 206 222 1 207 223 0 208 209 1 208 224 0 209 210 1 209 225 1 210 211 1 210 226 1 211 212 1
		 211 227 1 212 213 1 212 228 1 213 214 1 213 229 1 214 215 1 214 230 1 215 216 1 215 231 1
		 216 217 1 216 232 1 217 218 1 217 233 1 218 219 1 218 234 1 219 220 1 219 235 1 220 221 1
		 220 236 1 221 222 1 221 237 1 222 223 1 222 238 1 223 239 0 224 225 1 224 240 0 225 226 1
		 225 241 1 226 227 1 226 242 1 227 228 1 227 243 1 228 229 1 228 244 1 229 230 1 229 245 1
		 230 231 1 230 246 1 231 232 1 231 247 1 232 233 1 232 248 1 233 234 1 233 249 1 234 235 1
		 234 250 1 235 236 1 235 251 1 236 237 1 236 252 1 237 238 1 237 253 1 238 239 1 238 254 1
		 239 255 0 240 241 0 241 242 0 242 243 0 243 244 0 244 245 0 245 246 0 246 247 0 247 248 0
		 248 249 0 249 250 0 250 251 0 251 252 0 252 253 0 253 254 0 254 255 0;
	setAttr -s 225 -ch 900 ".fc[0:224]" -type "polyFaces" 
		f 4 0 3 -32 -2
		mu 0 4 0 1 17 16
		f 4 2 5 -34 -4
		mu 0 4 1 2 18 17
		f 4 4 7 -36 -6
		mu 0 4 2 3 19 18
		f 4 6 9 -38 -8
		mu 0 4 3 4 20 19
		f 4 8 11 -40 -10
		mu 0 4 4 5 21 20
		f 4 10 13 -42 -12
		mu 0 4 5 6 22 21
		f 4 12 15 -44 -14
		mu 0 4 6 7 23 22
		f 4 14 17 -46 -16
		mu 0 4 7 8 24 23
		f 4 16 19 -48 -18
		mu 0 4 8 9 25 24
		f 4 18 21 -50 -20
		mu 0 4 9 10 26 25
		f 4 20 23 -52 -22
		mu 0 4 10 11 27 26
		f 4 22 25 -54 -24
		mu 0 4 11 12 28 27
		f 4 24 27 -56 -26
		mu 0 4 12 13 29 28
		f 4 26 29 -58 -28
		mu 0 4 13 14 30 29
		f 4 28 30 -60 -30
		mu 0 4 14 15 31 30
		f 4 31 34 -63 -33
		mu 0 4 16 17 33 32
		f 4 33 36 -65 -35
		mu 0 4 17 18 34 33
		f 4 35 38 -67 -37
		mu 0 4 18 19 35 34
		f 4 37 40 -69 -39
		mu 0 4 19 20 36 35
		f 4 39 42 -71 -41
		mu 0 4 20 21 37 36
		f 4 41 44 -73 -43
		mu 0 4 21 22 38 37
		f 4 43 46 -75 -45
		mu 0 4 22 23 39 38
		f 4 45 48 -77 -47
		mu 0 4 23 24 40 39
		f 4 47 50 -79 -49
		mu 0 4 24 25 41 40
		f 4 49 52 -81 -51
		mu 0 4 25 26 42 41
		f 4 51 54 -83 -53
		mu 0 4 26 27 43 42
		f 4 53 56 -85 -55
		mu 0 4 27 28 44 43
		f 4 55 58 -87 -57
		mu 0 4 28 29 45 44
		f 4 57 60 -89 -59
		mu 0 4 29 30 46 45
		f 4 59 61 -91 -61
		mu 0 4 30 31 47 46
		f 4 62 65 -94 -64
		mu 0 4 32 33 49 48
		f 4 64 67 -96 -66
		mu 0 4 33 34 50 49
		f 4 66 69 -98 -68
		mu 0 4 34 35 51 50
		f 4 68 71 -100 -70
		mu 0 4 35 36 52 51
		f 4 70 73 -102 -72
		mu 0 4 36 37 53 52
		f 4 72 75 -104 -74
		mu 0 4 37 38 54 53
		f 4 74 77 -106 -76
		mu 0 4 38 39 55 54
		f 4 76 79 -108 -78
		mu 0 4 39 40 56 55
		f 4 78 81 -110 -80
		mu 0 4 40 41 57 56
		f 4 80 83 -112 -82
		mu 0 4 41 42 58 57
		f 4 82 85 -114 -84
		mu 0 4 42 43 59 58
		f 4 84 87 -116 -86
		mu 0 4 43 44 60 59
		f 4 86 89 -118 -88
		mu 0 4 44 45 61 60
		f 4 88 91 -120 -90
		mu 0 4 45 46 62 61
		f 4 90 92 -122 -92
		mu 0 4 46 47 63 62
		f 4 93 96 -125 -95
		mu 0 4 48 49 65 64
		f 4 95 98 -127 -97
		mu 0 4 49 50 66 65
		f 4 97 100 -129 -99
		mu 0 4 50 51 67 66
		f 4 99 102 -131 -101
		mu 0 4 51 52 68 67
		f 4 101 104 -133 -103
		mu 0 4 52 53 69 68
		f 4 103 106 -135 -105
		mu 0 4 53 54 70 69
		f 4 105 108 -137 -107
		mu 0 4 54 55 71 70
		f 4 107 110 -139 -109
		mu 0 4 55 56 72 71
		f 4 109 112 -141 -111
		mu 0 4 56 57 73 72
		f 4 111 114 -143 -113
		mu 0 4 57 58 74 73
		f 4 113 116 -145 -115
		mu 0 4 58 59 75 74
		f 4 115 118 -147 -117
		mu 0 4 59 60 76 75
		f 4 117 120 -149 -119
		mu 0 4 60 61 77 76
		f 4 119 122 -151 -121
		mu 0 4 61 62 78 77
		f 4 121 123 -153 -123
		mu 0 4 62 63 79 78
		f 4 124 127 -156 -126
		mu 0 4 64 65 81 80
		f 4 126 129 -158 -128
		mu 0 4 65 66 82 81
		f 4 128 131 -160 -130
		mu 0 4 66 67 83 82
		f 4 130 133 -162 -132
		mu 0 4 67 68 84 83
		f 4 132 135 -164 -134
		mu 0 4 68 69 85 84
		f 4 134 137 -166 -136
		mu 0 4 69 70 86 85
		f 4 136 139 -168 -138
		mu 0 4 70 71 87 86
		f 4 138 141 -170 -140
		mu 0 4 71 72 88 87
		f 4 140 143 -172 -142
		mu 0 4 72 73 89 88
		f 4 142 145 -174 -144
		mu 0 4 73 74 90 89
		f 4 144 147 -176 -146
		mu 0 4 74 75 91 90
		f 4 146 149 -178 -148
		mu 0 4 75 76 92 91
		f 4 148 151 -180 -150
		mu 0 4 76 77 93 92
		f 4 150 153 -182 -152
		mu 0 4 77 78 94 93
		f 4 152 154 -184 -154
		mu 0 4 78 79 95 94
		f 4 155 158 -187 -157
		mu 0 4 80 81 97 96
		f 4 157 160 -189 -159
		mu 0 4 81 82 98 97
		f 4 159 162 -191 -161
		mu 0 4 82 83 99 98
		f 4 161 164 -193 -163
		mu 0 4 83 84 100 99
		f 4 163 166 -195 -165
		mu 0 4 84 85 101 100
		f 4 165 168 -197 -167
		mu 0 4 85 86 102 101
		f 4 167 170 -199 -169
		mu 0 4 86 87 103 102
		f 4 169 172 -201 -171
		mu 0 4 87 88 104 103
		f 4 171 174 -203 -173
		mu 0 4 88 89 105 104
		f 4 173 176 -205 -175
		mu 0 4 89 90 106 105
		f 4 175 178 -207 -177
		mu 0 4 90 91 107 106
		f 4 177 180 -209 -179
		mu 0 4 91 92 108 107
		f 4 179 182 -211 -181
		mu 0 4 92 93 109 108
		f 4 181 184 -213 -183
		mu 0 4 93 94 110 109
		f 4 183 185 -215 -185
		mu 0 4 94 95 111 110
		f 4 186 189 -218 -188
		mu 0 4 96 97 113 112
		f 4 188 191 -220 -190
		mu 0 4 97 98 114 113
		f 4 190 193 -222 -192
		mu 0 4 98 99 115 114
		f 4 192 195 -224 -194
		mu 0 4 99 100 116 115
		f 4 194 197 -226 -196
		mu 0 4 100 101 117 116
		f 4 196 199 -228 -198
		mu 0 4 101 102 118 117
		f 4 198 201 -230 -200
		mu 0 4 102 103 119 118
		f 4 200 203 -232 -202
		mu 0 4 103 104 120 119
		f 4 202 205 -234 -204
		mu 0 4 104 105 121 120
		f 4 204 207 -236 -206
		mu 0 4 105 106 122 121
		f 4 206 209 -238 -208
		mu 0 4 106 107 123 122
		f 4 208 211 -240 -210
		mu 0 4 107 108 124 123
		f 4 210 213 -242 -212
		mu 0 4 108 109 125 124
		f 4 212 215 -244 -214
		mu 0 4 109 110 126 125
		f 4 214 216 -246 -216
		mu 0 4 110 111 127 126
		f 4 217 220 -249 -219
		mu 0 4 112 113 129 128
		f 4 219 222 -251 -221
		mu 0 4 113 114 130 129
		f 4 221 224 -253 -223
		mu 0 4 114 115 131 130
		f 4 223 226 -255 -225
		mu 0 4 115 116 132 131
		f 4 225 228 -257 -227
		mu 0 4 116 117 133 132
		f 4 227 230 -259 -229
		mu 0 4 117 118 134 133
		f 4 229 232 -261 -231
		mu 0 4 118 119 135 134
		f 4 231 234 -263 -233
		mu 0 4 119 120 136 135
		f 4 233 236 -265 -235
		mu 0 4 120 121 137 136
		f 4 235 238 -267 -237
		mu 0 4 121 122 138 137
		f 4 237 240 -269 -239
		mu 0 4 122 123 139 138
		f 4 239 242 -271 -241
		mu 0 4 123 124 140 139
		f 4 241 244 -273 -243
		mu 0 4 124 125 141 140
		f 4 243 246 -275 -245
		mu 0 4 125 126 142 141
		f 4 245 247 -277 -247
		mu 0 4 126 127 143 142
		f 4 248 251 -280 -250
		mu 0 4 128 129 145 144
		f 4 250 253 -282 -252
		mu 0 4 129 130 146 145
		f 4 252 255 -284 -254
		mu 0 4 130 131 147 146
		f 4 254 257 -286 -256
		mu 0 4 131 132 148 147
		f 4 256 259 -288 -258
		mu 0 4 132 133 149 148
		f 4 258 261 -290 -260
		mu 0 4 133 134 150 149
		f 4 260 263 -292 -262
		mu 0 4 134 135 151 150
		f 4 262 265 -294 -264
		mu 0 4 135 136 152 151
		f 4 264 267 -296 -266
		mu 0 4 136 137 153 152
		f 4 266 269 -298 -268
		mu 0 4 137 138 154 153
		f 4 268 271 -300 -270
		mu 0 4 138 139 155 154
		f 4 270 273 -302 -272
		mu 0 4 139 140 156 155
		f 4 272 275 -304 -274
		mu 0 4 140 141 157 156
		f 4 274 277 -306 -276
		mu 0 4 141 142 158 157
		f 4 276 278 -308 -278
		mu 0 4 142 143 159 158
		f 4 279 282 -311 -281
		mu 0 4 144 145 161 160
		f 4 281 284 -313 -283
		mu 0 4 145 146 162 161
		f 4 283 286 -315 -285
		mu 0 4 146 147 163 162
		f 4 285 288 -317 -287
		mu 0 4 147 148 164 163
		f 4 287 290 -319 -289
		mu 0 4 148 149 165 164
		f 4 289 292 -321 -291
		mu 0 4 149 150 166 165
		f 4 291 294 -323 -293
		mu 0 4 150 151 167 166
		f 4 293 296 -325 -295
		mu 0 4 151 152 168 167
		f 4 295 298 -327 -297
		mu 0 4 152 153 169 168
		f 4 297 300 -329 -299
		mu 0 4 153 154 170 169
		f 4 299 302 -331 -301
		mu 0 4 154 155 171 170
		f 4 301 304 -333 -303
		mu 0 4 155 156 172 171
		f 4 303 306 -335 -305
		mu 0 4 156 157 173 172
		f 4 305 308 -337 -307
		mu 0 4 157 158 174 173
		f 4 307 309 -339 -309
		mu 0 4 158 159 175 174
		f 4 310 313 -342 -312
		mu 0 4 160 161 177 176
		f 4 312 315 -344 -314
		mu 0 4 161 162 178 177
		f 4 314 317 -346 -316
		mu 0 4 162 163 179 178
		f 4 316 319 -348 -318
		mu 0 4 163 164 180 179
		f 4 318 321 -350 -320
		mu 0 4 164 165 181 180
		f 4 320 323 -352 -322
		mu 0 4 165 166 182 181
		f 4 322 325 -354 -324
		mu 0 4 166 167 183 182
		f 4 324 327 -356 -326
		mu 0 4 167 168 184 183
		f 4 326 329 -358 -328
		mu 0 4 168 169 185 184
		f 4 328 331 -360 -330
		mu 0 4 169 170 186 185
		f 4 330 333 -362 -332
		mu 0 4 170 171 187 186
		f 4 332 335 -364 -334
		mu 0 4 171 172 188 187
		f 4 334 337 -366 -336
		mu 0 4 172 173 189 188
		f 4 336 339 -368 -338
		mu 0 4 173 174 190 189
		f 4 338 340 -370 -340
		mu 0 4 174 175 191 190
		f 4 341 344 -373 -343
		mu 0 4 176 177 193 192
		f 4 343 346 -375 -345
		mu 0 4 177 178 194 193
		f 4 345 348 -377 -347
		mu 0 4 178 179 195 194
		f 4 347 350 -379 -349
		mu 0 4 179 180 196 195
		f 4 349 352 -381 -351
		mu 0 4 180 181 197 196
		f 4 351 354 -383 -353
		mu 0 4 181 182 198 197
		f 4 353 356 -385 -355
		mu 0 4 182 183 199 198
		f 4 355 358 -387 -357
		mu 0 4 183 184 200 199
		f 4 357 360 -389 -359
		mu 0 4 184 185 201 200
		f 4 359 362 -391 -361
		mu 0 4 185 186 202 201
		f 4 361 364 -393 -363
		mu 0 4 186 187 203 202
		f 4 363 366 -395 -365
		mu 0 4 187 188 204 203
		f 4 365 368 -397 -367
		mu 0 4 188 189 205 204
		f 4 367 370 -399 -369
		mu 0 4 189 190 206 205
		f 4 369 371 -401 -371
		mu 0 4 190 191 207 206
		f 4 372 375 -404 -374
		mu 0 4 192 193 209 208
		f 4 374 377 -406 -376
		mu 0 4 193 194 210 209
		f 4 376 379 -408 -378
		mu 0 4 194 195 211 210
		f 4 378 381 -410 -380
		mu 0 4 195 196 212 211
		f 4 380 383 -412 -382
		mu 0 4 196 197 213 212
		f 4 382 385 -414 -384
		mu 0 4 197 198 214 213
		f 4 384 387 -416 -386
		mu 0 4 198 199 215 214
		f 4 386 389 -418 -388
		mu 0 4 199 200 216 215
		f 4 388 391 -420 -390
		mu 0 4 200 201 217 216
		f 4 390 393 -422 -392
		mu 0 4 201 202 218 217
		f 4 392 395 -424 -394
		mu 0 4 202 203 219 218
		f 4 394 397 -426 -396
		mu 0 4 203 204 220 219
		f 4 396 399 -428 -398
		mu 0 4 204 205 221 220
		f 4 398 401 -430 -400
		mu 0 4 205 206 222 221
		f 4 400 402 -432 -402
		mu 0 4 206 207 223 222
		f 4 403 406 -435 -405
		mu 0 4 208 209 225 224
		f 4 405 408 -437 -407
		mu 0 4 209 210 226 225
		f 4 407 410 -439 -409
		mu 0 4 210 211 227 226
		f 4 409 412 -441 -411
		mu 0 4 211 212 228 227
		f 4 411 414 -443 -413
		mu 0 4 212 213 229 228
		f 4 413 416 -445 -415
		mu 0 4 213 214 230 229
		f 4 415 418 -447 -417
		mu 0 4 214 215 231 230
		f 4 417 420 -449 -419
		mu 0 4 215 216 232 231
		f 4 419 422 -451 -421
		mu 0 4 216 217 233 232
		f 4 421 424 -453 -423
		mu 0 4 217 218 234 233
		f 4 423 426 -455 -425
		mu 0 4 218 219 235 234
		f 4 425 428 -457 -427
		mu 0 4 219 220 236 235
		f 4 427 430 -459 -429
		mu 0 4 220 221 237 236
		f 4 429 432 -461 -431
		mu 0 4 221 222 238 237
		f 4 431 433 -463 -433
		mu 0 4 222 223 239 238
		f 4 434 437 -466 -436
		mu 0 4 224 225 241 240
		f 4 436 439 -467 -438
		mu 0 4 225 226 242 241
		f 4 438 441 -468 -440
		mu 0 4 226 227 243 242
		f 4 440 443 -469 -442
		mu 0 4 227 228 244 243
		f 4 442 445 -470 -444
		mu 0 4 228 229 245 244
		f 4 444 447 -471 -446
		mu 0 4 229 230 246 245
		f 4 446 449 -472 -448
		mu 0 4 230 231 247 246
		f 4 448 451 -473 -450
		mu 0 4 231 232 248 247
		f 4 450 453 -474 -452
		mu 0 4 232 233 249 248
		f 4 452 455 -475 -454
		mu 0 4 233 234 250 249
		f 4 454 457 -476 -456
		mu 0 4 234 235 251 250
		f 4 456 459 -477 -458
		mu 0 4 235 236 252 251
		f 4 458 461 -478 -460
		mu 0 4 236 237 253 252
		f 4 460 463 -479 -462
		mu 0 4 237 238 254 253
		f 4 462 464 -480 -464
		mu 0 4 238 239 255 254;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Eyes_reflection";
	setAttr ".t" -type "double3" -7.159913875521978 83.959003905583359 28.266305878603518 ;
	setAttr ".r" -type "double3" 0 0 -90.000000000000028 ;
	setAttr ".s" -type "double3" 6.7316244735309994 11.057092718278396 6.7316244735309994 ;
createNode mesh -n "Eyes_reflectionShape" -p "Eyes_reflection";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
	setAttr ".fgc" no;
	setAttr ".fge" no;
createNode transform -n "RENDER_CAM";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 18.895228494715191 39.565235416434057 435.13766694079135 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 1.4616472704032608 2.6000000000025376 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -2.1316282072803006e-014 7.1054273576010019e-015 0 ;
	setAttr ".rpt" -type "double3" 1.41097478258469e-015 -2.9288735805234573e-015 3.2109855886371163e-016 ;
createNode camera -n "RENDER_CAMShape" -p "RENDER_CAM";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr -l on ".hfa";
	setAttr -l on ".vfa";
	setAttr ".ovr" 1.3;
	setAttr -l on ".fl" 80;
	setAttr -l on ".lsr";
	setAttr ".ncp" 0.2;
	setAttr -l on ".fs";
	setAttr -l on ".fd";
	setAttr -l on ".sa";
	setAttr -l on ".coi" 462.26239563731292;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -10.062597513198853 7.2120025157928467 -6.1746489927172661 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dgm" no;
	setAttr ".dr" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	setAttr -s 4 ".opt";
	setAttr -s 3 ".da";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	addAttr -ci true -h true -sn "sunAndSkyShader" -ln "sunAndSkyShader" -at "message";
	addAttr -ci true -sn "imrVerbosity" -ln "imrVerbosity" -dv 3 -at "short";
	addAttr -ci true -sn "imrThreads" -ln "imrThreads" -dv 1 -at "short";
	addAttr -ci true -sn "imrThreadsAdjust" -ln "imrThreadsAdjust" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "imrTaskOrder" -ln "imrTaskOrder" -dv 1 -at "short";
	addAttr -ci true -sn "imrTaskSize" -ln "imrTaskSize" -at "short";
	addAttr -ci true -sn "imrTaskAdjust" -ln "imrTaskAdjust" -dv 1 -at "short";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
	setAttr ".pat" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "miSamplesQualityR" -ln "miSamplesQualityR" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityG" -ln "miSamplesQualityG" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityB" -ln "miSamplesQualityB" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityA" -ln "miSamplesQualityA" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesMin" -ln "miSamplesMin" -dv 1 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesMax" -ln "miSamplesMax" -dv 100 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffR" -ln "miSamplesErrorCutoffR" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffG" -ln "miSamplesErrorCutoffG" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffB" -ln "miSamplesErrorCutoffB" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffA" -ln "miSamplesErrorCutoffA" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesPerObject" -ln "miSamplesPerObject" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "miRastShadingSamples" -ln "miRastShadingSamples" -dv 1 -min 
		0.25 -at "double";
	addAttr -ci true -sn "miRastSamples" -ln "miRastSamples" -dv 3 -min 1 -at "long";
	addAttr -ci true -sn "miContrastAsColor" -ln "miContrastAsColor" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miProgMaxTime" -ln "miProgMaxTime" -min 0 -at "long";
	addAttr -ci true -sn "miProgSubsampleSize" -ln "miProgSubsampleSize" -dv 4 -min 
		1 -at "long";
	addAttr -ci true -sn "miTraceCameraMotionVectors" -ln "miTraceCameraMotionVectors" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miTraceCameraClip" -ln "miTraceCameraClip" -min 0 -max 1 -at "bool";
	setAttr ".rflr" 8;
	setAttr ".rfrr" 8;
	setAttr ".maxr" 12;
	setAttr ".fg" yes;
	setAttr ".fgtf" 1;
	setAttr ".fgtd" 3;
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "2 2 2 2";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".miSamplesQualityR" 2;
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 28 ".lnk";
	setAttr -s 28 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr -s 5 ".dli[1:4]"  1 2 3 4;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
	setAttr ".crl" 2;
	setAttr -s 2 ".rlmi";
	setAttr ".rlmi[2]" 2;
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
	setAttr ".rndr" no;
	setAttr -s 2 ".adjs";
	setAttr ".adjs[0].val" 0;
	setAttr ".adjs[1].val" 0;
createNode mip_rayswitch -n "sIBL_mip_rayswitch";
createNode mentalrayTexture -n "sIBL_background_mentalrayTexture";
	setAttr ".ftn" -type "string" "L:/Library/HDR/sIBL/HS-Esplanade/Charles-River-Esplanade-03_Bg.jpg";
createNode mib_lookup_spherical -n "sIBL_background_mib_lookup_spherical";
createNode gammaCorrect -n "sIBL_background_gammaCorrect";
createNode multiplyDivide -n "sIBL_background_multiplyDivide";
createNode condition -n "sIBL_background_condition";
	setAttr ".st" 1;
createNode mib_color_alpha -n "sIBL_background_mib_color_alpha";
	setAttr ".S01" 0;
createNode mentalrayTexture -n "sIBL_lighting_mentalrayTexture";
	setAttr ".ftn" -type "string" "L:/Library/HDR/sIBL/HS-Esplanade/Charles-River-Esplanade-03_Env.hdr";
createNode mib_lookup_spherical -n "sIBL_lighting_mib_lookup_spherical";
createNode gammaCorrect -n "sIBL_lighting_gammaCorrect";
createNode multiplyDivide -n "sIBL_lighting_multiplyDivide";
createNode condition -n "sIBL_lighting_condition";
	setAttr ".st" 1;
createNode mib_color_alpha -n "sIBL_lighting_mib_color_alpha";
	setAttr ".S01" 0;
createNode mentalrayTexture -n "sIBL_reflection_mentalrayTexture";
	setAttr ".ftn" -type "string" "L:/Library/HDR/sIBL/HS-Esplanade/Charles-River-Esplanade-03_Ref.hdr";
createNode mib_lookup_spherical -n "sIBL_reflection_mib_lookup_spherical";
createNode gammaCorrect -n "sIBL_reflection_gammaCorrect";
createNode multiplyDivide -n "sIBL_reflection_multiplyDivide";
createNode condition -n "sIBL_reflection_condition";
	setAttr ".st" 1;
createNode mib_color_alpha -n "sIBL_reflection_mib_color_alpha";
	setAttr ".S01" 0;
createNode displayLayer -n "sIBL_feedback_layer";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode lambert -n "sIBL_feedback_lambert";
	setAttr ".it" -type "float3" 0.5 0.5 0.5 ;
createNode shadingEngine -n "sIBL_feedback_shadingEngine";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "sIBL_feedback_file";
	addAttr -ci true -sn "resolution" -ln "resolution" -at "long";
	setAttr ".ftn" -type "string" "L:/Library/HDR/sIBL/HS-Esplanade/Charles-River-Esplanade-03_Bg.jpg";
	setAttr ".resolution" 2048;
createNode place2dTexture -n "sIBL_feedback_place2dTexture";
	setAttr ".rf" 90;
createNode displayLayer -n "sIBL_lighting_layer";
	setAttr ".dt" 2;
	setAttr ".do" 2;
createNode mia_physicalsun -n "sIBL_sun_mia_physicalsun";
	setAttr ".S01" 0.10000000149011612;
	setAttr ".S12" yes;
createNode pointOnSurfaceInfo -n "sIBL_pointOnSurfaceInfo";
	setAttr ".u" 0.692;
	setAttr ".v" 0.48;
createNode expression -n "sIBL_backgroundEnvironmentControls_expression";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = deg_to_rad(.I[0]/2);";
createNode unitConversion -n "unitConversion1";
	setAttr ".cf" 57.295779513082323;
createNode expression -n "sIBL_lightingEnvironmentControls_expression";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = deg_to_rad(.I[0]/2);";
createNode unitConversion -n "unitConversion2";
	setAttr ".cf" 57.295779513082323;
createNode expression -n "sIBL_reflectionEnvironmentControls_expression";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = deg_to_rad(.I[0]/2);";
createNode unitConversion -n "unitConversion3";
	setAttr ".cf" 57.295779513082323;
createNode mip_matteshadow -n "sIBL_ground_mip_matteshadow";
	setAttr ".S18" yes;
createNode lambert -n "sIBL_ground_lambert";
createNode shadingEngine -n "sIBL_ground_shadingEngine";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode displayLayer -n "sIBL_ground_layer";
	setAttr ".dt" 2;
	setAttr ".do" 3;
createNode mia_exposure_simple -n "sIBL_mia_exposure_simple";
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 30 -ast 1 -aet 120 ";
	setAttr ".st" 6;
createNode mentalrayOptions -s -n "miContourPreset";
createNode mentalrayOptions -s -n "PreviewImrRayTracyOff";
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 1;
	setAttr ".ray" no;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOn";
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 3;
	setAttr ".shrd" 1;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode mia_material -n "mia_material3";
	setAttr ".S01" -type "float3" 0 0 0 ;
	setAttr ".S62" -type "float3" 10 10 10 ;
createNode shadingEngine -n "mia_material3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode mia_material -n "Floor_MT";
	setAttr ".S02" 1;
	setAttr ".S04" -type "float3" 0 0 0 ;
createNode shadingEngine -n "mia_material8SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
createNode gammaCorrect -n "gammaCorrect6";
	setAttr ".v" -type "float3" 0.04321355 0.051392388 0.060151063 ;
	setAttr ".g" -type "float3" 0.45500001 0.45500001 0.45500001 ;
createNode mentalrayDisplaceApprox -n "mentalrayDisplaceApprox1";
	setAttr ".len" 0.0099999997764825821;
	setAttr ".maxsd" 3;
	setAttr ".apxm" 3;
createNode mentalrayDisplaceApprox -n "mentalrayDisplaceApprox2";
	setAttr ".len" 0.0099999997764825821;
	setAttr ".maxsd" 3;
	setAttr ".apxm" 3;
createNode animLayer -n "BaseAnimation";
	setAttr ".ovrd" yes;
createNode renderLayer -n "main";
	setAttr ".g" yes;
	setAttr -s 2 ".adjs";
	setAttr ".adjs[0].val" 1;
	setAttr ".adjs[1].val" 1;
	setAttr ".do" 1;
createNode reference -n "modelRN";
	setAttr -s 2 ".fn";
	setAttr ".fn[0]" -type "string" "D:/Rabbix/Freelancer/Contest - Girl/Turbosquid/Maya//scenes/Little Girl model -materialsApplied.mb";
	setAttr ".fn[1]" -type "string" "D:/Rabbix/Freelancer/Contest - Girl/Maya/scenes/Little_girl final -materialsApplied.mb";
	setAttr -s 5 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"modelRN"
		"modelRN" 0
		"modelRN" 9
		2 "|model:geo" "rotate" " -type \"double3\" 0 0 0"
		2 "|model:geo" "rotateY" " -av"
		2 "|model:geo|model:L_Eye|model:L_Cornea1" "visibility" " 1"
		2 "|model:geo|model:R_Eye|model:R_Cornea1" "visibility" " 1"
		5 4 "modelRN" "|model:geo.rotateY" "modelRN.placeHolderList[1]" ""
		5 3 "modelRN" "|model:geo|model:L_Eye|model:L_Cornea1.visibility" "modelRN.placeHolderList[2]" 
		""
		5 3 "modelRN" "|model:geo|model:L_Eye|model:L_Cornea1.visibility" "modelRN.placeHolderList[3]" 
		""
		5 3 "modelRN" "|model:geo|model:R_Eye|model:R_Cornea1.visibility" "modelRN.placeHolderList[4]" 
		""
		5 3 "modelRN" "|model:geo|model:R_Eye|model:R_Cornea1.visibility" "modelRN.placeHolderList[5]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTA -n "geo_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 -40 3 -90 4 -135 5 -180;
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 17 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -cb on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :defaultShaderList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 23 ".s";
select -ne :defaultTextureList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 18 ".tx";
select -ne :lightList1;
	setAttr -s 2 ".l";
select -ne :postProcessList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 42 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :renderGlobalsList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -cb on ".macc";
	setAttr -cb on ".macd";
	setAttr -cb on ".macq";
	setAttr -k on ".mcfr" 30;
	setAttr -cb on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl" no;
	setAttr ".ren" -type "string" "mentalRay";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av ".outf" 3;
	setAttr -k on ".imfkey" -type "string" "tif";
	setAttr -k on ".gama";
	setAttr -k on ".an" yes;
	setAttr -cb on ".ar";
	setAttr -k on ".fs" 1;
	setAttr ".ef" 10;
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -k on ".be";
	setAttr -cb on ".ep";
	setAttr -k on ".fec";
	setAttr -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -cb on ".pff" yes;
	setAttr -cb on ".peie";
	setAttr -cb on ".ifp" -type "string" "<RenderLayer>/<Scene>_mb2";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -cb on ".sosl";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -cb on ".ope";
	setAttr -cb on ".oppf";
	setAttr -cb on ".hbl";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr ".w" 1280;
	setAttr ".h" 720;
	setAttr -av ".pa" 1;
	setAttr -av ".al";
	setAttr -av ".dar" 1.7769999504089355;
	setAttr -av ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :defaultObjectSet;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off ".hgcd";
	setAttr -k off ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -cb on ".hwcc";
	setAttr -cb on ".hwdp";
	setAttr -cb on ".hwql";
	setAttr -k on ".hwfr" 30;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
	setAttr -cb on ".rp";
	setAttr -cb on ".cai";
	setAttr -cb on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -cb on ".ei";
	setAttr -cb on ".ex";
	setAttr -av -cb on ".es";
	setAttr -av ".ef";
	setAttr -av -k on ".bf";
	setAttr -cb on ".fii";
	setAttr -av -k on ".sf";
	setAttr -cb on ".gr";
	setAttr -cb on ".li";
	setAttr -cb on ".ls";
	setAttr -cb on ".mb";
	setAttr -cb on ".ti";
	setAttr -cb on ".txt";
	setAttr -cb on ".mpr";
	setAttr -cb on ".wzd";
	setAttr ".fn" -type "string" "im";
	setAttr -cb on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -cb on ".as";
	setAttr -cb on ".ds";
	setAttr -cb on ".lm";
	setAttr -cb on ".fir";
	setAttr -cb on ".aap";
	setAttr -cb on ".gh";
	setAttr -cb on ".sd";
connectAttr "geo_rotateY.o" "modelRN.phl[1]";
connectAttr "modelRN.phl[2]" "main.adjs[0].plg";
connectAttr "modelRN.phl[3]" "defaultRenderLayer.adjs[0].plg";
connectAttr "modelRN.phl[4]" "main.adjs[1].plg";
connectAttr "modelRN.phl[5]" "defaultRenderLayer.adjs[1].plg";
connectAttr "sIBL_mip_rayswitch.msg" ":perspShape.mies";
connectAttr "sIBL_mia_exposure_simple.msg" ":perspShape.mils";
connectAttr "sIBL_mip_rayswitch.msg" ":topShape.mies";
connectAttr "sIBL_mia_exposure_simple.msg" ":topShape.mils";
connectAttr "sIBL_mip_rayswitch.msg" ":frontShape.mies";
connectAttr "sIBL_mia_exposure_simple.msg" ":frontShape.mils";
connectAttr "sIBL_mip_rayswitch.msg" ":sideShape.mies";
connectAttr "sIBL_mia_exposure_simple.msg" ":sideShape.mils";
connectAttr "sIBL_feedback_layer.di" "sIBL_feedback.do";
connectAttr "sIBL_feedback_layer.di" "sIBL_feedbackShape.do";
connectAttr "sIBL_lighting_layer.di" "sIBL_lights_target.do";
connectAttr "sIBL_lighting_layer.di" "sIBL_lights_targetShape.do";
connectAttr "sIBL_pointOnSurfaceInfo.p" "sIBL_sun.t";
connectAttr "sIBL_aimConstraint.crx" "sIBL_sun.rx";
connectAttr "sIBL_aimConstraint.cry" "sIBL_sun.ry";
connectAttr "sIBL_aimConstraint.crz" "sIBL_sun.rz";
connectAttr "sIBL_lighting_layer.di" "sIBL_sun.do";
connectAttr "sIBL_sun_mia_physicalsun.msg" "sIBL_sunShape.mils";
connectAttr "sIBL_sun_mia_physicalsun.msg" "sIBL_sunShape.mipe";
connectAttr "sIBL_sun.pim" "sIBL_aimConstraint.cpim";
connectAttr "sIBL_sun.t" "sIBL_aimConstraint.ct";
connectAttr "sIBL_sun.rp" "sIBL_aimConstraint.crp";
connectAttr "sIBL_sun.rpt" "sIBL_aimConstraint.crt";
connectAttr "sIBL_sun.ro" "sIBL_aimConstraint.cro";
connectAttr "sIBL_lights_target.t" "sIBL_aimConstraint.tg[0].tt";
connectAttr "sIBL_lights_target.rp" "sIBL_aimConstraint.tg[0].trp";
connectAttr "sIBL_lights_target.rpt" "sIBL_aimConstraint.tg[0].trt";
connectAttr "sIBL_lights_target.pm" "sIBL_aimConstraint.tg[0].tpm";
connectAttr "sIBL_aimConstraint.w0" "sIBL_aimConstraint.tg[0].tw";
connectAttr "sIBL_ground_layer.di" "sIBL_ground.do";
connectAttr "polyCylinder1.out" "Eyes_reflectionShape.i";
connectAttr "sIBL_mip_rayswitch.msg" "RENDER_CAMShape.mies";
connectAttr "sIBL_mia_exposure_simple.msg" "RENDER_CAMShape.mils";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miContourPreset.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewImrRayTracyOff.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewImrRayTracyOn.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr "mentalrayDisplaceApprox1.msg" ":mentalrayItemsList.da" -na;
connectAttr "mentalrayDisplaceApprox2.msg" ":mentalrayItemsList.da" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "sIBL_feedback_shadingEngine.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "sIBL_ground_shadingEngine.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mia_material3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mia_material8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "sIBL_feedback_shadingEngine.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "sIBL_ground_shadingEngine.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mia_material3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mia_material8SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sIBL_background_condition.oc" "sIBL_mip_rayswitch.S00";
connectAttr "sIBL_background_condition.oc" "sIBL_mip_rayswitch.S01";
connectAttr "sIBL_background_condition.oc" "sIBL_mip_rayswitch.S03";
connectAttr "sIBL_lighting_condition.oc" "sIBL_mip_rayswitch.S04";
connectAttr "sIBL_reflection_condition.oc" "sIBL_mip_rayswitch.S02";
connectAttr "sIBL_reflection_condition.oc" "sIBL_mip_rayswitch.S05";
connectAttr "sIBL_background_mentalrayTexture.msg" "sIBL_background_mib_lookup_spherical.s02"
		;
connectAttr "sIBL_backgroundEnvironmentControls_expression.out[0]" "sIBL_background_mib_lookup_spherical.S01"
		;
connectAttr "sIBL_background_mib_lookup_spherical.S03" "sIBL_background_gammaCorrect.v"
		;
connectAttr "sIBL_controls.backgroundGamma" "sIBL_background_gammaCorrect.g";
connectAttr "sIBL_background_gammaCorrect.o" "sIBL_background_multiplyDivide.i1"
		;
connectAttr "sIBL_controls.backgroundGain" "sIBL_background_multiplyDivide.i2";
connectAttr "sIBL_background_multiplyDivide.o" "sIBL_background_condition.ct";
connectAttr "sIBL_background_mib_color_alpha.S02" "sIBL_background_condition.cf"
		;
connectAttr "sIBL_controls.toggleBackground" "sIBL_background_condition.ft";
connectAttr "sIBL_lighting_mentalrayTexture.msg" "sIBL_lighting_mib_lookup_spherical.s02"
		;
connectAttr "sIBL_lightingEnvironmentControls_expression.out[0]" "sIBL_lighting_mib_lookup_spherical.S01"
		;
connectAttr "sIBL_lighting_mib_lookup_spherical.S03" "sIBL_lighting_gammaCorrect.v"
		;
connectAttr "sIBL_controls.lightingGamma" "sIBL_lighting_gammaCorrect.g";
connectAttr "sIBL_lighting_gammaCorrect.o" "sIBL_lighting_multiplyDivide.i1";
connectAttr "sIBL_controls.lightingGain" "sIBL_lighting_multiplyDivide.i2";
connectAttr "sIBL_lighting_multiplyDivide.o" "sIBL_lighting_condition.ct";
connectAttr "sIBL_lighting_mib_color_alpha.S02" "sIBL_lighting_condition.cf";
connectAttr "sIBL_controls.toggleLighting" "sIBL_lighting_condition.ft";
connectAttr "sIBL_reflection_mentalrayTexture.msg" "sIBL_reflection_mib_lookup_spherical.s02"
		;
connectAttr "sIBL_reflectionEnvironmentControls_expression.out[0]" "sIBL_reflection_mib_lookup_spherical.S01"
		;
connectAttr "sIBL_reflection_mib_lookup_spherical.S03" "sIBL_reflection_gammaCorrect.v"
		;
connectAttr "sIBL_controls.reflectionGamma" "sIBL_reflection_gammaCorrect.g";
connectAttr "sIBL_reflection_gammaCorrect.o" "sIBL_reflection_multiplyDivide.i1"
		;
connectAttr "sIBL_controls.reflectionGain" "sIBL_reflection_multiplyDivide.i2";
connectAttr "sIBL_reflection_multiplyDivide.o" "sIBL_reflection_condition.ct";
connectAttr "sIBL_reflection_mib_color_alpha.S02" "sIBL_reflection_condition.cf"
		;
connectAttr "sIBL_controls.toggleReflection" "sIBL_reflection_condition.ft";
connectAttr "layerManager.dli[1]" "sIBL_feedback_layer.id";
connectAttr "sIBL_feedback_file.oc" "sIBL_feedback_lambert.c";
connectAttr "sIBL_feedback_lambert.oc" "sIBL_feedback_shadingEngine.ss";
connectAttr "sIBL_feedbackShape.iog" "sIBL_feedback_shadingEngine.dsm" -na;
connectAttr "sIBL_feedback_shadingEngine.msg" "materialInfo1.sg";
connectAttr "sIBL_feedback_lambert.msg" "materialInfo1.m";
connectAttr "sIBL_feedback_file.msg" "materialInfo1.t" -na;
connectAttr "sIBL_feedback_place2dTexture.o" "sIBL_feedback_file.uv";
connectAttr "sIBL_feedback_place2dTexture.ofs" "sIBL_feedback_file.fs";
connectAttr "sIBL_feedback_place2dTexture.c" "sIBL_feedback_file.c";
connectAttr "sIBL_feedback_place2dTexture.tf" "sIBL_feedback_file.tf";
connectAttr "sIBL_feedback_place2dTexture.rf" "sIBL_feedback_file.rf";
connectAttr "sIBL_feedback_place2dTexture.mu" "sIBL_feedback_file.mu";
connectAttr "sIBL_feedback_place2dTexture.mv" "sIBL_feedback_file.mv";
connectAttr "sIBL_feedback_place2dTexture.s" "sIBL_feedback_file.s";
connectAttr "sIBL_feedback_place2dTexture.wu" "sIBL_feedback_file.wu";
connectAttr "sIBL_feedback_place2dTexture.wv" "sIBL_feedback_file.wv";
connectAttr "sIBL_feedback_place2dTexture.re" "sIBL_feedback_file.re";
connectAttr "sIBL_feedback_place2dTexture.vt1" "sIBL_feedback_file.vt1";
connectAttr "sIBL_feedback_place2dTexture.vt2" "sIBL_feedback_file.vt2";
connectAttr "sIBL_feedback_place2dTexture.vt3" "sIBL_feedback_file.vt3";
connectAttr "sIBL_feedback_place2dTexture.vc1" "sIBL_feedback_file.vc1";
connectAttr "sIBL_feedback_place2dTexture.n" "sIBL_feedback_file.n";
connectAttr "sIBL_feedback_place2dTexture.of" "sIBL_feedback_file.of";
connectAttr "sIBL_feedback_place2dTexture.r" "sIBL_feedback_file.ro";
connectAttr "layerManager.dli[2]" "sIBL_lighting_layer.id";
connectAttr "sIBL_feedbackShape.ws" "sIBL_pointOnSurfaceInfo.is";
connectAttr "unitConversion1.o" "sIBL_backgroundEnvironmentControls_expression.in[0]"
		;
connectAttr ":time1.o" "sIBL_backgroundEnvironmentControls_expression.tim";
connectAttr "sIBL_feedback.ry" "unitConversion1.i";
connectAttr "unitConversion2.o" "sIBL_lightingEnvironmentControls_expression.in[0]"
		;
connectAttr ":time1.o" "sIBL_lightingEnvironmentControls_expression.tim";
connectAttr "sIBL_feedback.ry" "unitConversion2.i";
connectAttr "unitConversion3.o" "sIBL_reflectionEnvironmentControls_expression.in[0]"
		;
connectAttr ":time1.o" "sIBL_reflectionEnvironmentControls_expression.tim";
connectAttr "sIBL_feedback.ry" "unitConversion3.i";
connectAttr "sIBL_mip_rayswitch.S09" "sIBL_ground_mip_matteshadow.S00";
connectAttr "sIBL_ground_lambert.oc" "sIBL_ground_shadingEngine.ss";
connectAttr "sIBL_ground_mip_matteshadow.msg" "sIBL_ground_shadingEngine.mims";
connectAttr "sIBL_groundShape.iog" "sIBL_ground_shadingEngine.dsm" -na;
connectAttr "sIBL_ground_shadingEngine.msg" "materialInfo2.sg";
connectAttr "sIBL_ground_lambert.msg" "materialInfo2.m";
connectAttr "layerManager.dli[3]" "sIBL_ground_layer.id";
connectAttr "mia_material3.S67" "mia_material3SG.mims";
connectAttr "mia_material3.S67" "mia_material3SG.mips";
connectAttr "mia_material3.S67" "mia_material3SG.miss";
connectAttr "Eyes_reflectionShape.iog" "mia_material3SG.dsm" -na;
connectAttr "mia_material3SG.msg" "materialInfo6.sg";
connectAttr "mia_material3.msg" "materialInfo6.m";
connectAttr "gammaCorrect6.o" "Floor_MT.S01";
connectAttr "Floor_MT.S67" "mia_material8SG.mims";
connectAttr "Floor_MT.S67" "mia_material8SG.mips";
connectAttr "Floor_MT.S67" "mia_material8SG.miss";
connectAttr "mia_material8SG.msg" "materialInfo12.sg";
connectAttr "Floor_MT.msg" "materialInfo12.m";
connectAttr "Floor_MT.msg" "materialInfo12.t" -na;
connectAttr "renderLayerManager.rlmi[2]" "main.rlid";
connectAttr "sharedReferenceNode.sr" "modelRN.sr";
connectAttr "sIBL_feedback_shadingEngine.pa" ":renderPartition.st" -na;
connectAttr "sIBL_ground_shadingEngine.pa" ":renderPartition.st" -na;
connectAttr "mia_material3SG.pa" ":renderPartition.st" -na;
connectAttr "mia_material8SG.pa" ":renderPartition.st" -na;
connectAttr "sIBL_background_mib_lookup_spherical.msg" ":defaultShaderList1.s" -na
		;
connectAttr "sIBL_lighting_mib_lookup_spherical.msg" ":defaultShaderList1.s" -na
		;
connectAttr "sIBL_reflection_mib_lookup_spherical.msg" ":defaultShaderList1.s" -na
		;
connectAttr "sIBL_feedback_lambert.msg" ":defaultShaderList1.s" -na;
connectAttr "sIBL_ground_lambert.msg" ":defaultShaderList1.s" -na;
connectAttr "mia_material3.msg" ":defaultShaderList1.s" -na;
connectAttr "Floor_MT.msg" ":defaultShaderList1.s" -na;
connectAttr "sIBL_background_mentalrayTexture.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "sIBL_lighting_mentalrayTexture.msg" ":defaultTextureList1.tx" -na;
connectAttr "sIBL_reflection_mentalrayTexture.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "sIBL_feedback_file.msg" ":defaultTextureList1.tx" -na;
connectAttr "sIBL_sunShape.ltd" ":lightList1.l" -na;
connectAttr "sIBL_sun_mia_physicalsun.msg" ":lightList1.l" -na;
connectAttr "sIBL_mip_rayswitch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "sIBL_background_gammaCorrect.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "sIBL_background_multiplyDivide.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "sIBL_background_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "sIBL_background_mib_color_alpha.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "sIBL_lighting_gammaCorrect.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "sIBL_lighting_multiplyDivide.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "sIBL_lighting_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "sIBL_lighting_mib_color_alpha.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "sIBL_reflection_gammaCorrect.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "sIBL_reflection_multiplyDivide.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "sIBL_reflection_condition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "sIBL_reflection_mib_color_alpha.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "sIBL_feedback_place2dTexture.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "sIBL_ground_mip_matteshadow.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "sIBL_mia_exposure_simple.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "gammaCorrect6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "main.msg" ":defaultRenderingList1.r" -na;
connectAttr ":perspShape.msg" ":defaultRenderGlobals.sc";
connectAttr "sIBL_sun.iog" ":defaultLightSet.dsm" -na;
connectAttr "sIBL_sun_mia_physicalsun.msg" ":defaultLightSet.dnsm" -na;
// End of Lighting sample scene.ma
