//Maya ASCII 2014 scene
//Name: techGloves.ma
//Last modified: Sat, Jun 07, 2014 09:18:24 PM
//Codeset: 1252
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
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
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
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.9 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 7 Ultimate Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.96202465686461236 1.5649992928235388 0.36318551112354974 ;
	setAttr ".r" -type "double3" 302.40001184416553 -87.599999997228153 359.99999999999801 ;
	setAttr ".rp" -type "double3" 2.7755575615628914e-017 0 0 ;
	setAttr ".rpt" -type "double3" -4.4484529566344492e-016 -4.4491414022329074e-016 
		-1.0108843321920006e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".ncp" 0.001;
	setAttr ".coi" 1.8407523462257005;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.10385586228221655 0.14699417352676392 0.675871342420578 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.20430491511021234 100.10117786231005 -0.41585853218883234 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 1.0526315789473684;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.10194682305250752 0.014243421052631579 100.10050177302283 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 1.4136595394736844;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.10359758178883 0.0053412828947368499 -0.10073682772483622 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 1.4118791118421052;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0.015645977945217826 0.089021381578947373 -0.44084605594059406 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -176.94224833204433 -47.228867733636747 175.83791228769857 ;
	setAttr ".bps" -type "matrix" -0.67728063612412615 0.04928583326967368 0.73407209902720949 0
		 0.033420956500576061 0.99878471486047182 -0.036223376812117833 0 -0.73496529142394607 -1.5265566588595902e-016 -0.67810472672155453 0
		 0.015645977945217826 0.089021381578947373 -0.44084605594059406 1;
	setAttr -l on ".radi" 0.5;
createNode joint -n "index0" -p "root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.51099951335492033 -1.9196444919991282e-017 -2.7877694745491963e-016 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.38802184886072333 42.644285811158674 -2.2522523416340077 ;
	setAttr ".bps" -type "matrix" -0.00087271464250726627 0.0073531057152183407 0.99997258472694817 0
		 6.417336517350325e-006 0.99997296555273973 -0.0073531029148903252 0 -0.999999619163913 2.6355150698777747e-015 -0.00087273823650307891 0
		 -0.33044409751892129 0.11420641839504234 -0.065735570570264967 1;
	setAttr -l on ".radi" 0.5;
createNode joint -n "index1" -p "index0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.51196163725747079 4.9966690983138883e-018 -1.1506183498308742e-016 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.76049955610785214 4.0131013063266243 -11.161043627614008 ;
	setAttr ".bps" -type "matrix" 0.069129200428093021 -0.18589115722295751 0.98013551681105926 0
		 0.013078460148440456 0.98257034235026131 0.18543051586466555 0 -0.99752198348122567 -8.6126204120727469e-015 0.070355472222719137 0
		 -0.33089089393615778 0.11797092643593279 0.44621203111912838 1;
	setAttr -l on ".radi" 0.5;
createNode joint -n "index2" -p "index1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.39622156587787916 -1.5029959878034262e-016 -1.7203213250989995e-016 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.7001750044752767 2.1222482539982925 -7.550480219106313 ;
	setAttr ".bps" -type "matrix" 0.10370546758295085 -0.31317382610263328 0.94401659447153741 0
		 0.034198147778055937 0.94969582216846549 0.31130103122911856 0 -0.9940199508470402 4.2126688436012377e-015 0.10919861408483272 0
		 -0.30350041389465282 0.044316841038201382 0.83456286036253058 1;
	setAttr -l on ".radi" 0.5;
createNode joint -n "index3" -p "index2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.23770941299352161 -4.5044686593629204e-017 -1.1159212471981346e-016 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 83.730878744066729 18.250604489206342 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -8.0524407813276594e-015 5.6926685587654902e-014 0
		 8.0699336102441066e-015 1 3.4861002973229915e-014 0 -5.6954441163270531e-014 -3.4789563432528874e-014 1 0
		 -0.27884864807129078 -0.030127525329590829 1.0589644908905029 1;
	setAttr -l on ".radi" 0.5;
createNode joint -n "middle0" -p "root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.35762544263088486 0.09643107366371681 -0.17162798125039513 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.57399986774350331 42.240442023558693 -1.9711920630020476 ;
	setAttr ".bps" -type "matrix" -0.007890216538573136 0.01103200590361455 0.99990801543377827 0
		 8.7050212824527073e-005 0.99993914557124064 -0.011031662454853913 0 -0.99996886796801587 -7.7914375536477223e-016 -0.007890696722414603 0
		 -0.097203381359580926 0.20296113193035098 -0.065434510397152201 1;
	setAttr -l on ".radi" 0.5;
createNode joint -n "middle1" -p "middle0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.53422124077533728 -1.9507456899031332e-017 -7.5986418880041755e-018 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.50273889712340414 2.3812991838320583 -12.556935323946734 ;
	setAttr ".bps" -type "matrix" 0.033834508825752972 -0.20644987034906082 0.97787201465497309 0
		 0.0071389224900778054 0.9784571789469666 0.20632640343112821 0 -0.99940195206843629 -3.8290264029082515e-014 0.034579447679211131 0
		 -0.10141850262880354 0.20885466381242077 0.4687375902690859 1;
	setAttr -l on ".radi" 0.5;
createNode joint -n "middle2" -p "middle1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.41848582029808751 -2.8361475489709085e-017 2.9038287073350821e-018 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.38360163908301054 0.99213361969093583 -9.22551602859083 ;
	setAttr ".bps" -type "matrix" 0.049552283122038923 -0.36059238668836613 0.93140630333908581 0
		 0.019156991331154977 0.93272350172084117 0.36008315570261018 0 -0.99858779329637892 -2.9907164652190364e-015 0.053126444257720264 0
		 -0.087259240448475439 0.12245832046896021 0.8779631624685158 1;
	setAttr -l on ".radi" 0.5;
createNode joint -n "middle3" -p "middle2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.26794406354241906 -1.7051783619379958e-016 -2.6029296007441371e-017 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.9867637029017161e-014 86.954645271697558 21.136580969324651 ;
	setAttr ".bps" -type "matrix" 1 5.0792002506347074e-014 3.1918911957973251e-016 0
		 -5.075457865673937e-014 1 -8.9817190147679243e-013 0 -4.3021142204224816e-016 8.9812256309263409e-013 1.0000000000000002 0
		 -0.073982000350951885 0.025839731097219945 1.1275279521942134 1;
	setAttr -l on ".radi" 0.5;
createNode joint -n "ring0" -p "root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.17444455777541806 0.10547028142776317 -0.37041056152841872 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.15250472142685115 42.776859351211826 -2.6004613251326649 ;
	setAttr ".bps" -type "matrix" 0.0014200295544244956 0.0028766992006705595 0.99999485404564648 0
		 -4.0850147895268342e-006 0.99999586229229409 -0.002876696300236212 0 -0.9999989917491805 -2.7835236587091313e-015 0.0014200354301160956 0
		 0.17326188087463337 0.20296113193035081 -0.065434510397151646 1;
	setAttr -l on ".radi" 0.5;
createNode joint -n "ring1" -p "ring0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.51535957471869354 -4.3930447322193605e-017 -5.5511151231257359e-017 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.19481792149796018 -1.5957986498906416 -7.1260683082135037 ;
	setAttr ".bps" -type "matrix" -0.026439291019003726 -0.12115095577976957 0.99228192052665209 0
		 -0.003226914523939558 0.99263409467620456 0.12110797293740358 0 -0.99964521251945582 2.3553018940799505e-014 -0.026635485483324318 0
		 0.1739937067018896 0.20444366640700196 0.44992241230469476 1;
	setAttr -l on ".radi" 0.5;
createNode joint -n "ring2" -p "ring1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.38613303013681538 -5.0152478973430691e-017 -1.2057012580114784e-017 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.1293950395367713 -2.6003277181479092 -16.528022857857877 ;
	setAttr ".bps" -type "matrix" -0.069756283551086706 -0.39812349500951677 0.91467575873997453 0
		 -0.030274339729157791 0.91733182803247759 0.39697075664657755 0 -0.9971045708746421 8.9464470109838797e-015 -0.076042585048747932 0
		 0.1637846231460526 0.15766328074778815 0.83307523702762953 1;
	setAttr -l on ".radi" 0.5;
createNode joint -n "ring3" -p "ring2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.247905643750639 1.3761527681329692e-017 -9.6235850020506237e-018 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999271259227 85.638870885881659 -156.53908387685988 ;
	setAttr ".bps" -type "matrix" 1 6.9888533739004128e-009 -1.9247201055172525e-011 0
		 -6.9888533857933717e-009 0.99999999999999922 -3.5548152354276285e-008 0 1.9246951254991984e-011 3.5548152185460998e-008 0.99999999999999956 0
		 0.14649164676666834 0.058966219425199598 1.059828519821167 1;
	setAttr -l on ".radi" 0.5;
createNode joint -n "pinky0" -p "root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.0033868493153578769 0.025113069820340769 -0.55862671707347411 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.5721895913323589 42.123294288020205 -6.6567910318568728 ;
	setAttr ".bps" -type "matrix" -0.0088661681999010478 -0.049566002128752146 0.99873149669689698 0
		 -0.00044000133933507629 0.99877085031200852 0.049564049126850473 0 -0.99996059795387593 4.4059887472634543e-014 -0.0088770794593466817 0
		 0.42935037612914967 0.1139370081680614 -0.065434510397151591 1;
	setAttr -l on ".radi" 0.5;
createNode joint -n "pinky1" -p "pinky0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.44719442278383792 -3.1202082812576681e-017 -1.1179806112604468e-016 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.62860551668587616 -6.6182290704760165 -2.5968713002426447 ;
	setAttr ".bps" -type "matrix" -0.12402689021420539 -0.094136328422531029 0.98780346333413871 0
		 -0.0117275142553397 0.99555931599836156 0.093402964290569684 0 -0.99220955241984277 2.2793440126440225e-014 -0.12458011112057883 0
		 0.42538547515869063 0.091771368456391583 0.3811926447842558 1;
	setAttr -l on ".radi" 0.5;
createNode joint -n "pinky2" -p "pinky1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.34305088233255449 4.7607873522947172e-018 4.7607873522947172e-018 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.0670231603169937 -2.8430451197673205 -15.179918050076841 ;
	setAttr ".bps" -type "matrix" -0.16569870383128721 -0.35110719473290569 0.92155720243261141 0
		 -0.062133734505570554 0.93633526997907623 0.34556571188357482 0 -0.98421711963622294 1.6926614454031457e-016 -0.17696514180758136 0
		 0.3828379410377446 0.059477817931495196 0.7200594944521852 1;
	setAttr -l on ".radi" 0.5;
createNode joint -n "pinky3" -p "pinky2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -l on ".v";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.17992715718301056 4.163336342344337e-017 -2.7755575615628914e-017 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 43.344514499789426 104.50428801645532 79.027434338271533 ;
	setAttr ".bps" -type "matrix" 0.97602509327900056 -0.21348272609907845 0.042428091484586566 0
		 0.21740090594018205 0.94669913254656013 -0.23769223490046693 0 0.010576548875069924 0.24121749126648442 0.97041344720742451 0
		 0.35302424430847151 -0.0036959014832981876 0.88587266206741322 1;
	setAttr -l on ".radi" 0.5;
createNode transform -n "techHand";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "techHandShape" -p "techHand";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.14894916117191315 0.64951333403587341 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
	setAttr ".vcs" 2;
createNode mesh -n "techHandShape6Orig2" -p "techHand";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1371 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.3758415 0.010206012 0.36809278
		 0.04873652 0.18157101 0.059440427 0.18239221 0.023348175 0.35744631 0.096879065 0.18588996
		 0.10755521 0.16151524 0.054855794 0.16114718 0.019757248 0.37096202 0.10292732 0.38386065
		 0.055356018 0.3428598 0.13862792 0.19206592 0.14961837 0.16278794 0.10242578 0.14350393
		 0.053491317 0.14443836 0.016721718 0.3560816 0.1464587 0.32411352 0.18112868 0.20312139
		 0.19518384 0.16495678 0.14641339 0.14232886 0.10070984 0.12760156 0.018754102 0.12545855
		 0.053775102 0.33746108 0.19059484 0.30222926 0.22471726 0.21212402 0.23605055 0.17000464
		 0.19273323 0.1412687 0.14381656 0.12181284 0.10119815 0.10619438 0.021075286 0.10519134
		 0.057156831 0.31828961 0.23312578 0.26021621 0.2840876 0.22034788 0.28535324 0.17441216
		 0.23482019 0.14008716 0.1917685 0.11748688 0.14498712 0.098483577 0.10494094 0.61629879
		 0.010513563 0.62390965 0.049083076 0.29522756 0.27921253 0.17748749 0.2861352 0.1390579
		 0.23276949 0.11016551 0.19093302 0.090252593 0.14657347 0.63434416 0.097297058 0.13771892
		 0.28557473 0.10365796 0.23269171 0.076973483 0.1914224 0.64872223 0.13913316 0.6208064
		 0.10328664 0.60811943 0.055645101 0.097992927 0.28373104 0.065942422 0.23169413 0.66724491
		 0.18174256 0.63546616 0.146901 0.055253919 0.28042734 0.68889207 0.22545499 0.65385115
		 0.19114077 0.015491989 0.27684188 0.67278779 0.233778 0.69559318 0.27999014 0.42733663
		 0.019069782 0.45193106 0.011826782 0.44911361 0.049230386 0.42470878 0.058516331
		 0.47497404 0.01038924 0.47357088 0.047769189 0.44278067 0.10266217 0.41471648 0.10809253
		 0.49604952 0.0093499776 0.49599648 0.046236828 0.47061747 0.09944547 0.43392259 0.15470341
		 0.40048206 0.15258527 0.51712447 0.010437069 0.51841921 0.047817625 0.49588972 0.098357745
		 0.4647702 0.15629533 0.41862911 0.19720471 0.38091624 0.19525279 0.54017025 0.011926299
		 0.54287469 0.049333274 0.52115768 0.099504866 0.49575084 0.15680608 0.45862436 0.20094047
		 0.40567809 0.23884249 0.36200339 0.23627335 0.56475842 0.019228481 0.5672524 0.058683433
		 0.54898208 0.10279098 0.52673388 0.15637636 0.49564338 0.20174274 0.45154077 0.23998982
		 0.39288718 0.28841275 0.33984044 0.28441232 0.57702678 0.10829924 0.5575881 0.15486826
		 0.53266436 0.20104426 0.49555433 0.24086262 0.44579571 0.29222637 0.31472364 0.28119239
		 0.33631918 0.23614815 0.59103805 0.15285377 0.57266933 0.19743128 0.53956389 0.24012014
		 0.49545145 0.29373351 0.61037999 0.19560701 0.58541226 0.23912254 0.54509562 0.29237261
		 0.62907207 0.23671636 0.59797138 0.28873914 0.65097988 0.28496003 0.65474671 0.23670882
		 0.67609388 0.28186762 0.25685874 0.021539504 0.27735782 0.014295276 0.27635682 0.047944777
		 0.25390127 0.051341411 0.29836416 0.014295276 0.29922497 0.047944777 0.27635682 0.080033839
		 0.25149944 0.079413891 0.31381404 0.022716457 0.31345332 0.047944777 0.29922497 0.080033839
		 0.27635682 0.10478526 0.25088981 0.10478485 0.31345332 0.079811096 0.29922497 0.10478526
		 0.25149944 0.13015646 0.27635682 0.12953669 0.31345332 0.10478526 0.29922497 0.12953669
		 0.25390127 0.15822905 0.27635682 0.1616258 0.31345332 0.12975949 0.29922497 0.1616258
		 0.25685874 0.18803102 0.27735782 0.19527513 0.31345332 0.1616258 0.29836416 0.19527513
		 0.31381404 0.18685406 0.19928673 0.030910177 0.40161413 0.058625348 0.40887612 0.015257573
		 0.20231318 0.066703036 0.21030229 0.11419873 0.39040995 0.10614563 0.29151618 0.48979342
		 0.39093143 0.013484178 0.22185001 0.15491319 0.37524939 0.15011667 0.29509366 0.50959569
		 0.47354782 0.42637044 0.43510592 0.43053499 0.23840669 0.19461752 0.35590327 0.19382474
		 0.46828377 0.42842448 0.088928223 0.027615808 0.39868891 0.45127112 0.36184895 0.47078007
		 0.084106475 0.063175946 0.32541227 0.4892537 0.67722285 0.16236128 0.69293094 0.16243367
		 0.71514738 0.18755141 0.70153934 0.18160532 0.65979779 0.13705654 0.67514944 0.13537338
		 0.70373338 0.16049485 0.7260626 0.18634681 0.64944482 0.11024888 0.66434658 0.10613991
		 0.68583274 0.13268705 0.71278453 0.15254776 0.73128444 0.17426203 0.64459002 0.08192385
		 0.65863502 0.075503491 0.67494321 0.10321834 0.64658833 0.051259957 0.66004443 0.043152072
		 0.669186 0.07233724 0.65763474 0.022278711 0.66628897 0.010203943 0.67031789 0.039290205
		 0.67628384 0.0056619793 0.68695205 0.01337336 0.68215752 0.041495644 0.43611801 0.47140443
		 0.69579327 0.12658805 0.71245801 0.15229832 0.46951616 0.47004694 0.39916539 0.49177611
		 0.68612659 0.10013569 0.3992964 0.5122996 0.68086529 0.072471373 0.47408533 0.4921698
		 0.68200874 0.041856594 0.073768094 0.11012769 0.060248476 0.15011352 0.58324033 0.015467536
		 0.59034878 0.058858208 0.60119557 0.013743401 0.32663631 0.50897717 0.041768331 0.18880209
		 0.60134047 0.10643161 0.4744699 0.44729424 0.43597531 0.45084572 0.4697324 0.44816136
		 0.71786231 0.27310812 0.61627895 0.15047716 0.39892721 0.47146973 0.024954196 0.22907582
		 0.6353938 0.19428444 0.36228609 0.49051839 0.27299085 0.2722075 0.36252463 0.5106436
		 0.25317213 0.23582318 0.47438109 0.47001964 0.22457165 0.30958584 0.22255164 0.33322689
		 0.18687242 0.33469155 0.18762636 0.31032214 0.22128189 0.356787 0.18620694 0.35583928
		 0.1483022 0.33424968 0.14860338 0.30982816 0.2210024 0.38030055 0.1855793 0.37789395
		 0.14809984 0.35526976 0.10924011 0.33430064 0.10900426 0.30987304 0.14795047 0.37740824
		 0.10947579 0.35529709 0.070734084 0.33472377 0.070228636 0.3104462 0.14787084 0.40064397
		 0.10964727 0.37745523 0.071354032 0.35595423 0.035456359 0.33336544 0.03326267 0.30967909
		 0.10976207 0.40066925 0.071810067 0.378003 0.036706865 0.35709852 0.072349131 0.40082377
		 0.036945701 0.38061541 0.037306011 0.40100068 0.22161365 0.47254607 0.22016096 0.49204484
		 0.18583971 0.49201682;
	setAttr ".uvst[0].uvsp[250:499]" 0.18581414 0.4715623 0.22578776 0.47357044
		 0.14795095 0.47185043 0.22125983 0.45249435 0.18599278 0.45361343 0.22599566 0.45250806
		 0.10954434 0.47184387 0.14790386 0.45390406 0.22143322 0.43204734 0.18578571 0.43437758
		 0.22564059 0.43092862 0.071545362 0.47164306 0.10960603 0.4539372 0.14785451 0.43456748
		 0.22072357 0.41275677 0.18536466 0.41446701 0.22537768 0.4110153 0.036139727 0.47257727
		 0.071435928 0.45363304 0.10969633 0.43460342 0.14783078 0.41456434 0.22057861 0.40082988
		 0.1853376 0.40072337 0.2262786 0.40230182 0.031499684 0.47357559 0.036158204 0.45247722
		 0.071981549 0.43444601 0.10977644 0.41458896 0.031501234 0.45247602 0.036056399 0.43192643
		 0.072303414 0.4146471 0.031368136 0.43075019 0.037034154 0.41268212 0.032115638 0.41093701
		 0.031372547 0.40227813 0.22407109 0.50515825 0.18628043 0.50633901 0.22512633 0.49285868
		 0.22718507 0.50053859 0.14795476 0.49213454 0.1480543 0.50613171 0.10941797 0.49213603
		 0.10937023 0.50611287 0.071514904 0.49198797 0.071097434 0.50627667 0.03330636 0.5051704
		 0.037503898 0.49206308 0.032134235 0.49278805 0.030023515 0.50010556 0.028884649
		 0.31431472 0.030464709 0.33432335 0.02291137 0.33452767 0.021579444 0.31596047 0.031484902
		 0.35736942 0.023605227 0.35757798 0.024293721 0.38098073 0.031939864 0.38021404 0.11304468
		 0.96757096 0.024794281 0.39930767 0.23487389 0.33433476 0.22719246 0.33407298 0.228719
		 0.31393293 0.23633552 0.31565669 0.23405743 0.35728392 0.22613102 0.35708389 0.23349088
		 0.38057658 0.2257728 0.37987837 0.18241787 0.93121028 0.23327911 0.39902815 0.48550081
		 0.54017437 0.48516685 0.56567556 0.44499242 0.56269288 0.44574624 0.53692377 0.49033844
		 0.54388094 0.49014819 0.56608456 0.48438609 0.59158069 0.44425595 0.58844358 0.40220261
		 0.56092477 0.4028073 0.53526866 0.48927701 0.59189743 0.48390251 0.61683476 0.44250888
		 0.61263686 0.40151966 0.58674031 0.35982811 0.56025177 0.35985273 0.53451562 0.48882908
		 0.61752701 0.47994578 0.63752228 0.44006407 0.63555628 0.40045434 0.6115272 0.35965556
		 0.58618903 0.31716335 0.56061554 0.31646872 0.53495437 0.48512858 0.64060694 0.39948606
		 0.63533473 0.35957193 0.61110312 0.3175329 0.58645499 0.27770597 0.56292188 0.27602845
		 0.53774363 0.35908943 0.63489699 0.31810015 0.6110782 0.27814382 0.58824235 0.27112442
		 0.54205495 0.27238816 0.56384301 0.31819373 0.63443506 0.27812594 0.6128363 0.27275974
		 0.58864528 0.27942485 0.63398719 0.27283424 0.61310512 0.27316719 0.63578254 0.48176149
		 0.71127242 0.47626582 0.73187011 0.44066173 0.73478037 0.44105613 0.71238136 0.48163307
		 0.73090118 0.48635191 0.71239418 0.39877644 0.73492801 0.39901358 0.71286869 0.48236355
		 0.68957144 0.44220722 0.69108135 0.48694909 0.68917084 0.35678527 0.73434579 0.35713732
		 0.71231568 0.39917493 0.69124895 0.48180109 0.66790539 0.44097918 0.67021543 0.48636287
		 0.66648412 0.31462735 0.73309106 0.31497142 0.71094185 0.35742182 0.69072795 0.39913321
		 0.6700992 0.47540563 0.64891869 0.43949914 0.64985645 0.48094386 0.64821094 0.27722415
		 0.72993141 0.27458248 0.70967609 0.31469834 0.68942982 0.35796487 0.66944414 0.39911252
		 0.649638 0.18072024 0.95194721 0.18005653 0.97307509 0.11161789 0.80580002 0.27152067
		 0.73012429 0.26957536 0.70999688 0.27542573 0.68738282 0.31596047 0.66851634 0.35862982
		 0.64909869 0.21261272 0.97519052 0.27036369 0.68717158 0.27514082 0.66545367 0.31750453
		 0.64849615 0.21337882 0.95417756 0.27053571 0.66442323 0.27921253 0.64614701 0.2149581
		 0.93258786 0.27386522 0.64401436 0.04963097 0.85442644 0.18283907 0.84874922 0.041685104
		 0.78669763 0.044673383 0.81002277 0.48512393 0.74293762 0.44175982 0.75030261 0.11698273
		 0.92863935 0.487275 0.73696977 0.11951086 0.87387019 0.39884612 0.74997354 0.082915217
		 0.85280108 0.35641795 0.74935281 0.084487617 0.87489039 0.3136673 0.74842113 0.27237147
		 0.74341732 0.04750973 0.83189094 0.21333665 0.84798259 0.26877767 0.73784739 0.080882907
		 0.83010823 0.11652431 0.85064632 0.26458317 0.56463927 0.26383597 0.54481024 0.15309083
		 0.87343758 0.26500422 0.58897996 0.26515096 0.6134817 0.081827104 0.94470042 0.074656278
		 0.78421521 0.26588762 0.63364416 0.078336328 0.8081457 0.49454185 0.71431065 0.10859403
		 0.78155619 0.11375067 0.82791942 0.14992228 0.84947687 0.49511358 0.68907523 0.18714952
		 0.8729853 0.49423385 0.66352332 0.14726385 0.8260687 0.14412236 0.98606765 0.72381049
		 0.96666396 0.72369444 0.98113465 0.68564153 0.98302424 0.68516618 0.96863234 0.72840446
		 0.97830117 0.72847039 0.97028947 0.64371896 0.98413217 0.64343089 0.96972704 0.60187268
		 0.98445535 0.60173494 0.97004831 0.56021518 0.98435223 0.56012994 0.96994281 0.52255231
		 0.98410916 0.52207214 0.96961594 0.51751417 0.98122185 0.517259 0.97356963 0.72230852
		 0.94206172 0.15181132 0.74714333 0.23185007 0.73360163 0.68428499 0.94376516 0.7282728
		 0.96265769 0.72724348 0.94163465 0.23068492 0.7541011 0.64286834 0.94468462 0.72186989
		 0.91769636 0.68372947 0.91885555 0.72680151 0.91757816 0.19218872 0.72931427 0.60137522
		 0.94500887 0.6424405 0.91961449 0.72159928 0.89324981 0.68348908 0.89404625 0.7265358
		 0.89354855 0.19082792 0.7499271 0.55982882 0.94492853 0.60106295 0.91993439 0.6421718
		 0.89459777 0.72259599 0.86849523 0.68324757 0.86939871 0.72710365 0.87247306 0.22383587
		 0.75481838 0.52169263 0.94464874 0.55952555 0.91995132 0.60091186 0.89493901 0.64198887
		 0.86960936 0.51714528 0.96573281 0.51649815 0.94461775 0.52125233 0.91973543 0.55937034
		 0.89500928 0.60089529 0.86990535 0.51613098 0.91974193 0.5212118 0.8947491 0.55974585
		 0.87031066 0.51602691 0.8948288 0.52075464 0.86947876 0.5160237 0.87362415 0.72079331
		 0.77029085;
	setAttr ".uvst[0].uvsp[500:749]" 0.72130913 0.79189396 0.68328625 0.79138029
		 0.68318856 0.77005392 0.72553784 0.77303743 0.72572672 0.791834 0.72149348 0.8135975
		 0.68333256 0.81264317 0.64182454 0.79121602 0.64176363 0.769894 0.72593743 0.8136605
		 0.72158557 0.83529299 0.68299204 0.8337217 0.64184344 0.81252193 0.60040885 0.79153693
		 0.60031837 0.77018207 0.72591954 0.83574182 0.71922737 0.85501945 0.68280667 0.85498846
		 0.64185292 0.83383071 0.60049969 0.81285012 0.55899215 0.79218739 0.55923223 0.77078313
		 0.72436017 0.85574794 0.11373013 0.72475719 0.11212394 0.74445021 0.64190418 0.85516
		 0.60069889 0.83413994 0.55896115 0.81342047 0.52092153 0.79252785 0.52241212 0.77080542
		 0.72638458 0.86375904 0.23245595 0.71106917 0.60089827 0.85546029 0.55945885 0.83460414
		 0.52081698 0.81445593 0.51733476 0.77347904 0.51626623 0.79228002 0.19288535 0.70981479
		 0.56015235 0.85580963 0.52140665 0.83628005 0.51616436 0.81467527 0.22691374 0.71071607
		 0.52408433 0.85609895 0.51686305 0.83713263 0.15321817 0.72707093 0.51869094 0.85678691
		 0.51673102 0.86445254 0.51099086 0.85837942 0.50910813 0.8380633 0.22637402 0.73328668
		 0.0452246 0.65062779 0.50826734 0.81482351 0.044816308 0.62993103 0.079997778 0.65116507
		 0.50844651 0.7918089 0.50970823 0.77145475 0.044523172 0.60697335 0.73465991 0.8939876
		 0.079721749 0.62811428 0.11800736 0.65164596 0.73513144 0.8745383 0.73486054 0.91745138
		 0.041212313 0.56393963 0.73520219 0.94094944 0.043056838 0.58429462 0.079180777 0.60535067
		 0.73626649 0.96046174 0.97260249 0.77649051 0.96895587 0.7896769 0.93217379 0.78740668
		 0.93338162 0.7733891 0.97449589 0.78879738 0.97672027 0.78097475 0.8914451 0.7867887
		 0.89170796 0.77266634 0.85040098 0.78657317 0.85033226 0.77246761 0.80968696 0.78684521
		 0.80859816 0.77282709 0.77314103 0.78885376 0.76944089 0.7757175 0.76728642 0.78794104
		 0.76510739 0.78048378 0.93140042 0.87050712 0.96810704 0.87030488 0.97108901 0.88378847
		 0.93209141 0.88446438 0.9702096 0.85110903 0.93203324 0.84976542 0.97357458 0.87142354
		 0.97532827 0.87935042 0.89075994 0.87023687 0.89073247 0.8843509 0.89095843 0.84938264
		 0.97047108 0.8299787 0.93237638 0.82905996 0.84989083 0.87003434 0.84967774 0.88412303
		 0.84998876 0.84919769 0.89116746 0.82855123 0.97475755 0.8517136 0.97512722 0.82998407
		 0.97052664 0.80881059 0.93235707 0.80829811 0.80927545 0.86990881 0.8082971 0.88384455
		 0.80889088 0.84917259 0.85006821 0.82836503 0.89126742 0.80768561 0.97509986 0.80840003
		 0.43583298 0.30554616 0.28045988 0.43223941 0.76942605 0.88272029 0.77283138 0.86933547
		 0.77085781 0.85021806 0.80884534 0.82848203 0.85027605 0.80750561 0.039274335 0.97095603
		 0.39857292 0.43099001 0.76702243 0.8703984 0.7650972 0.87792778 0.77090263 0.82901442
		 0.80918097 0.80773258 0.28826165 0.43416524 0.76605713 0.85077226 0.76598656 0.82908547
		 0.77113992 0.80791211 0.21055248 0.82323462 0.76630682 0.80738944 0.29300606 0.43106443
		 0.36170161 0.4510704 0.96944177 0.95638585 0.97155428 0.98028439 0.9325341 0.9821198
		 0.9314912 0.9576596 0.97639585 0.97645569 0.9748475 0.95592976 0.89035541 0.98256433
		 0.89023256 0.95796657 0.96935976 0.9322859 0.93149871 0.93305123 0.84828532 0.98223293
		 0.84886229 0.95776314 0.89035708 0.93332165 0.97065967 0.90819085 0.93203354 0.90859938
		 0.80610251 0.9814111 0.80756652 0.95698094 0.84917039 0.93314385 0.89061403 0.90877366
		 0.39754057 0.30619347 0.039236121 0.63001519 0.76729882 0.97914284 0.76979119 0.95527589
		 0.80802292 0.93239754 0.84935081 0.9085654 0.47516358 0.31459829 0.76225322 0.9750396
		 0.76407009 0.95474768 0.77033859 0.93120742 0.80794179 0.90795553 0.17927691 0.77560383
		 0.7695176 0.90712011 0.074275635 0.97934073 0.47112358 0.31046379 0.76413715 0.88663167
		 0.7638244 0.90739918 0.75500494 0.90933025 0.75525415 0.88796467 0.36191952 0.43105042
		 0.32468855 0.45092255 0.76458317 0.93128061 0.75561321 0.93145919 0.75483847 0.90632308
		 0.32453763 0.47012442 0.29052532 0.47043073 0.75523692 0.95411241 0.28705919 0.49019635
		 0.29018319 0.50670946 0.14377061 0.77854997 0.75350082 0.97287834 0.98528892 0.91064203
		 0.97609061 0.90851331 0.97604758 0.88754296 0.98534584 0.88897729 0.98417026 0.93272841
		 0.97478724 0.93239105 0.28611207 0.45080054 0.18005872 0.8245405 0.98551732 0.90747547
		 0.11006478 0.98307759 0.98410231 0.95535624 0.32546556 0.43108642 0.29058421 0.45101714
		 0.28604519 0.4705103 0.98559147 0.97428071 0.14549202 0.80333167 0.71719635 0.53151828
		 0.71468329 0.54656434 0.68122494 0.54712641 0.68144023 0.53110707 0.72061992 0.54527974
		 0.72230613 0.53621089 0.64283681 0.54842496 0.6423949 0.53247356 0.6037991 0.54982519
		 0.60324299 0.53414309 0.56589758 0.55154139 0.56343043 0.53696984 0.53719294 0.55647379
		 0.52422118 0.54639512 0.53122389 0.55764717 0.52477813 0.55265182 0.71052742 0.73169541
		 0.71087849 0.75893533 0.67492992 0.75590044 0.67570704 0.72946221 0.71654141 0.75497329
		 0.71659654 0.73162228 0.63481194 0.75226629 0.63629931 0.72664183 0.712816 0.70469469
		 0.67768204 0.70295113 0.71895778 0.7048589 0.59465259 0.74813402 0.59663862 0.72314799
		 0.63851035 0.70106578 0.71572411 0.67778218 0.680511 0.67660207 0.72183561 0.67805856
		 0.55544978 0.74371302 0.55823976 0.71906686 0.59915417 0.69835126 0.64144874 0.67540252
		 0.71939254 0.6515038 0.68301725 0.65150481 0.72466588 0.65559626 0.52050453 0.73934042
		 0.52296633 0.71493244 0.56072134 0.69509673 0.60227537 0.67372036 0.6442709 0.65066916
		 0.52497822 0.6914742 0.56360114 0.67125261 0.60573399 0.64952111 0.52746093 0.66844326
		 0.56690633 0.64839637 0.52846301 0.64461708 0.22017661 0.84664482 0.71691501 0.5682587;
	setAttr ".uvst[0].uvsp[750:999]" 0.68218994 0.56954449 0.11744708 0.6666469
		 0.073365778 0.7417686 0.72210217 0.56740791 0.71794176 0.5921374 0.68299913 0.59219396
		 0.64320588 0.57014453 0.078110963 0.68580538 0.72317529 0.59223145 0.71864212 0.61577892
		 0.68340957 0.61451691 0.64393449 0.59205163 0.60368085 0.57140791 0.04098051 0.70223898
		 0.72389209 0.61600202 0.71824598 0.63773286 0.68332434 0.63621765 0.64444244 0.61383796
		 0.60397053 0.59248638 0.5651623 0.57384825 0.034242414 0.72144908 0.72425747 0.63655114
		 0.23551744 0.86576903 0.079539657 0.66598088 0.6446445 0.63525504 0.60501873 0.6131928
		 0.56354606 0.59355271 0.52788413 0.57525212 0.032514982 0.7388531 0.042599849 0.68203443
		 0.60604298 0.63419223 0.5660224 0.61281383 0.52637136 0.59553224 0.11502773 0.70670515
		 0.52313983 0.57421929 0.036206655 0.70202786 0.56893218 0.63401616 0.52865386 0.61572552
		 0.52151966 0.59577113 0.15008959 0.93000847 0.53999996 0.63322318 0.52406776 0.61721539
		 0.23324792 0.66508371 0.53398693 0.6327737 0.52821326 0.63845569 0.23323418 0.68714428
		 0.5154295 0.62041086 0.21958378 0.87363422 0.22418246 0.86860311 0.1542588 0.7083953
		 0.5100776 0.62240398 0.51251113 0.59608811 0.15615825 0.66713566 0.50704277 0.59640163
		 0.11637813 0.6871565 0.51422143 0.57183653 0.5087359 0.57020885 0.1937203 0.68892097
		 0.076096386 0.70464003 0.22786422 0.6877079 0.73182243 0.6782676 0.039118074 0.72191483
		 0.038511924 0.74163216 0.73413312 0.65618455 0.72868943 0.70535356 0.19396506 0.66754436
		 0.73756754 0.65103292 0.07479763 0.72232485 0.72638947 0.73165005 0.22745018 0.66658872
		 0.15529208 0.68816316 0.72616512 0.75345331 0.95459479 0.73654425 0.9583317 0.74952221
		 0.92088681 0.75182867 0.92059737 0.73684764 0.9633919 0.74572182 0.9618789 0.73704803
		 0.88092512 0.74976325 0.8828004 0.73472452 0.84217203 0.74694633 0.84499198 0.73231494
		 0.80290163 0.74396741 0.80629671 0.72961044 0.76741439 0.74082577 0.76985675 0.72645056
		 0.762541 0.73712087 0.76372671 0.72936356 0.92524707 0.6255852 0.95955807 0.62676311
		 0.95934719 0.63950115 0.92500651 0.63986933 0.96138144 0.60693467 0.92599106 0.6054486
		 0.96579301 0.62868768 0.96645093 0.63756227 0.88778365 0.62542349 0.88776863 0.63987046
		 0.88739479 0.60565257 0.96103072 0.58437508 0.92550451 0.58458358 0.85055727 0.62567478
		 0.85105085 0.63985407 0.84990084 0.60621691 0.88670206 0.58538836 0.9595601 0.5615977
		 0.92452526 0.56291026 0.8127377 0.62590724 0.81297112 0.63974845 0.81166124 0.60667574
		 0.84880757 0.5863533 0.8858301 0.56438076 0.96516359 0.56125343 0.96654731 0.5843935
		 0.95606118 0.53896207 0.92259902 0.54138792 0.77573991 0.63872641 0.77918923 0.6253463
		 0.774872 0.60850918 0.81022388 0.58743429 0.8478542 0.56589556 0.88474149 0.54346204
		 0.96236163 0.54155016 0.7729336 0.62689233 0.7708807 0.63454199 0.77460623 0.58900416
		 0.80917263 0.56751215 0.84699452 0.54541802 0.76982337 0.60869807 0.76909971 0.58920729
		 0.77349621 0.56922686 0.80854189 0.54759288 0.76836449 0.56963676 0.77344787 0.54973739
		 0.76738852 0.55225569 0.95853513 0.71310818 0.27212787 0.44982743 0.27752674 0.4501344
		 0.92291123 0.71164978 0.36002231 0.30804095 0.96506733 0.71364051 0.24153127 0.75650567
		 0.88436598 0.71019757 0.96009177 0.68753743 0.92435187 0.68711245 0.96715307 0.6876511
		 0.27188456 0.4708032 0.84694445 0.70857608 0.88580489 0.68632084 0.96117097 0.66209221
		 0.92522144 0.66344696 0.9676044 0.66161323 0.23270908 0.84601945 0.80913144 0.70664346
		 0.84861666 0.68517137 0.88686371 0.6632458 0.115316 0.94740075 0.23038217 0.82248098
		 0.27734089 0.47069657 0.77359176 0.70413566 0.81106228 0.68383658 0.84990519 0.66261363
		 0.48175704 0.34550563 0.77579415 0.68264592 0.81211686 0.66175008 0.046870172 0.90508229
		 0.7768482 0.66117984 0.24273239 0.73467207 0.08076337 0.96494991 0.76978987 0.64196169
		 0.77032232 0.66102308 0.75922853 0.64319909 0.2731607 0.49178195 0.2793023 0.51369137
		 0.76908451 0.68243402 0.75809675 0.68202949 0.75963569 0.66079986 0.32308996 0.31028882
		 0.029548578 0.64913529 0.75636125 0.70329756 0.76704812 0.70380557 0.025779903 0.92349035
		 0.76434183 0.72282565 0.7539041 0.7208842 0.27853358 0.49122912 0.96670473 0.60776317
		 0.20975754 0.79862338 0.17899862 0.80095947 0.036076576 0.90139443 0.97825718 0.58447289
		 0.97740024 0.62970072 0.97834116 0.60840809 0.28249514 0.50897306 0.48226213 0.41422606
		 0.28972888 0.31157687 0.97677791 0.56066471 0.23532361 0.82220262 0.97382563 0.53939795
		 0.21219704 0.77227205 0.94687444 0.40619266 0.94643003 0.42063215 0.91739321 0.42014655
		 0.91731369 0.40598422 0.88447994 0.42001903 0.88532662 0.40559801 0.85188156 0.41972995
		 0.85375941 0.40540043 0.81979889 0.41961205 0.8222726 0.40523824 0.79121584 0.41947618
		 0.7932108 0.40542531 0.7855382 0.41616458 0.78657842 0.40871823 0.9079479 0.50407928
		 0.9367581 0.50541508 0.93265402 0.51966357 0.90405095 0.51849937 0.93703496 0.4842191
		 0.90837461 0.4829309 0.87606782 0.50203085 0.87293768 0.51662523 0.87687325 0.48131934
		 0.93879873 0.4628056 0.90998763 0.46184987 0.84449762 0.49997151 0.8420769 0.51434511
		 0.87837362 0.46075937 0.94163054 0.44155809 0.91271079 0.44090152 0.81373906 0.49757081
		 0.81064618 0.5117209 0.84560251 0.47958213 0.84678835 0.45967725 0.88071668 0.4403196
		 0.19383667 0.60220069 0.22774594 0.60200781 0.78124487 0.50775695 0.78566265 0.4946208
		 0.81386596 0.47793439 0.81483895 0.45874429 0.84885788 0.43980712 0.23348849 0.57565123
		 0.77866375 0.49616772 0.77599841 0.50368083 0.78408086 0.477606 0.78509283 0.45830423
		 0.81681639 0.43942505 0.23366199 0.55101365 0.77848172 0.47831431 0.77932996 0.45839411;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.78720731 0.43896642 0.1938986 0.55573982
		 0.78147972 0.43864459 0.1936916 0.57788819 0.78447157 0.42200875 0.94272614 0.38163829
		 0.21680555 0.79924923 0.24316849 0.6875487 0.9137696 0.38161612 0.95364213 0.40233299
		 0.95059907 0.38110676 0.48220158 0.39428851 0.88208878 0.38151366 0.9413107 0.35704577
		 0.91223872 0.35712627 0.94937086 0.35706192 0.24414919 0.66612554 0.85067058 0.38164741
		 0.88051409 0.35750535 0.94134378 0.33246815 0.91217232 0.33255559 0.94923854 0.33303827
		 0.48227406 0.36982104 0.81906676 0.38189581 0.84896684 0.35819459 0.88021231 0.33347195
		 0.94524074 0.30815509 0.91491491 0.30810571 0.95219654 0.31186485 0.4815402 0.3257136
		 0.7898578 0.382523 0.81723845 0.35904491 0.84841657 0.33478567 0.88147104 0.30944946
		 0.78768051 0.35973004 0.8165257 0.33621186 0.78710651 0.33704108 0.84850478 0.31127188
		 0.22708111 0.65286142 0.23338871 0.62919444 0.81590319 0.31312078 0.15605174 0.60288519
		 0.11532766 0.56020981 0.116436 0.58113545 0.78628379 0.31439757 0.11780518 0.62763977
		 0.15656625 0.65198702 0.23369883 0.65528542 0.076249778 0.56289858 0.077936053 0.58335477
		 0.11737037 0.60393959 0.15637003 0.6273461 0.19402169 0.65222979 0.76543164 0.49715585
		 0.76440597 0.47884947 0.19397579 0.62722015 0.22755431 0.62911135 0.75861561 0.50045526
		 0.75638771 0.47885811 0.76486611 0.45826688 0.23380451 0.60199744 0.75663126 0.45812386
		 0.15504573 0.55780786 0.76738447 0.43777359 0.75938714 0.43742663 0.77139449 0.41959769
		 0.15554027 0.57930601 0.76513678 0.41600329 0.96408027 0.33404112 0.22751991 0.57541698
		 0.2266079 0.5522812 0.96637917 0.31481975 0.96402669 0.35703519 0.24336956 0.7114622
		 0.97321302 0.31253257 0.94800985 0.30720797 0.96981657 0.33457741 0.96536058 0.37999824
		 0.23802957 0.84476799 0.96971053 0.35700512 0.97107446 0.37942913 0.030525498 0.63055545
		 0.96776432 0.39925522 0.97461653 0.40149772 0.94955176 0.40702835 0.71037704 0.30287427
		 0.72427648 0.51422089 0.67949933 0.31853968 0.67735547 0.30406582 0.71874839 0.51098591
		 0.70669144 0.51260406 0.64254159 0.32002833 0.6406247 0.30564323 0.60576397 0.32163998
		 0.60334557 0.30758348 0.57070369 0.32434833 0.56453449 0.31111524 0.54398936 0.32895446
		 0.5276112 0.3199099 0.53732532 0.3299689 0.52892584 0.32524186 0.70011228 0.49198052
		 0.70076627 0.51674896 0.66589206 0.51507396 0.66683692 0.4906033 0.71248275 0.31730795
		 0.70721513 0.4918482 0.62745839 0.5116654 0.63009113 0.48774964 0.70355397 0.46785679
		 0.67036766 0.46616051 0.71069592 0.46820393 0.58971888 0.50743479 0.59341031 0.48414177
		 0.63382238 0.46387655 0.70794708 0.44368681 0.67516953 0.44177976 0.71489257 0.44451013
		 0.55255395 0.50296456 0.55667549 0.48022282 0.59715658 0.4610061 0.63870686 0.44019175
		 0.715617 0.4190369 0.68175596 0.41756076 0.72018176 0.42387614 0.51881367 0.49937972
		 0.52282327 0.47703046 0.56032258 0.457744 0.60188669 0.43820977 0.64474016 0.4164837
		 0.52664822 0.45478868 0.56431276 0.43533105 0.60782725 0.41544944 0.53054065 0.43233973
		 0.5699442 0.4138802 0.5329656 0.40903986 0.028354818 0.58489209 0.71300143 0.33877236
		 0.68012553 0.33970135 0.037387721 0.58494359 0.71421736 0.36051184 0.68125743 0.36089879
		 0.64353651 0.34064826 0.18430337 0.90960246 0.71520263 0.382375 0.68228918 0.38211507
		 0.64468986 0.36116523 0.60711652 0.34200835 0.034802489 0.56368214 0.71625608 0.40422949
		 0.6834628 0.40327048 0.64566511 0.38164634 0.60792941 0.36169663 0.57043487 0.34409487
		 0.032942705 0.55507618 0.29231787 0.41668117 0.028946096 0.60750312 0.64630896 0.40217346
		 0.60918528 0.38125417 0.57025057 0.36276048 0.53571552 0.34616274 0.036613159 0.55046159
		 0.038465969 0.60724777 0.60969931 0.40140849 0.57225376 0.38118857 0.53468853 0.36413407
		 0.19342493 0.53917593 0.5303368 0.34532744 0.029811412 0.90001959 0.57481402 0.40047723
		 0.53719097 0.38207573 0.52924174 0.36434472 0.21003869 0.99111879 0.54764324 0.39863151
		 0.53197545 0.38330176 0.025706584 0.56676382 0.54088467 0.39820132 0.53341824 0.403611
		 0.21750164 0.82292771 0.52099031 0.38620555 0.21674797 0.91031456 0.23509501 0.5417133
		 0.039750986 0.6610685 0.51440555 0.38741219 0.51750749 0.36473078 0.23466405 0.79961509
		 0.51071399 0.36492735 0.22911206 0.79876989 0.51893348 0.34319735 0.51220185 0.34238115
		 0.038848333 0.65240067 0.2300431 0.53784806 0.24169675 0.86873788 0.72710019 0.4460654
		 0.057092398 0.89001459 0.04888007 0.87871295 0.73150951 0.42700073 0.72300047 0.46887019
		 0.073843002 0.54694599 0.73785681 0.42449734 0.15377562 0.54168087 0.73253399 0.44686881
		 0.71950549 0.49171272 0.11356431 0.54421777 0.72843939 0.46918848 0.7250753 0.49156138
		 0.23490503 0.77550846 0.037990741 0.68166465 0.044650726 0.66391999 0.44845128 0.78772855
		 0.45698941 0.81093395 0.42423436 0.81228888 0.42175972 0.78702581 0.45562667 0.79006827
		 0.46367934 0.80974364 0.46082398 0.83473545 0.4277949 0.83697283 0.38835183 0.81385511
		 0.38643405 0.78908914 0.46766666 0.83383274 0.46390381 0.85939044 0.43128943 0.86154425
		 0.39166558 0.83839661 0.35297063 0.81640893 0.349702 0.7923063 0.47057602 0.85842037
		 0.46960735 0.8849954 0.43526748 0.8862769 0.39473709 0.86254352 0.35607731 0.84020215
		 0.31737855 0.82040238 0.31338367 0.79684031 0.47418615 0.87982517 0.39774168 0.88670462
		 0.35879415 0.86342961 0.31927648 0.84277552 0.28287145 0.82410419 0.28405023 0.80366445
		 0.36098132 0.88688487 0.32196918 0.86461282 0.28496215 0.84526622 0.32402417 0.88676172
		 0.28696921 0.86675084 0.28935817 0.88661593 0.46069974 0.96822309 0.45831889 0.99035257
		 0.42541787 0.98743033 0.42775944 0.9659524 0.3884097 0.98427445 0.39058423 0.96349221;
	setAttr ".uvst[0].uvsp[1250:1370]" 0.46311858 0.94578934 0.43013644 0.94415867
		 0.35160258 0.98112267 0.35358688 0.96093422 0.39286119 0.94256872 0.46523765 0.92335331
		 0.43245521 0.92239726 0.31450966 0.97792131 0.31619528 0.9582544 0.35565814 0.94088036
		 0.39527231 0.9217779 0.46801016 0.90053308 0.43544456 0.90090597 0.26852667 0.79675645
		 0.28217825 0.95597368 0.31800905 0.93875581 0.35818961 0.92102569 0.39760002 0.90129608
		 0.031851023 0.94679791 0.049413174 0.88467795 0.27528152 0.9725737 0.27702406 0.95554799
		 0.2843284 0.93616456 0.32055512 0.91968507 0.36019433 0.90123338 0.04097873 0.96504921
		 0.28070936 0.97576135 0.27733395 0.80568492 0.27912077 0.93580145 0.28526375 0.91631651
		 0.32287785 0.90071076 0.28041449 0.91561317 0.28878617 0.89909017 0.17762306 0.98919851
		 0.28319216 0.89677072 0.063731372 0.88913161 0.282621 0.88824564 0.42700729 0.77221382
		 0.46771991 0.78246868 0.22913322 0.77905422 0.4658221 0.78769666 0.18688619 0.8879326
		 0.38519698 0.77413327 0.088589996 0.88882166 0.34546795 0.77819049 0.051872909 0.90657657
		 0.30510855 0.78347874 0.21741775 0.77693498 0.025354594 0.94717962 0.15182567 0.90941018
		 0.055823594 0.96185392 0.27624318 0.82389653 0.26568493 0.82272851 0.26885045 0.80212945
		 0.043624192 0.92455333 0.15327102 0.88838547 0.27824333 0.84545875 0.26733753 0.84576499
		 0.11888254 0.90919179 0.27052662 0.8682642 0.28072682 0.86756599 0.082858384 0.92692846
		 0.14834297 0.9497332 0.2719996 0.88620239 0.048247069 0.94333225 0.47492874 0.80753112
		 0.12010217 0.88864708 0.085176706 0.90878302 0.21943888 0.88850629 0.47880137 0.83206993
		 0.049204439 0.92491812 0.14656064 0.9701581 0.48014969 0.806696 0.48175639 0.85623467
		 0.042944968 0.94430667 0.48398653 0.83116567 0.48710063 0.85533011 0.049418032 0.96015984
		 0.48474687 0.87643152 0.49078184 0.87904352 0.032559574 0.9238537 0.46681488 0.32292667
		 0.46741903 0.34530917 0.43407452 0.3446331 0.43462729 0.32014704 0.47306728 0.32292882
		 0.47293532 0.34533235 0.46787 0.36969891 0.43423569 0.36876044 0.39737892 0.34474266
		 0.39796937 0.32050121 0.47358871 0.36977878 0.46817732 0.3940281 0.43446398 0.3926135
		 0.39737654 0.36873513 0.36077476 0.34599757 0.36102712 0.32229432 0.47362673 0.39445615
		 0.46783531 0.41583711 0.43478942 0.41633204 0.39765632 0.39261377 0.36075354 0.36946547
		 0.32403576 0.34759471 0.32422817 0.32448706 0.47400606 0.41748515 0.39844513 0.4165968
		 0.36118114 0.39292848 0.32404745 0.37044352 0.29025614 0.34856144 0.29055226 0.32577363
		 0.36211073 0.41665339 0.32461536 0.39333618 0.29034781 0.37111124 0.32574296 0.41664302
		 0.29091763 0.39372298 0.27700984 0.42766747 0.46914482 0.49208355 0.46889329 0.51391649
		 0.43627167 0.51333749 0.43619299 0.49227047 0.47411513 0.51120961;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1106 ".vt";
	setAttr ".vt[0:165]"  0.24831274 0.024673097 -0.94860893 0.17232969 0.032213237 -0.98565811
		 0.10075584 0.038336903 -0.99429762 0.036070198 0.039891012 -0.99813581 0.25265542 0.0462607 -0.83449376
		 0.17742011 0.055066794 -0.87358689 0.10320273 0.06135536 -0.88552463 0.0360699 0.064563125 -0.89097154
		 0.27555099 0.067183577 -0.68241465 0.1927124 0.094043538 -0.70994729 0.11023381 0.1079196 -0.73059654
		 0.036069363 0.11146709 -0.73707533 0.31598279 0.086684175 -0.54842836 0.21704558 0.13052556 -0.55516446
		 0.12613943 0.15286848 -0.55990553 0.03606949 0.1596943 -0.56263661 0.38339004 0.10414439 -0.42166144
		 0.26527271 0.15665804 -0.42558771 0.14545926 0.18498142 -0.4238466 0.036069483 0.19267513 -0.42409337
		 0.4381561 0.11048117 -0.28629273 0.30613396 0.18070987 -0.29036659 0.16834345 0.2154603 -0.29723573
		 0.036069244 0.22524458 -0.29825509 0.46519306 0.089713171 -0.12277836 0.33804986 0.19136655 -0.12323648
		 0.18751457 0.25311705 -0.12556726 0.036069244 0.26982653 -0.12600201 0.26678231 -0.027591597 -0.93732983
		 0.18098983 -0.025039531 -0.9831143 0.27657399 -0.012367979 -0.81000322 0.099175364 -0.025039516 -0.99810201
		 0.036069423 -0.025039524 -1.0027475357 0.30431494 0.0032537971 -0.66401279 0.34713826 0.021782473 -0.53163117
		 0.41704831 0.03924264 -0.40486377 0.47547665 0.045579538 -0.26949501 0.36019501 0.11551496 -0.14874667
		 0.50986725 0.025359452 -0.11575216 0.19952652 0.17701946 -0.15202737 0.036069244 0.19335854 -0.15389204
		 0.26678231 -0.081148744 -0.92575908 0.18098983 -0.083343953 -0.96843594 0.27657399 -0.068574548 -0.80019903
		 0.099175364 -0.083343953 -0.98153859 0.036069363 -0.083343953 -0.98820549 0.30431494 -0.052935094 -0.64948094
		 0.34710142 -0.034403801 -0.51708907 0.41724679 -0.016943634 -0.39032167 0.47540662 -0.010606714 -0.25495291
		 0.36013243 0.058670685 -0.13674742 0.51294333 -0.030656487 -0.10097092 0.19893673 0.12008636 -0.14037138
		 0.036067575 0.13667275 -0.14128095 0.24531212 -0.12053996 -0.92360824 0.18098983 -0.11962026 -0.95070249
		 0.1769788 -0.099168748 -0.83043396 0.25153974 -0.11038297 -0.80193198 0.099743634 -0.11962026 -0.96305257
		 0.10289934 -0.094355129 -0.84679699 0.036069304 -0.11962026 -0.97178864 0.036069244 -0.092031494 -0.85054225
		 0.19337919 -0.063355505 -0.67138517 0.27630851 -0.089579046 -0.64255333 0.11054906 -0.052705199 -0.69061172
		 0.036069363 -0.050012007 -0.69547963 0.21776703 -0.032414779 -0.5327667 0.31692019 -0.070187226 -0.50782728
		 0.12195328 -0.012796648 -0.54624313 0.036069244 -0.0083725378 -0.55417728 0.26471332 1.0960473e-005 -0.38411993
		 0.3840256 -0.052727044 -0.38106084 0.14572111 0.025367379 -0.39384264 0.036069244 0.032688379 -0.39552909
		 0.30400434 0.023838505 -0.24976599 0.43900135 -0.046390116 -0.24569166 0.1677511 0.058912575 -0.25538456
		 0.036069244 0.067740783 -0.26009697 0.3373107 0.034497052 -0.082629263 0.45366386 -0.062240154 -0.082646787
		 0.18640354 0.096245676 -0.084965289 0.036067456 0.11295514 -0.085400641 -0.1731734 -0.12053996 -0.92360824
		 -0.17940101 -0.11038297 -0.80193198 -0.10484013 -0.099168748 -0.83043396 -0.10885105 -0.11962026 -0.95070249
		 -0.030760618 -0.094355129 -0.84679699 -0.02760491 -0.11962026 -0.96305257 -0.20416966 -0.089579046 -0.64255333
		 -0.12124047 -0.063355505 -0.67138517 -0.038410336 -0.052705199 -0.69061172 -0.24478146 -0.070187226 -0.50782728
		 -0.1456283 -0.032414779 -0.5327667 -0.049814552 -0.012796648 -0.54624313 -0.31188688 -0.052727044 -0.38106084
		 -0.19257459 1.0960473e-005 -0.38411993 -0.073582381 0.025367379 -0.39384264 -0.36686251 -0.046390109 -0.24569166
		 -0.23186561 0.023838505 -0.24976599 -0.095612377 0.058912575 -0.25538456 -0.38152513 -0.062240154 -0.082646787
		 -0.26517186 0.034497052 -0.082629263 -0.11426482 0.096245676 -0.084965289 -0.17617401 0.024673097 -0.94860893
		 -0.10019097 0.032213237 -0.98565811 -0.10528132 0.055066794 -0.87358689 -0.18051669 0.0462607 -0.83449376
		 -0.028617116 0.038336903 -0.99429762 -0.031064006 0.06135536 -0.88552463 -0.12057307 0.094043538 -0.70994729
		 -0.20341226 0.067183577 -0.68241465 -0.038095087 0.1079196 -0.73059654 -0.14490685 0.13052556 -0.55516446
		 -0.24384412 0.086684175 -0.54842836 -0.054000705 0.15286848 -0.55990553 -0.19313392 0.15665804 -0.42558771
		 -0.31125125 0.10414439 -0.42166144 -0.073320538 0.18498142 -0.4238466 -0.23399529 0.18070987 -0.29036659
		 -0.36601743 0.11048117 -0.28629273 -0.096204728 0.2154603 -0.29723573 -0.26591119 0.19136655 -0.12323648
		 -0.39305434 0.089713171 -0.12277836 -0.11537585 0.25311705 -0.12556726 -0.19464359 -0.027591597 -0.93732983
		 -0.10885116 -0.025039531 -0.9831143 -0.2044352 -0.012367979 -0.81000322 -0.027036639 -0.025039516 -0.99810201
		 -0.23217627 0.0032537971 -0.66401279 -0.27499947 0.021782473 -0.53163117 -0.34490952 0.03924264 -0.40486377
		 -0.40333787 0.045579538 -0.26949501 -0.28805622 0.11551496 -0.14874667 -0.43772849 0.025359452 -0.11575216
		 -0.12738773 0.17701946 -0.15202737 -0.19464359 -0.081148744 -0.92575908 -0.10885105 -0.083343953 -0.96843594
		 -0.2044352 -0.068574548 -0.80019903 -0.027036639 -0.083343953 -0.98153859 -0.23217615 -0.052935094 -0.64948094
		 -0.27496275 -0.034403801 -0.51708907 -0.34510812 -0.016943634 -0.39032167 -0.40326795 -0.010606714 -0.25495291
		 -0.28799376 0.058670685 -0.13674742 -0.44080457 -0.030656487 -0.10097092 -0.126798 0.12008636 -0.14037138
		 -0.43512282 0.074497379 0.3335551 -0.39417487 0.11595694 0.33483407 -0.34405708 0.14571083 0.33526853
		 -0.28804177 0.16181676 0.33483407 -0.22978678 0.16322294 0.3335551 -0.23331603 0.12983274 0.33184072
		 -0.28298503 0.12863386 0.33293086 -0.3307445 0.11490165 0.33330232 -0.37347552 0.089532971 0.33293086
		 -0.40838876 0.054184075 0.33184072 -0.43657002 0.07784652 0.24011517 -0.39563519 0.11933649 0.24054155
		 -0.34552193 0.14910093 0.240686 -0.28950232 0.16519642 0.24054155 -0.23123375 0.16657209 0.24011517
		 -0.23474535 0.13314089 0.23954254 -0.2844258 0.13196802 0.23990747 -0.33218884 0.11824472 0.24003071
		 -0.37491605 0.092867188 0.23990747 -0.40981808 0.057492234 0.23954254;
	setAttr ".vt[166:331]" -0.43657002 0.07784652 0.1466046 -0.39563519 0.11933649 0.14617825
		 -0.34552193 0.14910093 0.14603189 -0.28950232 0.16519642 0.14617825 -0.23123375 0.16657209 0.1466046
		 -0.23474535 0.13314089 0.14717624 -0.2844258 0.13196802 0.14681226 -0.33218884 0.11824472 0.14668813
		 -0.37491605 0.092867188 0.14681226 -0.40981808 0.057492234 0.14717624 -0.43512282 0.074497379 0.053164601
		 -0.39417487 0.11595694 0.051886559 -0.34405708 0.14571083 0.051451176 -0.28804177 0.16181675 0.051886559
		 -0.22978678 0.16322294 0.053164601 -0.23331603 0.12983274 0.05487895 -0.28298503 0.12863374 0.05378893
		 -0.3307445 0.11490164 0.053417325 -0.37347552 0.089532971 0.05378893 -0.40838876 0.054184072 0.05487895
		 -0.23070249 0.1237843 0.41608691 -0.23753975 0.13087735 0.42488927 -0.28034908 0.12253333 0.41790172
		 -0.28113815 0.12877789 0.42639354 -0.40577522 0.048135608 0.41608691 -0.40625456 0.057975858 0.42488927
		 -0.43247399 0.068367206 0.41894007 -0.42036021 0.068664454 0.42639729 -0.22713771 0.15709272 0.41894007
		 -0.23565638 0.14847472 0.42639729 -0.28536671 0.15562546 0.42107016 -0.2837888 0.14626081 0.42806762
		 -0.39149958 0.10976552 0.42107016 -0.38576114 0.10219873 0.42806762 -0.37484628 0.088286556 0.42639354
		 -0.37083957 0.083432503 0.41790172 -0.34137273 0.13949876 0.42179468 -0.33759952 0.13076641 0.42876413
		 -0.33058763 0.114539 0.42703372 -0.32810068 0.10878345 0.41851977 -0.23716705 0.13047443 -0.038119346
		 -0.23068962 0.12375464 -0.029779762 -0.2803362 0.12250366 -0.031594574 -0.28108376 0.12841952 -0.039639607
		 -0.22712508 0.15706317 -0.032632977 -0.23519546 0.14889859 -0.039697289 -0.40621647 0.057428278 -0.038119346
		 -0.40576234 0.048106 -0.029779762 -0.42098492 0.068619177 -0.039697289 -0.43246111 0.068337545 -0.032632977
		 -0.28385904 0.14672406 -0.041391075 -0.28535384 0.15559578 -0.034762055 -0.38605043 0.10256734 -0.041391075
		 -0.3914867 0.10973591 -0.034762055 -0.37082669 0.083402894 -0.031594574 -0.37462267 0.088001497 -0.039639607
		 -0.33778524 0.13119633 -0.042089999 -0.34135985 0.13946909 -0.035488546 -0.32808781 0.10875385 -0.032213598
		 -0.3304441 0.11420642 -0.040278107 -0.20937845 0.19612113 0.35235202 -0.15948063 0.22621849 0.35369584
		 -0.10357857 0.24271286 0.35415319 -0.045322284 0.24452689 0.35369584 0.011484779 0.23154238 0.35235202
		 -0.00015917793 0.20004988 0.35054991 -0.048593715 0.21112061 0.35169536 -0.098263927 0.20957384 0.35208589
		 -0.14592668 0.19551063 0.35169536 -0.18847027 0.16984916 0.35054991 -0.20995614 0.19972348 0.25411606
		 -0.16006356 0.22985375 0.25456342 -0.10416342 0.24635902 0.25471646 -0.045905277 0.24816191 0.25456342
		 0.010907046 0.23514462 0.25411606 -0.00072984956 0.20360801 0.25351387 -0.04916887 0.2147069 0.25389692
		 -0.098840602 0.21316977 0.25402683 -0.14650187 0.19909704 0.25389692 -0.18904105 0.17340741 0.25351387
		 -0.20995614 0.19972348 0.15580469 -0.16006356 0.22985375 0.15535641 -0.10416342 0.24635902 0.15520337
		 -0.045905277 0.24816191 0.15535641 0.010907046 0.23514462 0.15580469 -0.00072984956 0.20360801 0.1564059
		 -0.04916887 0.2147069 0.1560238 -0.098840602 0.21316977 0.155893 -0.14650187 0.19909704 0.1560238
		 -0.18904105 0.17340741 0.1564059 -0.20937845 0.19612113 0.057568669 -0.15948063 0.22621849 0.056224823
		 -0.10357857 0.24271286 0.055767506 -0.045322284 0.24452689 0.056224823 0.011484779 0.23154238 0.057568669
		 -0.00015917793 0.20004988 0.059370756 -0.048593715 0.21112061 0.058224469 -0.098263927 0.20957384 0.057834744
		 -0.14592668 0.19551063 0.058224469 -0.18847027 0.16984916 0.059370756 0.00088419765 0.19354391 0.43912005
		 -0.0039955899 0.20210251 0.44837445 -0.047541335 0.20455873 0.44102737 -0.046768062 0.21080509 0.44995597
		 -0.18742695 0.16334331 0.43912005 -0.18546823 0.17299852 0.44837445 -0.20832095 0.1895273 0.44211912
		 -0.19650674 0.18683198 0.44995973 0.012542263 0.22494844 0.44211912 0.0021635629 0.21869376 0.44995973
		 -0.044254258 0.23786736 0.44435889 -0.045031458 0.22840257 0.45171589 -0.15841252 0.21955907 0.44435889
		 -0.1547147 0.21081205 0.45171589 -0.14756231 0.19464031 0.44995597 -0.1448743 0.18894887 0.44102737
		 -0.10250694 0.23603074 0.44512156 -0.10100061 0.22663797 0.45244768 -0.098201342 0.20918366 0.45062953
		 -0.097208507 0.20299283 0.44167784 -0.0037336498 0.20162009 -0.03840068 0.00088931434 0.1935121 -0.02963385
		 -0.047536239 0.20452681 -0.031541169 -0.046803642 0.21044457 -0.039999142 0.012547381 0.22491662 -0.032632977
		 0.0027149245 0.21899126 -0.040060639 -0.18556604 0.17245851 -0.03840068 -0.18742183 0.1633115 -0.02963385
		 -0.19712335 0.18694185 -0.040060639 -0.20831582 0.18949549 -0.032632977 -0.044985425 0.22886904 -0.041841209
		 -0.044249162 0.23783529 -0.034871727 -0.1549041 0.2112406 -0.041841209 -0.15840751 0.21952701 -0.034871727
		 -0.14486918 0.18891707 -0.031541169 -0.14741561 0.19430888 -0.039999142 -0.10107476 0.22710069 -0.042575419
		 -0.10250188 0.23599893 -0.035634458 -0.097203381 0.20296113 -0.032191664 -0.098144002 0.20882605 -0.040671021
		 0.065599948 0.23426035 0.3335551 0.1228127 0.24532059 0.33483407 0.18097472 0.24154222 0.33526853
		 0.23628835 0.22317103 0.33483407 0.28514227 0.19140735 0.3335551 0.26335946 0.16585577 0.33184072
		 0.22170611 0.19293797 0.33293086 0.17454493 0.20860133 0.33330232 0.12495521 0.21182287 0.33293086
		 0.076174699 0.20239282 0.33184072 0.066298872 0.23784113 0.24011517 0.12351806 0.24893391 0.24054155
		 0.18168223 0.24516645 0.240686 0.2369936 0.22678459 0.24054155 0.28584108 0.19498813 0.24011517
		 0.26404992 0.16939279 0.23954254 0.22240181 0.19650292 0.23990747 0.17524266 0.2121758 0.24003071
		 0.12565103 0.21538794 0.23990747 0.076865099 0.20592973 0.23954254 0.066298872 0.23784113 0.1466046
		 0.12351806 0.24893391 0.14617825 0.18168223 0.24516645 0.14603189 0.2369936 0.22678459 0.14617825
		 0.28584108 0.19498813 0.1466046 0.26404992 0.16939279 0.14717624;
	setAttr ".vt[332:497]" 0.22240181 0.19650292 0.14681226 0.17524266 0.2121758 0.14668813
		 0.12565103 0.21538794 0.14681226 0.076865099 0.20592973 0.14717624 0.065599948 0.23426035 0.053164601
		 0.1228127 0.24532059 0.051886559 0.18097472 0.24154222 0.051451176 0.23628835 0.22317103 0.051886559
		 0.28514227 0.19140735 0.053164601 0.26335946 0.16585577 0.05487895 0.22170611 0.19293797 0.05378893
		 0.17454493 0.20860133 0.053417325 0.12495521 0.21182287 0.05378893 0.076174699 0.20239282 0.05487895
		 0.26209727 0.15938878 0.41608691 0.26046538 0.16910455 0.42488927 0.22043295 0.18641543 0.41790172
		 0.22331122 0.19201294 0.42639354 0.074912392 0.19592583 0.41608691 0.080078162 0.20431492 0.42488927
		 0.064320475 0.22770599 0.41894007 0.074482314 0.22110453 0.42639729 0.28386292 0.18485299 0.41894007
		 0.27196443 0.18255773 0.42639729 0.23499613 0.21655142 0.42107016 0.23100507 0.20793422 0.42806762
		 0.12152059 0.23870087 0.42107016 0.12197804 0.22921534 0.42806762 0.12311991 0.21156946 0.42639354
		 0.12368205 0.20530045 0.41790172 0.1796782 0.23490016 0.42179468 0.17785585 0.22556366 0.42876413
		 0.17446923 0.20821354 0.42703372 0.17326808 0.20205978 0.41851977 0.26054531 0.16856156 -0.038119346
		 0.26209107 0.15935709 -0.029779762 0.22042675 0.18638375 -0.031594574 0.22315367 0.19168663 -0.039639607
		 0.28385672 0.18482129 -0.032632977 0.27258462 0.18264674 -0.039697289 0.079800107 0.20384155 -0.038119346
		 0.074906252 0.19589414 -0.029779762 0.073941283 0.22142051 -0.039697289 0.064314395 0.22767417 -0.032632977
		 0.23120899 0.20835622 -0.041391075 0.23498993 0.21651959 -0.034762055 0.1219478 0.22968324 -0.041391075
		 0.12151439 0.23866904 -0.034762055 0.12367585 0.20526877 -0.031594574 0.12314335 0.21120787 -0.039639607
		 0.17794561 0.22602351 -0.042089999 0.179672 0.23486859 -0.035488546 0.17326188 0.2020282 -0.032213598
		 0.17439985 0.20785807 -0.040278107 0.32249513 0.16281214 0.28151691 0.37990731 0.15283731 0.28261754
		 0.43293786 0.12865329 0.28299192 0.4781242 0.091839172 0.28261754 0.51251638 0.04479859 0.28151691
		 0.48308054 0.028646253 0.2800419 0.45375746 0.068753779 0.28098041 0.41523075 0.10014204 0.28129941
		 0.37001637 0.12076163 0.28098041 0.32106599 0.12926638 0.2800419 0.32442012 0.16591144 0.20110416
		 0.38184971 0.15596485 0.20147142 0.43488622 0.13179055 0.20159584 0.48006684 0.094966836 0.20147142
		 0.51444089 0.047897898 0.20110416 0.48498216 0.031707712 0.20061165 0.45567387 0.071839325 0.20092508
		 0.41715217 0.10323574 0.2010321 0.37193254 0.12384712 0.20092508 0.32296714 0.13232777 0.20061165
		 0.32442012 0.16591144 0.12063032 0.38184971 0.15596485 0.12026405 0.43488622 0.13179055 0.12013867
		 0.48006684 0.094966836 0.12026405 0.51444089 0.047897898 0.12063032 0.48498216 0.031707712 0.12112281
		 0.45567387 0.071839325 0.12080938 0.41715217 0.10323574 0.12070337 0.37193254 0.12384712 0.12080938
		 0.32296714 0.13232777 0.12112281 0.32249513 0.16281214 0.040218472 0.37990731 0.15283731 0.039117813
		 0.43293786 0.12865329 0.038743466 0.4781242 0.091839172 0.039117813 0.51251638 0.04479859 0.040218472
		 0.48308054 0.028646253 0.041693449 0.45375746 0.068753779 0.040755063 0.41523075 0.10014204 0.04043591
		 0.37001637 0.12076163 0.040755063 0.32106599 0.12926638 0.041693449 0.47960439 0.023048952 0.35254264
		 0.48152876 0.032711118 0.36011761 0.45025128 0.063108332 0.35410377 0.45492938 0.067319013 0.36141208
		 0.31758961 0.12366903 0.35254264 0.32539746 0.12967715 0.36011761 0.31897202 0.15713909 0.35499811
		 0.32612789 0.14735988 0.36141583 0.50899303 0.039125524 0.35499811 0.49705517 0.041204594 0.36141583
		 0.47456604 0.086109631 0.35683066 0.46777546 0.079471067 0.36285347 0.37634891 0.14710772 0.35683066
		 0.37340844 0.13807793 0.36285347 0.36821049 0.12117628 0.36141208 0.36651018 0.11511613 0.35410377
		 0.42936754 0.12290458 0.35745504 0.42434883 0.11482348 0.36345175 0.41502237 0.099806406 0.36196357
		 0.41171432 0.094480127 0.35463694 0.48141009 0.032175161 -0.038339645 0.47958723 0.023021532 -0.03116259
		 0.45023412 0.063080929 -0.032724679 0.4546662 0.067070015 -0.039647236 0.50897586 0.039098155 -0.033618122
		 0.49766654 0.041067734 -0.039697289 0.32496944 0.12933348 -0.038339645 0.31757268 0.12364163 -0.03116259
		 0.3257342 0.14784716 -0.039697289 0.31895486 0.15711169 -0.033618122 0.46811578 0.079792991 -0.041155517
		 0.47454888 0.086082228 -0.035450608 0.37354639 0.13852568 -0.041155517 0.37633198 0.1470803 -0.035450608
		 0.36649302 0.11508872 -0.032724679 0.36810389 0.12082983 -0.039647236 0.42459583 0.11522134 -0.041756213
		 0.42935038 0.12287706 -0.036075056 0.41169739 0.094452724 -0.033256918 0.41483116 0.099498674 -0.040197998
		 0.068715006 0.1767315 0.74806684 0.11992802 0.18840781 0.7530098 0.17177904 0.18567191 0.75469452
		 0.22085282 0.16870812 0.7530098 0.26391569 0.13862982 0.74806684 0.24403301 0.11345182 0.74143714
		 0.2073313 0.13909423 0.74565345 0.16550982 0.15355378 0.74708927 0.12132034 0.15588295 0.74565345
		 0.077669829 0.14592467 0.74143714 0.068652898 0.19368444 0.67849356 0.12144861 0.20520651 0.68280137
		 0.17500329 0.20219043 0.68426943 0.22576097 0.18484545 0.68280137 0.2703484 0.15431498 0.67849356
		 0.24991436 0.12903759 0.67271578 0.21192724 0.15506254 0.67638892 0.16868949 0.16984363 0.67764133
		 0.12306683 0.17240737 0.67638892 0.078081347 0.16257808 0.67271578 0.067911372 0.20712528 0.60820013
		 0.12228075 0.21846117 0.61186975 0.17753386 0.21515524 0.61311775 0.2299746 0.19744028 0.61186975
		 0.27608985 0.16649041 0.60820013 0.25511375 0.14115617 0.60328335 0.2158383 0.16753601 0.60641074
		 0.17118502 0.18262872 0.60747498 0.12413359 0.185436 0.60641074 0.077820793 0.17576239 0.60328335
		 0.066485152 0.21703485 0.53729552 0.12241966 0.22815324 0.54031664;
	setAttr ".vt[498:663]" 0.17936695 0.22454628 0.54134512 0.23349053 0.20647301 0.54031664
		 0.28113824 0.17513636 0.53729552 0.25962895 0.14978825 0.53324479 0.21906157 0.17649519 0.53582072
		 0.17299271 0.19188961 0.53669852 0.12451628 0.19494975 0.53582072 0.076883301 0.18545876 0.53324479
		 0.23803186 0.096043944 0.80356479 0.23660417 0.10431042 0.81186461 0.20250064 0.12129796 0.80831313
		 0.20489495 0.12567905 0.81579888 0.076684058 0.12753785 0.80356479 0.081115648 0.13466057 0.81186461
		 0.06815514 0.15801026 0.81103182 0.076609716 0.15075959 0.81580931 0.25739416 0.12107231 0.81103182
		 0.24683364 0.1175331 0.81580931 0.21572083 0.15069161 0.81660283 0.21187948 0.14120813 0.82017839
		 0.11790817 0.16978393 0.81660283 0.11790122 0.15955193 0.82017839 0.11853296 0.14253619 0.81579888
		 0.11910432 0.13757634 0.80831313 0.16819108 0.16729014 0.8185004 0.16621292 0.15715599 0.82200319
		 0.16292942 0.14033434 0.81747562 0.1619761 0.13545015 0.80993062 0.26152319 0.1647459 0.46372187
		 0.26260483 0.15446924 0.47011006 0.22104749 0.1814156 0.47213227 0.22410992 0.18783534 0.46541566
		 0.28433228 0.17984706 0.47329009 0.27356601 0.17879657 0.46548212 0.08075285 0.20003089 0.46372187
		 0.075885937 0.19091533 0.47011006 0.07487797 0.21757893 0.46548212 0.065297075 0.22260123 0.47329009
		 0.2321628 0.20446606 0.4673678 0.23558265 0.21145347 0.47565949 0.12289537 0.22579415 0.4673678
		 0.12235419 0.23355487 0.47565949 0.12452639 0.2002558 0.47213227 0.12410291 0.20735598 0.46541566
		 0.17889178 0.22211143 0.46814603 0.18038368 0.22975509 0.47646582 0.17399371 0.19701818 0.4728201
		 0.175354 0.20398721 0.46612769 0.3098565 0.11493614 0.64111131 0.36189047 0.10768703 0.64592934
		 0.40939569 0.08672528 0.6475721 0.44924459 0.053435594 0.64592934 0.47880903 0.010007262 0.64111131
		 0.45126572 -0.0064966939 0.6346485 0.42607081 0.030523181 0.638758 0.39211202 0.058895946 0.64015758
		 0.35162553 0.076757848 0.638758 0.307273 0.082930729 0.6346485 0.31492701 0.12937187 0.58063322
		 0.36837766 0.12140334 0.58490002 0.41737318 0.099570543 0.58635569 0.45866349 0.065330923 0.58490002
		 0.48950085 0.020951748 0.58063322 0.46141762 0.0045681335 0.57491171 0.43515033 0.042390868 0.57855052
		 0.39997935 0.071563318 0.57979053 0.35823852 0.090157256 0.57855052 0.31269076 0.096935838 0.57491171
		 0.31811458 0.14076445 0.51944453 0.37296215 0.13205041 0.52315325 0.42343974 0.10933864 0.52441651
		 0.46617445 0.074160233 0.52315325 0.49830025 0.028859407 0.51944453 0.46970072 0.012632743 0.51447147
		 0.442348 0.051233575 0.5176332 0.40596175 0.0811961 0.51871079 0.36297417 0.10052888 0.5176332
		 0.31624776 0.10793546 0.51447147 0.31940907 0.14910021 0.45763606 0.37563437 0.13961364 0.46078116
		 0.42758608 0.11601493 0.4618535 0.47176963 0.079908326 0.46078116 0.50519782 0.03371489 0.45763606
		 0.47610658 0.017682135 0.45341843 0.44765502 0.0570364 0.45610023 0.41005063 0.087779671 0.45701426
		 0.36582294 0.10785866 0.45610023 0.31793433 0.11591588 0.45341843 0.44027805 -0.019346043 0.68857455
		 0.44196218 -0.010976113 0.69601607 0.41604596 0.016906381 0.69314551 0.41992107 0.02028212 0.69980538
		 0.30062604 0.067385435 0.68857455 0.30738193 0.072605759 0.69601607 0.30349985 0.09894444 0.69576311
		 0.3089003 0.089278713 0.69981581 0.46729216 -0.0027797185 0.69576311 0.45623428 -0.0022239536 0.69981581
		 0.43887192 0.039739326 0.70112622 0.43198025 0.032345101 0.70402277 0.35421175 0.092317805 0.70112622
		 0.35063899 0.082862511 0.70402277 0.34517199 0.066705495 0.69980538 0.34386367 0.06173557 0.69314551
		 0.40033984 0.072143778 0.70295322 0.39495873 0.063479304 0.7057789 0.38589978 0.048893064 0.70141917
		 0.38319302 0.044534892 0.69470388 0.48230165 0.029564708 0.39294779 0.47976506 0.019735977 0.39830792
		 0.45046589 0.0596544 0.4005056 0.45551017 0.064410634 0.39479035 0.50906014 0.035701752 0.40176451
		 0.49853349 0.038399532 0.39486253 0.3258391 0.12673661 0.39294779 0.3181535 0.12010561 0.39830792
		 0.32656264 0.14520304 0.39486253 0.31947803 0.1534428 0.40176451 0.46892652 0.077071503 0.3969132
		 0.47468907 0.082525402 0.40434182 0.37435186 0.13580735 0.3969132 0.37668604 0.14339069 0.40434182
		 0.36692357 0.11153881 0.4005056 0.36895055 0.11816884 0.39479035 0.42538548 0.11247131 0.39775914
		 0.42957854 0.11922292 0.40521872 0.4120121 0.090938181 0.40125352 0.41566014 0.09681198 0.39556438
		 0.28531727 0.042140216 0.85141271 0.3274323 0.03516221 0.85889816 0.36624527 0.017592162 0.86145073
		 0.39920077 -0.0094097257 0.85889816 0.42412534 -0.044067323 0.85141271 0.40234724 -0.056256011 0.84137458
		 0.3811065 -0.02671279 0.84775954 0.3530221 -0.0036992729 0.84993351 0.31994376 0.011272706 0.84775954
		 0.28404579 0.017215818 0.84137458 0.29119483 0.056756899 0.82290846 0.33448979 0.049213082 0.8301326
		 0.37453246 0.030935913 0.8325963 0.40866688 0.0031450558 0.8301326 0.43462142 -0.032318905 0.82290846
		 0.41237921 -0.044442475 0.81322062 0.39027017 -0.014218166 0.81938094 0.36119461 0.0094596371 0.82148021
		 0.32708126 0.02502574 0.81938094 0.2901881 0.031445056 0.81322062 0.29562932 0.069039971 0.79319769
		 0.34008828 0.06091018 0.80015272 0.38135433 0.041920036 0.80252224 0.4166697 0.013348773 0.80015272
		 0.44366616 -0.022899061 0.79319769 0.4209775 -0.034929395 0.78387302 0.39799094 -0.0040431023 0.78980327
		 0.36792183 0.020291582 0.79182214 0.33277917 0.036456987 0.78980327 0.29490358 0.043369472 0.78387302
		 0.29860872 0.078973562 0.76232451 0.34421724 0.070237353 0.76899916 0.38670039 0.05052796 0.77127218
		 0.42319995 0.021184564 0.76899916 0.45124942 -0.015824735 0.76232451 0.42813295 -0.02773349 0.75337857
		 0.40425855 0.00379581 0.7590673 0.37319374 0.028780133 0.76100749;
	setAttr ".vt[664:829]" 0.33702722 0.045550346 0.7590673 0.29818183 0.052973405 0.75337857
		 0.39186883 -0.069149613 0.86600566 0.39282387 -0.062963516 0.87179351 0.37140661 -0.040257007 0.87259841
		 0.37425628 -0.038021207 0.87725747 0.27713346 0.0021072999 0.86600566 0.28225523 0.0057057403 0.87179351
		 0.27862373 0.026633307 0.87637568 0.28304261 0.018663123 0.87727362 0.41319236 -0.056941256 0.87637568
		 0.40408927 -0.056513712 0.87727362 0.38919336 -0.023054302 0.88410962 0.38365328 -0.028932765 0.88334024
		 0.31963819 0.020143181 0.88410962 0.31682479 0.012571365 0.88334024 0.31284386 0.00011930824 0.87725747
		 0.31210297 -0.0034262016 0.87259841 0.35731459 0.0032122079 0.88674533 0.35302424 -0.0036959015 0.88587266
		 0.34610963 -0.014829651 0.87958461 0.3442266 -0.017861798 0.87484533 0.4349696 -0.015158534 0.7245127
		 0.43291914 -0.023179337 0.72509778 0.4083645 0.0088386014 0.73053986 0.4125531 0.012817912 0.72907227
		 0.45622754 -0.011286095 0.73365557 0.44788432 -0.008577697 0.72924936 0.30642301 0.064676017 0.7245127
		 0.30014241 0.059282407 0.72509778 0.30659652 0.079169914 0.72924936 0.30047035 0.085447609 0.73365557
		 0.42310867 0.022467732 0.73433173 0.42742211 0.026270598 0.74003804 0.34540784 0.070724085 0.73433173
		 0.34690446 0.076276273 0.74003804 0.3397274 0.051465765 0.73053986 0.34143752 0.056984611 0.72907227
		 0.38715005 0.051252097 0.7364251 0.39016676 0.056109592 0.74221289 0.3766067 0.034275591 0.73239404
		 0.37964272 0.039164126 0.7309888 0.06791243 0.082852215 1.013339043 0.10974785 0.091214627 1.02098465
		 0.15226579 0.088547513 1.023590565 0.19266567 0.075029701 1.02098465 0.22828546 0.05154866 1.013339043
		 0.2122722 0.032512859 1.0030834675 0.18191421 0.052530915 1.0096037388 0.14748466 0.064053178 1.011825442
		 0.11124931 0.066324174 1.0096037388 0.075591594 0.059191868 1.0030834675 0.069189936 0.10358648 0.97302443
		 0.11233768 0.11188424 0.98030388 0.15625954 0.10900822 0.98278475 0.19803885 0.095156014 0.98030388
		 0.23489913 0.071241364 0.97302443 0.21841653 0.052040726 0.96326411 0.18701261 0.072425947 0.9694702
		 0.1514231 0.084230438 0.97158664 0.11400668 0.086676106 0.9694702 0.077241935 0.079596847 0.96326411
		 0.069947287 0.1216304 0.93149573 0.11440042 0.1298392 0.93839926 0.15972185 0.12674654 0.9407478
		 0.20287964 0.11256875 0.93839926 0.24098273 0.08824566 0.93149573 0.22403827 0.068912655 0.92224354
		 0.19158648 0.089643881 0.928128 0.15483749 0.10172293 0.93013161 0.11624361 0.10435025 0.928128
		 0.078377798 0.097344428 0.92224354 0.070178077 0.13695768 0.88881415 0.1159299 0.14505304 0.89532667
		 0.1626476 0.14173564 0.89754629 0.20718366 0.12724103 0.89532667 0.24653275 0.10253462 0.88881415
		 0.22913307 0.08310239 0.88008565 0.19563086 0.1041584 0.88563704 0.15772271 0.11650416 0.88752764
		 0.1179544 0.11932027 0.88563704 0.078992948 0.1124085 0.88008565 0.20617771 0.012246087 1.038359404
		 0.20478232 0.017898828 1.045261145 0.1767711 0.03189376 1.045182943 0.17855279 0.034542859 1.050915837
		 0.073617399 0.038120806 1.038359404 0.077036008 0.042833924 1.045261145 0.066272467 0.061425701 1.049089909
		 0.073155567 0.055146143 1.050930023 0.22174749 0.031078205 1.049089909 0.21300812 0.02784799 1.050930023
		 0.18725759 0.054122046 1.057092786 0.18409286 0.046286389 1.057208419 0.10689663 0.069807872 1.057092786
		 0.10688223 0.061357334 1.057208419 0.10759939 0.048392415 1.050915837 0.10825425 0.045267731 1.045182943
		 0.14812219 0.067319199 1.059820056 0.14649165 0.058966219 1.05982852 0.14399886 0.04619506 1.05332303
		 0.14340365 0.043145865 1.047508001 0.23202723 0.10224476 0.83946669 0.2328483 0.093454644 0.84138882
		 0.19854364 0.11476438 0.84660202 0.20115367 0.12052 0.84383363 0.25044465 0.11300105 0.84958613
		 0.24178052 0.11306684 0.84400499 0.083509862 0.13123426 0.83946669 0.079443499 0.12339805 0.84138882
		 0.078542285 0.14492969 0.84400499 0.070489474 0.14812678 0.84958613 0.20761344 0.13338239 0.84887183
		 0.21020311 0.13799623 0.85569775 0.11784138 0.15090521 0.84887183 0.1171767 0.15615419 0.85569775
		 0.11924375 0.13024311 0.84660202 0.11898978 0.1365577 0.84383363 0.16378462 0.14756069 0.85087556
		 0.16478813 0.15270142 0.85778105 0.15983009 0.12730077 0.848378 0.16103971 0.13349804 0.84567004
		 -0.1562337 0.022770911 1.077301979 -0.11983845 0.045015484 1.084999084 -0.079004295 0.057155237 1.087622166
		 -0.036421746 0.058393508 1.084999084 0.0051042959 0.048645645 1.077301979 -0.0033734329 0.025286421 1.066979647
		 -0.038767211 0.033599615 1.073543787 -0.075057574 0.032546282 1.075780749 -0.10985734 0.022198454 1.073543787
		 -0.14087656 0.0032342076 1.066979647 -0.16242847 0.044230953 1.033325195 -0.12478116 0.066881239 1.040619969
		 -0.082557924 0.079313487 1.043108463 -0.03856454 0.080708325 1.040619969 0.004277613 0.070966646 1.033325195
		 -0.0045807473 0.047271878 1.023542047 -0.041084707 0.055581495 1.029761553 -0.078562029 0.054397538 1.031883717
		 -0.11452992 0.043802634 1.029761553 -0.14660475 0.024494633 1.023542047 -0.16818459 0.062987417 0.98813063
		 -0.12928364 0.0860181 0.99501508 -0.085672505 0.098734081 0.99735981 -0.040272124 0.10029335 0.99501508
		 0.0038798489 0.090582401 0.98813063 -0.0053636581 0.066585213 0.97889942 -0.04297255 0.074870631 0.98477054
		 -0.081633456 0.073549062 0.98676842 -0.11876868 0.062714741 0.98477054 -0.15190057 0.043084174 0.97889942
		 -0.17349882 0.079010814 0.94178504 -0.13334197 0.10239692 0.94824797 -0.088343389 0.11538777 0.95044851
		 -0.041539259 0.1171198 0.94824797 0.0039168522 0.1074641 0.94178504 -0.0057166442 0.083197877 0.93312329
		 -0.044425562 0.091438293 0.93863082 -0.084267266 0.08997187 0.94050807 -0.12256941 0.07890588 0.93863082
		 -0.15676017 0.058974072 0.93312329 -0.0018864013 0.0027583968 1.10556102 -0.0051205754 0.0074376389 1.11280608
		 -0.036257423 0.011039682 1.11245513 -0.035474975 0.013999134 1.1185199;
	setAttr ".vt[830:995]" -0.13524425 -0.018629014 1.10556102 -0.13363548 -0.013173088 1.11280608
		 -0.15016207 0.00067020906 1.11640215 -0.14151676 -0.002977157 1.118536 0.0062482953 0.02575469 1.11640215
		 -0.00082286075 0.019586787 1.118536 -0.034064174 0.035467312 1.12448895 -0.034316257 0.026904598 1.12487924
		 -0.11490852 0.022501811 1.12448895 -0.11199151 0.014447331 1.12487924 -0.10685527 0.0025514513 1.1185199
		 -0.10518647 -1.4902005e-005 1.11245513 -0.075348325 0.034358963 1.12724483 -0.073982 0.025839731 1.12752795
		 -0.071926117 0.013020486 1.1209538 -0.071456857 0.01009468 1.11480498 -0.009844102 0.10371324 0.88885748
		 -0.0060162768 0.095568344 0.89119351 -0.045567654 0.10378246 0.89633614 -0.045128256 0.11025614 0.89316529
		 0.0037594736 0.12002844 0.89927828 -0.00442148 0.11725955 0.89333284 -0.15925509 0.079751283 0.88885748
		 -0.16034402 0.070817873 0.89119351 -0.16864181 0.09092252 0.89333284 -0.1772784 0.090994298 0.89927828
		 -0.043501072 0.12458594 0.89813483 -0.042636029 0.12966183 0.90530789 -0.13381313 0.11010201 0.89813483
		 -0.13622196 0.1146529 0.90530789 -0.12534475 0.090988085 0.89633614 -0.12778656 0.096999712 0.89316529
		 -0.089532919 0.12280497 0.90011185 -0.090338714 0.12782948 0.90736258 -0.086231835 0.10222152 0.89808732
		 -0.08725924 0.10862765 0.89497501 -0.18867651 0.135438 0.79007047 -0.14462146 0.16403475 0.79507446
		 -0.095002599 0.17932926 0.79678017 -0.043089479 0.18031803 0.79507446 0.0076986402 0.16693178 0.79007047
		 -0.0022930056 0.13645981 0.78335685 -0.045581125 0.14787555 0.78762656 -0.089823432 0.14703554 0.78907955
		 -0.13210967 0.13399839 0.78762656 -0.16965714 0.10961859 0.78335685 -0.19470915 0.15215991 0.71597487
		 -0.14911655 0.18116474 0.72030365 -0.097802229 0.19678608 0.72177935 -0.044176556 0.19799459 0.72030365
		 0.0081997141 0.18470167 0.71597487 -0.002273649 0.15393612 0.71017039 -0.046901345 0.16527449 0.71386069
		 -0.092584319 0.16425045 0.71511883 -0.13629635 0.15093766 0.71386069 -0.17514035 0.12621245 0.71017039
		 -0.20016976 0.16535136 0.64115816 -0.15303692 0.19473149 0.6448068 -0.10002864 0.21066833 0.64604717
		 -0.044695146 0.21210684 0.6448068 0.0092613101 0.19893906 0.64115816 -0.0016997568 0.1679233 0.63626903
		 -0.047660306 0.17915736 0.63937926 -0.094779857 0.17794022 0.64043778 -0.13991678 0.16436158 0.63937926
		 -0.18005948 0.13931879 0.63626903 -0.20505626 0.1749914 0.56573313 -0.15638012 0.20471396 0.56869227
		 -0.10167832 0.22095475 0.56969976 -0.044641174 0.22263409 0.56869227 0.010888182 0.20962372 0.56573313
		 -0.00056690536 0.1784011 0.56176537 -0.047854051 0.18950355 0.5642879 -0.096406646 0.1880841 0.56514853
		 -0.14296815 0.17424953 0.5642879 -0.18441196 0.14891683 0.56176537 -0.0018083323 0.11730301 0.8495605
		 -0.0059845783 0.12449321 0.85828567 -0.043863036 0.12875104 0.85439658 -0.043112744 0.1336135 0.86229241
		 -0.16412687 0.091271043 0.8495605 -0.16240855 0.09940657 0.85828567 -0.18262956 0.1169131 0.85716486
		 -0.17218371 0.11295356 0.86230475 0.0077478811 0.1474451 0.85716486 -0.00093587302 0.14041759 0.86230475
		 -0.041576475 0.16087185 0.86283886 -0.041904733 0.15058334 0.86675394 -0.13997751 0.14509057 0.86283886
		 -0.13644837 0.13542075 0.86675394 -0.12999433 0.11967984 0.86229241 -0.12776119 0.11529577 0.85439658
		 -0.091913827 0.16006963 0.86477268 -0.09026885 0.14981258 0.86861306 -0.087557256 0.1329051 0.86399966
		 -0.08678139 0.12806705 0.85604459 -0.0040749237 0.19392022 0.48774302 0.00049671717 0.18455206 0.49464333
		 -0.047803335 0.19554429 0.49657685 -0.047155231 0.2027173 0.48936337 0.012144633 0.21588784 0.49768507
		 0.0023864619 0.21127419 0.48942697 -0.18593282 0.1647546 0.48774302 -0.18734576 0.15442656 0.49464333
		 -0.19749689 0.17921762 0.48942697 -0.20820844 0.18054849 0.49768507 -0.045328788 0.22111996 0.49123064
		 -0.044513397 0.22877911 0.49995148 -0.15525351 0.20349069 0.49123064 -0.15842302 0.21051076 0.49995148
		 -0.14490533 0.1799715 0.49657685 -0.14776401 0.18658209 0.48936337 -0.1014185 0.21933481 0.49197453
		 -0.10263921 0.22694604 0.50072253 -0.097352691 0.19398299 0.49723512 -0.098491736 0.20108542 0.49004394
		 -0.40627804 0.022311881 0.75121778 -0.37062749 0.060888559 0.75616074 -0.32630539 0.08793591 0.75784546
		 -0.27623335 0.10167614 0.75616074 -0.22370824 0.10120007 0.75121778 -0.22588119 0.069191739 0.74458808
		 -0.27065146 0.069603562 0.74880439 -0.31332517 0.057896197 0.75024021 -0.35109654 0.034843206 0.74880439
		 -0.38147917 0.001957966 0.74458808 -0.41591009 0.036262587 0.6816445 -0.37886694 0.075606346 0.6859504
		 -0.33298111 0.10338572 0.68742037 -0.28130433 0.11776304 0.6859504 -0.22726598 0.11777554 0.6816445
		 -0.2298377 0.085373551 0.67586672 -0.27588469 0.08537446 0.67953986 -0.31990862 0.073131993 0.68079227
		 -0.3589949 0.049462542 0.67953986 -0.39055178 0.015929207 0.67586672 -0.42411846 0.046931833 0.61135107
		 -0.38567194 0.087011591 0.61501974 -0.3382206 0.11551142 0.61626774 -0.28494635 0.1305349 0.61501974
		 -0.22941045 0.13106486 0.61135107 -0.23239741 0.098309666 0.60643429 -0.27970767 0.097875163 0.60956168
		 -0.32507563 0.085089773 0.61062592 -0.36547828 0.06081371 0.60956168 -0.3982181 0.026658699 0.60643429
		 -0.43089539 0.054300964 0.54044646 -0.39103466 0.095085695 0.54346663 -0.34201598 0.12429485 0.54449701
		 -0.28715104 0.13997366 0.54346663 -0.23013227 0.14105061 0.54044646 -0.23355108 0.10798274 0.53639573
		 -0.28211206 0.10708803 0.53897071 -0.32881832 0.093751341 0.53984946 -0.37053952 0.068878591 0.53897071
		 -0.40447158 0.034128144 0.53639573 -0.22099352 0.051439077 0.80671573 -0.2268434 0.057451755 0.81501365
		 -0.26457876 0.052191913 0.81146407 -0.26507959 0.057159394 0.81894982 -0.37190104 -0.013767861 0.80671573
		 -0.37227052 -0.0053871386 0.81501365 -0.39615902 0.0065509006 0.81418276 -0.38508636 0.0053474754 0.81896025
		 -0.21916535 0.083029702 0.81418276 -0.22587745 0.074141517 0.81896025;
	setAttr ".vt[996:1105]" -0.27028483 0.083912537 0.81975377 -0.26809394 0.073917881 0.82332933
		 -0.36176831 0.044382676 0.81975377 -0.35599124 0.035937622 0.82332933 -0.34585303 0.022257149 0.81894982
		 -0.34257871 0.018488169 0.81146407 -0.3188765 0.070743665 0.82165134 -0.31478095 0.06126523 0.82515413
		 -0.30798268 0.045532078 0.82062465 -0.30600882 0.040963918 0.81308156 -0.24044186 0.12139305 0.46687186
		 -0.23374139 0.11352645 0.473261 -0.28325441 0.11226968 0.47528321 -0.28435633 0.11929656 0.4685666
		 -0.23015954 0.14674228 0.47644103 -0.2384479 0.1397907 0.46863306 -0.40951484 0.048336715 0.46687186
		 -0.40837848 0.038066044 0.473261 -0.42427897 0.05949311 0.46863306 -0.43502188 0.058221519 0.47644103
		 -0.28711215 0.13756759 0.47051874 -0.2882399 0.14526489 0.47881043 -0.38930929 0.093408421 0.47051874
		 -0.39414173 0.099504858 0.47881043 -0.37353015 0.073261604 0.47528321 -0.37789232 0.078879781 0.4685666
		 -0.34103203 0.12201759 0.47129697 -0.34412122 0.12916677 0.47961676 -0.33089089 0.098548025 0.47597104
		 -0.33370733 0.10506609 0.46927863 -0.35717431 -0.054832697 1.012473106 -0.32738718 -0.024289846 1.020120621
		 -0.29080367 -0.0024603996 1.022726536 -0.24983469 0.0092204586 1.020120621 -0.20717868 0.0099803358 1.012473106
		 -0.2096307 -0.014773846 1.0022194386 -0.24598897 -0.015416846 1.0087397099 -0.28090453 -0.025369763 1.010961413
		 -0.31208125 -0.043975294 1.0087397099 -0.33746687 -0.070011869 1.0022194386 -0.36783871 -0.03700535 0.9721604
		 -0.33693245 -0.0057741962 0.97943795 -0.2990725 0.016676322 0.98192072 -0.25677678 0.028860927 0.97943795
		 -0.21285215 0.029964104 0.9721604 -0.21559827 0.0048086904 0.96239817 -0.25302678 0.003877569 0.96860617
		 -0.28905892 -0.0064981431 0.97072071 -0.32130879 -0.025627017 0.96860617 -0.34763786 -0.052245498 0.96239817
		 -0.37741178 -0.021691516 0.9306317 -0.34537825 0.01020398 0.93753332 -0.30624127 0.033266842 0.93988377
		 -0.26262441 0.045961872 0.93753332 -0.21744363 0.047430575 0.9306317 -0.22049615 0.021904826 0.92137951
		 -0.25898457 0.020666912 0.92726398 -0.29612827 0.0098624825 0.92926759 -0.32945228 -0.0097820684 0.92726398
		 -0.35673112 -0.036962241 0.92137951 -0.38588387 -0.0089164749 0.88795012 -0.35271484 0.023619533 0.89446265
		 -0.31229901 0.047286063 0.89668036 -0.26736611 0.06049867 0.89446265 -0.22094052 0.06235531 0.88795012
		 -0.22431237 0.036490485 0.87921971 -0.26385111 0.034926772 0.88477111 -0.30210209 0.023687303 0.88666362
		 -0.33650145 0.0035346672 0.88477111 -0.36473745 -0.024186984 0.87921971 -0.20320439 -0.034937948 1.037495375
		 -0.20755033 -0.031063139 1.044397116 -0.23856848 -0.035348743 1.044318914 -0.2385958 -0.032156348 1.050049901
		 -0.32718706 -0.088510692 1.037495375 -0.32703036 -0.082690448 1.044397116 -0.34641775 -0.073435828 1.04822588
		 -0.33719021 -0.074726269 1.050065994 -0.2010031 -0.01060237 1.04822588 -0.20638721 -0.018206418 1.050065994
		 -0.24247998 -0.011084355 1.056228757 -0.24066223 -0.019337118 1.05634439 -0.31764108 -0.043561295 1.056228757
		 -0.31287706 -0.050540969 1.05634439 -0.30495781 -0.060831338 1.050049901 -0.3026517 -0.063039064 1.044318914
		 -0.28222442 -0.022315025 1.058956027 -0.27884865 -0.030127525 1.058964491 -0.27368736 -0.042072326 1.052459002
		 -0.27245498 -0.0449242 1.046643972 -0.23274356 0.053918183 0.83860266 -0.22709833 0.04713057 0.84052289
		 -0.26744226 0.045322642 0.84573609 -0.26854202 0.051546015 0.8429696 -0.22362877 0.073200703 0.84872019
		 -0.2308135 0.068358287 0.84313905 -0.37165064 -0.0061034597 0.83860266 -0.3705765 -0.014866248 0.84052289
		 -0.38348889 0.0023873877 0.84313905 -0.3919394 0.00047385017 0.84872019 -0.27048245 0.065808073 0.8480078
		 -0.27095336 0.071077853 0.85483372 -0.35444558 0.029527739 0.8480078 -0.35796052 0.033482313 0.85483372
		 -0.34161091 0.013274431 0.84573609 -0.34538943 0.018340386 0.8429696 -0.31465316 0.052734226 0.85001153
		 -0.31673074 0.05754225 0.85691702 -0.30646539 0.033785164 0.84751207 -0.30896997 0.039581537 0.84480411;
	setAttr -s 2160 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 4 0 1 2 0 1 5 0 2 3 0 2 6 0 3 7 0 4 5 0 4 8 0
		 5 6 0 5 9 0 6 7 0 6 10 0 7 11 0 8 9 0 8 12 0 9 10 0 9 13 0 10 11 0 10 14 0 11 15 0
		 12 13 0 12 16 0 13 14 0 13 17 0 14 15 0 14 18 0 15 19 0 16 17 0 16 20 0 17 18 0 17 21 0
		 18 19 0 18 22 0 19 23 0 20 21 0 20 24 0 21 22 0 21 25 0 22 23 0 22 26 0 23 27 0 24 25 0
		 25 26 0 26 27 0 0 28 0 1 29 0 28 29 0 4 30 0 28 30 0 2 31 0 29 31 0 3 32 0 31 32 0
		 8 33 0 30 33 0 12 34 0 33 34 0 16 35 0 34 35 0 20 36 0 35 36 0 25 37 0 24 38 0 38 37 0
		 36 38 0 26 39 0 37 39 0 27 40 0 39 40 0 28 41 0 29 42 0 41 42 0 30 43 0 41 43 0 31 44 0
		 42 44 0 32 45 0 44 45 0 33 46 0 43 46 0 34 47 0 46 47 0 35 48 0 47 48 0 36 49 0 48 49 0
		 37 50 0 38 51 0 51 50 0 49 51 0 39 52 0 50 52 0 40 53 0 52 53 0 41 54 0 42 55 0 54 55 0
		 55 56 0 43 57 0 57 56 0 54 57 0 44 58 0 55 58 0 58 59 0 56 59 0 45 60 0 58 60 0 60 61 0
		 59 61 0 56 62 0 46 63 0 63 62 0 57 63 0 59 64 0 62 64 0 61 65 0 64 65 0 62 66 0 47 67 0
		 67 66 0 63 67 0 64 68 0 66 68 0 65 69 0 68 69 0 66 70 0 48 71 0 71 70 0 67 71 0 68 72 0
		 70 72 0 69 73 0 72 73 0 70 74 0 49 75 0 75 74 0 71 75 0 72 76 0 74 76 0 73 77 0 76 77 0
		 50 78 0 74 78 0 51 79 0 79 78 0 75 79 0 52 80 0 76 80 0 78 80 0 53 81 0 77 81 0 80 81 0
		 82 83 0 83 84 0 85 84 0 82 85 0 84 86 0 87 86 0 85 87 0 86 61 0 87 60 0 83 88 0 88 89 0
		 84 89 0 89 90 0;
	setAttr ".ed[166:331]" 86 90 0 90 65 0 88 91 0 91 92 0 89 92 0 92 93 0 90 93 0
		 93 69 0 91 94 0 94 95 0 92 95 0 95 96 0 93 96 0 96 73 0 94 97 0 97 98 0 95 98 0 98 99 0
		 96 99 0 99 77 0 97 100 0 100 101 0 98 101 0 101 102 0 99 102 0 102 81 0 103 104 0
		 104 105 0 106 105 0 103 106 0 104 107 0 107 108 0 105 108 0 107 3 0 108 7 0 105 109 0
		 110 109 0 106 110 0 108 111 0 109 111 0 111 11 0 109 112 0 113 112 0 110 113 0 111 114 0
		 112 114 0 114 15 0 112 115 0 116 115 0 113 116 0 114 117 0 115 117 0 117 19 0 115 118 0
		 119 118 0 116 119 0 117 120 0 118 120 0 120 23 0 118 121 0 122 121 0 119 122 0 120 123 0
		 121 123 0 123 27 0 103 124 0 124 125 0 104 125 0 106 126 0 124 126 0 125 127 0 107 127 0
		 127 32 0 110 128 0 126 128 0 113 129 0 128 129 0 116 130 0 129 130 0 119 131 0 130 131 0
		 121 132 0 133 132 0 122 133 0 131 133 0 123 134 0 132 134 0 134 40 0 124 135 0 135 136 0
		 125 136 0 126 137 0 135 137 0 136 138 0 127 138 0 138 45 0 128 139 0 137 139 0 129 140 0
		 139 140 0 130 141 0 140 141 0 131 142 0 141 142 0 132 143 0 144 143 0 133 144 0 142 144 0
		 134 145 0 143 145 0 145 53 0 135 82 0 136 85 0 137 83 0 138 87 0 139 88 0 140 91 0
		 141 94 0 142 97 0 143 101 0 144 100 0 145 102 0 146 192 0 147 198 0 146 147 0 148 202 0
		 147 148 0 149 196 0 148 149 0 150 194 0 149 150 0 151 186 0 150 151 0 152 162 0 151 152 0
		 153 163 0 152 153 0 154 164 0 153 154 0 155 190 0 154 155 0 155 146 0 156 146 0 157 147 0
		 156 157 0 158 148 0 157 158 0 159 149 0 158 159 0 160 150 0 159 160 0 161 151 0 160 161 0
		 162 172 0 161 162 0 163 173 0 162 163 0 164 174 0 163 164 0 165 155 0 164 165 0 165 156 0
		 166 156 0 167 157 0 166 167 0 168 158 0;
	setAttr ".ed[332:497]" 167 168 0 169 159 0 168 169 0 170 160 0 169 170 0 171 161 0
		 170 171 0 172 182 0 171 172 0 173 183 0 172 173 0 174 184 0 173 174 0 175 165 0 174 175 0
		 175 166 0 176 166 0 177 167 0 176 177 0 178 168 0 177 178 0 179 169 0 178 179 0 180 170 0
		 179 180 0 181 171 0 180 181 0 182 208 0 181 182 0 183 224 0 182 183 0 184 220 0 183 184 0
		 185 175 0 184 185 0 185 176 0 188 152 0 201 154 0 205 153 0 195 197 0 197 189 1 189 187 0
		 187 195 0 186 188 0 197 203 0 203 204 1 204 189 0 188 205 0 199 193 0 193 191 0 191 200 0
		 190 192 0 192 198 0 194 186 0 196 194 0 200 204 0 203 199 0 199 200 1 198 202 0 201 190 0
		 202 196 0 205 201 0 187 186 0 194 195 0 189 188 1 204 205 1 191 190 0 193 192 0 199 198 1
		 197 196 1 203 202 1 200 201 1 207 181 0 210 180 0 213 185 0 215 176 0 217 179 0 219 177 0
		 223 178 0 207 210 0 209 216 1 216 211 0 211 206 0 206 209 0 222 216 0 209 225 0 208 207 0
		 210 217 0 213 220 0 214 218 0 218 221 1 221 212 0 212 214 0 215 213 0 217 223 0 222 225 1
		 225 221 0 218 222 0 219 215 0 220 224 0 223 219 0 224 208 0 207 206 0 211 210 0 209 208 1
		 216 217 1 213 212 0 221 220 1 215 214 0 222 223 1 218 219 1 225 224 1 226 272 0 227 278 0
		 226 227 0 228 282 0 227 228 0 229 276 0 228 229 0 230 274 0 229 230 0 231 266 0 230 231 0
		 232 242 0 231 232 0 233 243 0 232 233 0 234 244 0 233 234 0 235 270 0 234 235 0 235 226 0
		 236 226 0 237 227 0 236 237 0 238 228 0 237 238 0 239 229 0 238 239 0 240 230 0 239 240 0
		 241 231 0 240 241 0 242 252 0 241 242 0 243 253 0 242 243 0 244 254 0 243 244 0 245 235 0
		 244 245 0 245 236 0 246 236 0 247 237 0 246 247 0 248 238 0 247 248 0 249 239 0 248 249 0
		 250 240 0 249 250 0 251 241 0 250 251 0 252 262 0 251 252 0 253 263 0;
	setAttr ".ed[498:663]" 252 253 0 254 264 0 253 254 0 255 245 0 254 255 0 255 246 0
		 256 246 0 257 247 0 256 257 0 258 248 0 257 258 0 259 249 0 258 259 0 260 250 0 259 260 0
		 261 251 0 260 261 0 262 288 0 261 262 0 263 304 0 262 263 0 264 300 0 263 264 0 265 255 0
		 264 265 0 265 256 0 268 232 0 281 234 0 285 233 0 275 277 0 277 269 1 269 267 0 267 275 0
		 266 268 0 277 283 0 283 284 1 284 269 0 268 285 0 279 273 0 273 271 0 271 280 0 270 272 0
		 272 278 0 274 266 0 276 274 0 280 284 0 283 279 0 279 280 1 278 282 0 281 270 0 282 276 0
		 285 281 0 267 266 0 274 275 0 269 268 1 284 285 1 271 270 0 273 272 0 279 278 1 277 276 1
		 283 282 1 280 281 1 287 261 0 290 260 0 293 265 0 295 256 0 297 259 0 299 257 0 303 258 0
		 287 290 0 289 296 1 296 291 0 291 286 0 286 289 0 302 296 0 289 305 0 288 287 0 290 297 0
		 293 300 0 294 298 0 298 301 1 301 292 0 292 294 0 295 293 0 297 303 0 302 305 1 305 301 0
		 298 302 0 299 295 0 300 304 0 303 299 0 304 288 0 287 286 0 291 290 0 289 288 1 296 297 1
		 293 292 0 301 300 1 295 294 0 302 303 1 298 299 1 305 304 1 306 352 0 307 358 0 306 307 0
		 308 362 0 307 308 0 309 356 0 308 309 0 310 354 0 309 310 0 311 346 0 310 311 0 312 322 0
		 311 312 0 313 323 0 312 313 0 314 324 0 313 314 0 315 350 0 314 315 0 315 306 0 316 306 0
		 317 307 0 316 317 0 318 308 0 317 318 0 319 309 0 318 319 0 320 310 0 319 320 0 321 311 0
		 320 321 0 322 332 0 321 322 0 323 333 0 322 323 0 324 334 0 323 324 0 325 315 0 324 325 0
		 325 316 0 326 316 0 327 317 0 326 327 0 328 318 0 327 328 0 329 319 0 328 329 0 330 320 0
		 329 330 0 331 321 0 330 331 0 332 342 0 331 332 0 333 343 0 332 333 0 334 344 0 333 334 0
		 335 325 0 334 335 0 335 326 0 336 326 0 337 327 0 336 337 0 338 328 0;
	setAttr ".ed[664:829]" 337 338 0 339 329 0 338 339 0 340 330 0 339 340 0 341 331 0
		 340 341 0 342 368 0 341 342 0 343 384 0 342 343 0 344 380 0 343 344 0 345 335 0 344 345 0
		 345 336 0 348 312 0 361 314 0 365 313 0 355 357 0 357 349 1 349 347 0 347 355 0 346 348 0
		 357 363 0 363 364 1 364 349 0 348 365 0 359 353 0 353 351 0 351 360 0 350 352 0 352 358 0
		 354 346 0 356 354 0 360 364 0 363 359 0 359 360 1 358 362 0 361 350 0 362 356 0 365 361 0
		 347 346 0 354 355 0 349 348 1 364 365 1 351 350 0 353 352 0 359 358 1 357 356 1 363 362 1
		 360 361 1 367 341 0 370 340 0 373 345 0 375 336 0 377 339 0 379 337 0 383 338 0 367 370 0
		 369 376 1 376 371 0 371 366 0 366 369 0 382 376 0 369 385 0 368 367 0 370 377 0 373 380 0
		 374 378 0 378 381 1 381 372 0 372 374 0 375 373 0 377 383 0 382 385 1 385 381 0 378 382 0
		 379 375 0 380 384 0 383 379 0 384 368 0 367 366 0 371 370 0 369 368 1 376 377 1 373 372 0
		 381 380 1 375 374 0 382 383 1 378 379 1 385 384 1 386 432 0 387 438 0 386 387 0 388 442 0
		 387 388 0 389 436 0 388 389 0 390 434 0 389 390 0 391 426 0 390 391 0 392 402 0 391 392 0
		 393 403 0 392 393 0 394 404 0 393 394 0 395 430 0 394 395 0 395 386 0 396 386 0 397 387 0
		 396 397 0 398 388 0 397 398 0 399 389 0 398 399 0 400 390 0 399 400 0 401 391 0 400 401 0
		 402 412 0 401 402 0 403 413 0 402 403 0 404 414 0 403 404 0 405 395 0 404 405 0 405 396 0
		 406 396 0 407 397 0 406 407 0 408 398 0 407 408 0 409 399 0 408 409 0 410 400 0 409 410 0
		 411 401 0 410 411 0 412 422 0 411 412 0 413 423 0 412 413 0 414 424 0 413 414 0 415 405 0
		 414 415 0 415 406 0 416 406 0 417 407 0 416 417 0 418 408 0 417 418 0 419 409 0 418 419 0
		 420 410 0 419 420 0 421 411 0 420 421 0 422 448 0 421 422 0 423 464 0;
	setAttr ".ed[830:995]" 422 423 0 424 460 0 423 424 0 425 415 0 424 425 0 425 416 0
		 428 392 0 441 394 0 445 393 0 435 437 0 437 429 1 429 427 0 427 435 0 426 428 0 437 443 0
		 443 444 1 444 429 0 428 445 0 439 433 0 433 431 0 431 440 0 430 432 0 432 438 0 434 426 0
		 436 434 0 440 444 0 443 439 0 439 440 1 438 442 0 441 430 0 442 436 0 445 441 0 427 426 0
		 434 435 0 429 428 1 444 445 1 431 430 0 433 432 0 439 438 1 437 436 1 443 442 1 440 441 1
		 447 421 0 450 420 0 453 425 0 455 416 0 457 419 0 459 417 0 463 418 0 447 450 0 449 456 1
		 456 451 0 451 446 0 446 449 0 462 456 0 449 465 0 448 447 0 450 457 0 453 460 0 454 458 0
		 458 461 1 461 452 0 452 454 0 455 453 0 457 463 0 462 465 1 465 461 0 458 462 0 459 455 0
		 460 464 0 463 459 0 464 448 0 447 446 0 451 450 0 449 448 1 456 457 1 453 452 0 461 460 1
		 455 454 0 462 463 1 458 459 1 465 464 1 466 512 0 467 518 0 466 467 0 468 522 0 467 468 0
		 469 516 0 468 469 0 470 514 0 469 470 0 471 506 0 470 471 0 472 482 0 471 472 0 473 483 0
		 472 473 0 474 484 0 473 474 0 475 510 0 474 475 0 475 466 0 476 466 0 477 467 0 476 477 0
		 478 468 0 477 478 0 479 469 0 478 479 0 480 470 0 479 480 0 481 471 0 480 481 0 482 492 0
		 481 482 0 483 493 0 482 483 0 484 494 0 483 484 0 485 475 0 484 485 0 485 476 0 486 476 0
		 487 477 0 486 487 0 488 478 0 487 488 0 489 479 0 488 489 0 490 480 0 489 490 0 491 481 0
		 490 491 0 492 502 0 491 492 0 493 503 0 492 493 0 494 504 0 493 494 0 495 485 0 494 495 0
		 495 486 0 496 486 0 497 487 0 496 497 0 498 488 0 497 498 0 499 489 0 498 499 0 500 490 0
		 499 500 0 501 491 0 500 501 0 502 528 0 501 502 0 503 544 0 502 503 0 504 540 0 503 504 0
		 505 495 0 504 505 0 505 496 0 508 472 0 521 474 0 525 473 0 515 517 0;
	setAttr ".ed[996:1161]" 517 509 1 509 507 0 507 515 0 506 508 0 517 523 0 523 524 1
		 524 509 0 508 525 0 519 513 0 513 511 0 511 520 0 510 512 0 512 518 0 514 506 0 516 514 0
		 520 524 0 523 519 0 519 520 1 518 522 0 521 510 0 522 516 0 525 521 0 507 506 0 514 515 0
		 509 508 1 524 525 1 511 510 0 513 512 0 519 518 1 517 516 1 523 522 1 520 521 1 527 501 0
		 530 500 0 533 505 0 535 496 0 537 499 0 539 497 0 543 498 0 527 530 0 536 531 0 531 526 0
		 526 529 0 542 536 0 536 529 1 529 545 0 528 527 0 530 537 0 533 540 0 534 538 0 538 541 1
		 541 532 0 532 534 0 535 533 0 537 543 0 542 545 1 545 541 0 538 542 0 539 535 0 540 544 0
		 543 539 0 544 528 0 527 526 0 531 530 0 529 528 1 536 537 1 533 532 0 541 540 1 535 534 0
		 542 543 1 538 539 1 545 544 1 546 592 0 547 598 0 546 547 0 548 602 0 547 548 0 549 596 0
		 548 549 0 550 594 0 549 550 0 551 586 0 550 551 0 552 562 0 551 552 0 553 563 0 552 553 0
		 554 564 0 553 554 0 555 590 0 554 555 0 555 546 0 556 546 0 557 547 0 556 557 0 558 548 0
		 557 558 0 559 549 0 558 559 0 560 550 0 559 560 0 561 551 0 560 561 0 562 572 0 561 562 0
		 563 573 0 562 563 0 564 574 0 563 564 0 565 555 0 564 565 0 565 556 0 566 556 0 567 557 0
		 566 567 0 568 558 0 567 568 0 569 559 0 568 569 0 570 560 0 569 570 0 571 561 0 570 571 0
		 572 582 0 571 572 0 573 583 0 572 573 0 574 584 0 573 574 0 575 565 0 574 575 0 575 566 0
		 576 566 0 577 567 0 576 577 0 578 568 0 577 578 0 579 569 0 578 579 0 580 570 0 579 580 0
		 581 571 0 580 581 0 582 608 0 581 582 0 583 624 0 582 583 0 584 620 0 583 584 0 585 575 0
		 584 585 0 585 576 0 588 552 0 601 554 0 605 553 0 595 597 0 597 589 1 589 587 0 587 595 0
		 586 588 0 597 603 0 603 604 1 604 589 0 588 605 0 599 593 0 593 591 0;
	setAttr ".ed[1162:1327]" 591 600 0 590 592 0 592 598 0 594 586 0 596 594 0 600 604 0
		 603 599 0 599 600 1 598 602 0 601 590 0 602 596 0 605 601 0 587 586 0 594 595 0 589 588 1
		 604 605 1 591 590 0 593 592 0 599 598 1 597 596 1 603 602 1 600 601 1 607 581 0 610 580 0
		 613 585 0 615 576 0 617 579 0 619 577 0 623 578 0 607 610 0 616 611 0 611 606 0 606 609 0
		 622 616 0 616 609 1 609 625 0 608 607 0 610 617 0 613 620 0 614 618 0 618 621 1 621 612 0
		 612 614 0 615 613 0 617 623 0 622 625 1 625 621 0 618 622 0 619 615 0 620 624 0 623 619 0
		 624 608 0 607 606 0 611 610 0 609 608 1 616 617 1 613 612 0 621 620 1 615 614 0 622 623 1
		 618 619 1 625 624 1 626 672 0 627 678 0 626 627 0 628 682 0 627 628 0 629 676 0 628 629 0
		 630 674 0 629 630 0 631 666 0 630 631 0 632 642 0 631 632 0 633 643 0 632 633 0 634 644 0
		 633 634 0 635 670 0 634 635 0 635 626 0 636 626 0 637 627 0 636 637 0 638 628 0 637 638 0
		 639 629 0 638 639 0 640 630 0 639 640 0 641 631 0 640 641 0 642 652 0 641 642 0 643 653 0
		 642 643 0 644 654 0 643 644 0 645 635 0 644 645 0 645 636 0 646 636 0 647 637 0 646 647 0
		 648 638 0 647 648 0 649 639 0 648 649 0 650 640 0 649 650 0 651 641 0 650 651 0 652 662 0
		 651 652 0 653 663 0 652 653 0 654 664 0 653 654 0 655 645 0 654 655 0 655 646 0 656 646 0
		 657 647 0 656 657 0 658 648 0 657 658 0 659 649 0 658 659 0 660 650 0 659 660 0 661 651 0
		 660 661 0 662 688 0 661 662 0 663 704 0 662 663 0 664 700 0 663 664 0 665 655 0 664 665 0
		 665 656 0 668 632 0 681 634 0 685 633 0 675 677 0 677 669 1 669 667 0 667 675 0 666 668 0
		 677 683 0 683 684 1 684 669 0 668 685 0 679 673 0 673 671 0 671 680 0 670 672 0 672 678 0
		 674 666 0 676 674 0 680 684 0 683 679 0 679 680 1 678 682 0 681 670 0;
	setAttr ".ed[1328:1493]" 682 676 0 685 681 0 667 666 0 674 675 0 669 668 1 684 685 1
		 671 670 0 673 672 0 679 678 1 677 676 1 683 682 1 680 681 1 687 661 0 690 660 0 693 665 0
		 695 656 0 697 659 0 699 657 0 703 658 0 687 690 0 696 691 0 691 686 0 686 689 0 702 696 0
		 696 689 1 689 705 0 688 687 0 690 697 0 693 700 0 694 698 0 698 701 1 701 692 0 692 694 0
		 695 693 0 697 703 0 702 705 1 705 701 0 698 702 0 699 695 0 700 704 0 703 699 0 704 688 0
		 687 686 0 691 690 0 689 688 1 696 697 1 693 692 0 701 700 1 695 694 0 702 703 1 698 699 1
		 705 704 1 706 752 0 707 758 0 706 707 0 708 762 0 707 708 0 709 756 0 708 709 0 710 754 0
		 709 710 0 711 746 0 710 711 0 712 722 0 711 712 0 713 723 0 712 713 0 714 724 0 713 714 0
		 715 750 0 714 715 0 715 706 0 716 706 0 717 707 0 716 717 0 718 708 0 717 718 0 719 709 0
		 718 719 0 720 710 0 719 720 0 721 711 0 720 721 0 722 732 0 721 722 0 723 733 0 722 723 0
		 724 734 0 723 724 0 725 715 0 724 725 0 725 716 0 726 716 0 727 717 0 726 727 0 728 718 0
		 727 728 0 729 719 0 728 729 0 730 720 0 729 730 0 731 721 0 730 731 0 732 742 0 731 732 0
		 733 743 0 732 733 0 734 744 0 733 734 0 735 725 0 734 735 0 735 726 0 736 726 0 737 727 0
		 736 737 0 738 728 0 737 738 0 739 729 0 738 739 0 740 730 0 739 740 0 741 731 0 740 741 0
		 742 768 0 741 742 0 743 784 0 742 743 0 744 780 0 743 744 0 745 735 0 744 745 0 745 736 0
		 748 712 0 761 714 0 765 713 0 755 757 0 757 749 1 749 747 0 747 755 0 746 748 0 757 763 0
		 763 764 1 764 749 0 748 765 0 759 753 0 753 751 0 751 760 0 750 752 0 752 758 0 754 746 0
		 756 754 0 760 764 0 763 759 0 759 760 1 758 762 0 761 750 0 762 756 0 765 761 0 747 746 0
		 754 755 0 749 748 1 764 765 1 751 750 0 753 752 0 759 758 1 757 756 1;
	setAttr ".ed[1494:1659]" 763 762 1 760 761 1 767 741 0 770 740 0 773 745 0 775 736 0
		 777 739 0 779 737 0 783 738 0 767 770 0 776 771 0 771 766 0 766 769 0 782 776 0 776 769 1
		 769 785 0 768 767 0 770 777 0 773 780 0 774 778 0 778 781 1 781 772 0 772 774 0 775 773 0
		 777 783 0 782 785 1 785 781 0 778 782 0 779 775 0 780 784 0 783 779 0 784 768 0 767 766 0
		 771 770 0 769 768 1 776 777 1 773 772 0 781 780 1 775 774 0 782 783 1 778 779 1 785 784 1
		 786 832 0 787 838 0 786 787 0 788 842 0 787 788 0 789 836 0 788 789 0 790 834 0 789 790 0
		 791 826 0 790 791 0 792 802 0 791 792 0 793 803 0 792 793 0 794 804 0 793 794 0 795 830 0
		 794 795 0 795 786 0 796 786 0 797 787 0 796 797 0 798 788 0 797 798 0 799 789 0 798 799 0
		 800 790 0 799 800 0 801 791 0 800 801 0 802 812 0 801 802 0 803 813 0 802 803 0 804 814 0
		 803 804 0 805 795 0 804 805 0 805 796 0 806 796 0 807 797 0 806 807 0 808 798 0 807 808 0
		 809 799 0 808 809 0 810 800 0 809 810 0 811 801 0 810 811 0 812 822 0 811 812 0 813 823 0
		 812 813 0 814 824 0 813 814 0 815 805 0 814 815 0 815 806 0 816 806 0 817 807 0 816 817 0
		 818 808 0 817 818 0 819 809 0 818 819 0 820 810 0 819 820 0 821 811 0 820 821 0 822 848 0
		 821 822 0 823 864 0 822 823 0 824 860 0 823 824 0 825 815 0 824 825 0 825 816 0 828 792 0
		 841 794 0 845 793 0 835 837 0 837 829 1 829 827 0 827 835 0 826 828 0 837 843 0 843 844 1
		 844 829 0 828 845 0 839 833 0 833 831 0 831 840 0 830 832 0 832 838 0 834 826 0 836 834 0
		 840 844 0 843 839 0 839 840 1 838 842 0 841 830 0 842 836 0 845 841 0 827 826 0 834 835 0
		 829 828 1 844 845 1 831 830 0 833 832 0 839 838 1 837 836 1 843 842 1 840 841 1 847 821 0
		 850 820 0 853 825 0 855 816 0 857 819 0 859 817 0 863 818 0 847 850 0;
	setAttr ".ed[1660:1825]" 856 851 0 851 846 0 846 849 0 862 856 0 856 849 1 849 865 0
		 848 847 0 850 857 0 853 860 0 854 858 0 858 861 1 861 852 0 852 854 0 855 853 0 857 863 0
		 862 865 1 865 861 0 858 862 0 859 855 0 860 864 0 863 859 0 864 848 0 847 846 0 851 850 0
		 849 848 1 856 857 1 853 852 0 861 860 1 855 854 0 862 863 1 858 859 1 865 864 1 866 912 0
		 867 918 0 866 867 0 868 922 0 867 868 0 869 916 0 868 869 0 870 914 0 869 870 0 871 906 0
		 870 871 0 872 882 0 871 872 0 873 883 0 872 873 0 874 884 0 873 874 0 875 910 0 874 875 0
		 875 866 0 876 866 0 877 867 0 876 877 0 878 868 0 877 878 0 879 869 0 878 879 0 880 870 0
		 879 880 0 881 871 0 880 881 0 882 892 0 881 882 0 883 893 0 882 883 0 884 894 0 883 884 0
		 885 875 0 884 885 0 885 876 0 886 876 0 887 877 0 886 887 0 888 878 0 887 888 0 889 879 0
		 888 889 0 890 880 0 889 890 0 891 881 0 890 891 0 892 902 0 891 892 0 893 903 0 892 893 0
		 894 904 0 893 894 0 895 885 0 894 895 0 895 886 0 896 886 0 897 887 0 896 897 0 898 888 0
		 897 898 0 899 889 0 898 899 0 900 890 0 899 900 0 901 891 0 900 901 0 902 928 0 901 902 0
		 903 944 0 902 903 0 904 940 0 903 904 0 905 895 0 904 905 0 905 896 0 908 872 0 921 874 0
		 925 873 0 915 917 0 917 909 1 909 907 0 907 915 0 906 908 0 917 923 0 923 924 1 924 909 0
		 908 925 0 919 913 0 913 911 0 911 920 0 910 912 0 912 918 0 914 906 0 916 914 0 920 924 0
		 923 919 0 919 920 1 918 922 0 921 910 0 922 916 0 925 921 0 907 906 0 914 915 0 909 908 1
		 924 925 1 911 910 0 913 912 0 919 918 1 917 916 1 923 922 1 920 921 1 927 901 0 930 900 0
		 933 905 0 935 896 0 937 899 0 939 897 0 943 898 0 927 930 0 936 931 0 931 926 0 926 929 0
		 942 936 0 936 929 1 929 945 0 928 927 0 930 937 0 933 940 0 934 938 0;
	setAttr ".ed[1826:1991]" 938 941 1 941 932 0 932 934 0 935 933 0 937 943 0 942 945 1
		 945 941 0 938 942 0 939 935 0 940 944 0 943 939 0 944 928 0 927 926 0 931 930 0 929 928 1
		 936 937 1 933 932 0 941 940 1 935 934 0 942 943 1 938 939 1 945 944 1 946 992 0 947 998 0
		 946 947 0 948 1002 0 947 948 0 949 996 0 948 949 0 950 994 0 949 950 0 951 986 0
		 950 951 0 952 962 0 951 952 0 953 963 0 952 953 0 954 964 0 953 954 0 955 990 0 954 955 0
		 955 946 0 956 946 0 957 947 0 956 957 0 958 948 0 957 958 0 959 949 0 958 959 0 960 950 0
		 959 960 0 961 951 0 960 961 0 962 972 0 961 962 0 963 973 0 962 963 0 964 974 0 963 964 0
		 965 955 0 964 965 0 965 956 0 966 956 0 967 957 0 966 967 0 968 958 0 967 968 0 969 959 0
		 968 969 0 970 960 0 969 970 0 971 961 0 970 971 0 972 982 0 971 972 0 973 983 0 972 973 0
		 974 984 0 973 974 0 975 965 0 974 975 0 975 966 0 976 966 0 977 967 0 976 977 0 978 968 0
		 977 978 0 979 969 0 978 979 0 980 970 0 979 980 0 981 971 0 980 981 0 982 1008 0
		 981 982 0 983 1024 0 982 983 0 984 1020 0 983 984 0 985 975 0 984 985 0 985 976 0
		 988 952 0 1001 954 0 1005 953 0 995 997 0 997 989 1 989 987 0 987 995 0 986 988 0
		 997 1003 0 1003 1004 1 1004 989 0 988 1005 0 999 993 0 993 991 0 991 1000 0 990 992 0
		 992 998 0 994 986 0 996 994 0 1000 1004 0 1003 999 0 999 1000 1 998 1002 0 1001 990 0
		 1002 996 0 1005 1001 0 987 986 0 994 995 0 989 988 1 1004 1005 1 991 990 0 993 992 0
		 999 998 1 997 996 1 1003 1002 1 1000 1001 1 1007 981 0 1010 980 0 1013 985 0 1015 976 0
		 1017 979 0 1019 977 0 1023 978 0 1007 1010 0 1016 1011 0 1011 1006 0 1006 1009 0
		 1022 1016 0 1016 1009 1 1009 1025 0 1008 1007 0 1010 1017 0 1013 1020 0 1014 1018 0
		 1018 1021 1 1021 1012 0 1012 1014 0 1015 1013 0 1017 1023 0 1022 1025 1 1025 1021 0
		 1018 1022 0 1019 1015 0 1020 1024 0;
	setAttr ".ed[1992:2157]" 1023 1019 0 1024 1008 0 1007 1006 0 1011 1010 0 1009 1008 1
		 1016 1017 1 1013 1012 0 1021 1020 1 1015 1014 0 1022 1023 1 1018 1019 1 1025 1024 1
		 1026 1072 0 1027 1078 0 1026 1027 0 1028 1082 0 1027 1028 0 1029 1076 0 1028 1029 0
		 1030 1074 0 1029 1030 0 1031 1066 0 1030 1031 0 1032 1042 0 1031 1032 0 1033 1043 0
		 1032 1033 0 1034 1044 0 1033 1034 0 1035 1070 0 1034 1035 0 1035 1026 0 1036 1026 0
		 1037 1027 0 1036 1037 0 1038 1028 0 1037 1038 0 1039 1029 0 1038 1039 0 1040 1030 0
		 1039 1040 0 1041 1031 0 1040 1041 0 1042 1052 0 1041 1042 0 1043 1053 0 1042 1043 0
		 1044 1054 0 1043 1044 0 1045 1035 0 1044 1045 0 1045 1036 0 1046 1036 0 1047 1037 0
		 1046 1047 0 1048 1038 0 1047 1048 0 1049 1039 0 1048 1049 0 1050 1040 0 1049 1050 0
		 1051 1041 0 1050 1051 0 1052 1062 0 1051 1052 0 1053 1063 0 1052 1053 0 1054 1064 0
		 1053 1054 0 1055 1045 0 1054 1055 0 1055 1046 0 1056 1046 0 1057 1047 0 1056 1057 0
		 1058 1048 0 1057 1058 0 1059 1049 0 1058 1059 0 1060 1050 0 1059 1060 0 1061 1051 0
		 1060 1061 0 1062 1088 0 1061 1062 0 1063 1104 0 1062 1063 0 1064 1100 0 1063 1064 0
		 1065 1055 0 1064 1065 0 1065 1056 0 1068 1032 0 1081 1034 0 1085 1033 0 1075 1077 0
		 1077 1069 1 1069 1067 0 1067 1075 0 1066 1068 0 1077 1083 0 1083 1084 1 1084 1069 0
		 1068 1085 0 1079 1073 0 1073 1071 0 1071 1080 0 1070 1072 0 1072 1078 0 1074 1066 0
		 1076 1074 0 1080 1084 0 1083 1079 0 1079 1080 1 1078 1082 0 1081 1070 0 1082 1076 0
		 1085 1081 0 1067 1066 0 1074 1075 0 1069 1068 1 1084 1085 1 1071 1070 0 1073 1072 0
		 1079 1078 1 1077 1076 1 1083 1082 1 1080 1081 1 1087 1061 0 1090 1060 0 1093 1065 0
		 1095 1056 0 1097 1059 0 1099 1057 0 1103 1058 0 1087 1090 0 1096 1091 0 1091 1086 0
		 1086 1089 0 1102 1096 0 1089 1105 0 1088 1087 0 1090 1097 0 1093 1100 0 1094 1098 0
		 1101 1092 0 1092 1094 0 1095 1093 0 1097 1103 0 1105 1101 0 1098 1102 0 1099 1095 0
		 1100 1104 0 1103 1099 0 1104 1088 0 1087 1086 0 1091 1090 0 1089 1088 1 1096 1097 1
		 1093 1092 0 1101 1100 1 1095 1094 0 1102 1103 1 1098 1099 1 1105 1104 1 1089 1096 0;
	setAttr ".ed[2158:2159]" 1105 1102 0 1101 1098 0;
	setAttr -s 1080 -ch 4320 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 101 100 -99 -98
		mu 0 4 142 145 2 3
		f 4 98 105 -105 -104
		mu 0 4 3 2 6 7
		f 4 104 109 -109 -108
		mu 0 4 7 6 13 14
		f 4 113 112 -111 -101
		mu 0 4 145 146 5 2
		f 4 110 115 -115 -106
		mu 0 4 2 5 12 6
		f 4 114 117 -117 -110
		mu 0 4 6 12 19 13
		f 4 121 120 -119 -113
		mu 0 4 146 150 11 5
		f 4 118 123 -123 -116
		mu 0 4 5 11 18 12
		f 4 122 125 -125 -118
		mu 0 4 12 18 26 19
		f 4 129 128 -127 -121
		mu 0 4 150 155 17 11
		f 4 126 131 -131 -124
		mu 0 4 11 17 25 18
		f 4 130 133 -133 -126
		mu 0 4 18 25 34 26
		f 4 137 136 -135 -129
		mu 0 4 155 217 24 17
		f 4 134 139 -139 -132
		mu 0 4 17 24 33 25
		f 4 138 141 -141 -134
		mu 0 4 25 33 41 34
		f 4 146 145 -144 -137
		mu 0 4 217 31 32 24
		f 4 143 149 -149 -140
		mu 0 4 24 32 40 33
		f 4 148 152 -152 -142
		mu 0 4 33 40 45 41
		f 4 0 3 -8 -2
		mu 0 4 61 62 63 64
		f 4 2 5 -10 -4
		mu 0 4 62 65 66 63
		f 4 4 6 -12 -6
		mu 0 4 65 69 70 66
		f 4 7 10 -15 -9
		mu 0 4 64 63 67 68
		f 4 9 12 -17 -11
		mu 0 4 63 66 71 67
		f 4 11 13 -19 -13
		mu 0 4 66 70 76 71
		f 4 14 17 -22 -16
		mu 0 4 68 67 72 73
		f 4 16 19 -24 -18
		mu 0 4 67 71 77 72
		f 4 18 20 -26 -20
		mu 0 4 71 76 83 77
		f 4 21 24 -29 -23
		mu 0 4 73 72 78 79
		f 4 23 26 -31 -25
		mu 0 4 72 77 84 78
		f 4 25 27 -33 -27
		mu 0 4 77 83 91 84
		f 4 28 31 -36 -30
		mu 0 4 79 78 85 86
		f 4 30 33 -38 -32
		mu 0 4 78 84 92 85
		f 4 32 34 -40 -34
		mu 0 4 84 91 98 92
		f 4 35 38 -43 -37
		mu 0 4 86 85 93 94
		f 4 37 40 -44 -39
		mu 0 4 85 92 99 93
		f 4 39 41 -45 -41
		mu 0 4 92 98 105 99
		f 4 45 47 -47 -1
		mu 0 4 114 115 116 117
		f 4 48 -50 -46 1
		mu 0 4 64 143 144 61
		f 4 46 51 -51 -3
		mu 0 4 117 116 120 121
		f 4 50 53 -53 -5
		mu 0 4 121 120 125 126
		f 4 54 -56 -49 8
		mu 0 4 68 147 143 64
		f 4 56 -58 -55 15
		mu 0 4 73 151 147 68
		f 4 58 -60 -57 22
		mu 0 4 79 156 151 73
		f 4 60 -62 -59 29
		mu 0 4 86 101 156 79
		f 4 62 -65 -64 42
		mu 0 4 163 164 165 166
		f 4 63 -66 -61 36
		mu 0 4 94 100 101 86
		f 4 66 -68 -63 43
		mu 0 4 167 168 164 163
		f 4 68 -70 -67 44
		mu 0 4 171 172 168 167
		f 4 70 72 -72 -48
		mu 0 4 115 118 119 116
		f 4 73 -75 -71 49
		mu 0 4 143 9 149 144
		f 4 71 76 -76 -52
		mu 0 4 116 119 124 120
		f 4 75 78 -78 -54
		mu 0 4 120 124 128 125
		f 4 79 -81 -74 55
		mu 0 4 147 8 9 143
		f 4 81 -83 -80 57
		mu 0 4 151 15 8 147
		f 4 83 -85 -82 59
		mu 0 4 156 22 15 151
		f 4 85 -87 -84 61
		mu 0 4 101 30 22 156
		f 4 87 -90 -89 64
		mu 0 4 164 169 170 165
		f 4 88 -91 -86 65
		mu 0 4 100 39 30 101
		f 4 91 -93 -88 67
		mu 0 4 168 173 169 164
		f 4 93 -95 -92 69
		mu 0 4 172 178 173 168
		f 4 95 97 -97 -73
		mu 0 4 118 122 123 119
		f 4 99 -102 -96 74
		mu 0 4 9 1 0 149
		f 4 96 103 -103 -77
		mu 0 4 119 123 127 124
		f 4 102 107 -107 -79
		mu 0 4 124 127 131 128
		f 4 111 -114 -100 80
		mu 0 4 8 4 1 9
		f 4 119 -122 -112 82
		mu 0 4 15 10 4 8
		f 4 127 -130 -120 84
		mu 0 4 22 16 10 15
		f 4 135 -138 -128 86
		mu 0 4 30 23 16 22
		f 4 142 -146 -145 89
		mu 0 4 169 174 175 170
		f 4 144 -147 -136 90
		mu 0 4 39 215 23 30
		f 4 147 -150 -143 92
		mu 0 4 173 189 190 169
		f 4 150 -153 -148 94
		mu 0 4 178 193 189 173
		f 4 156 155 -155 -154
		mu 0 4 158 28 29 161
		f 4 159 158 -158 -156
		mu 0 4 28 20 21 29
		f 4 161 108 -161 -159
		mu 0 4 20 14 13 21
		f 4 154 164 -164 -163
		mu 0 4 161 29 36 198
		f 4 157 166 -166 -165
		mu 0 4 29 21 27 36
		f 4 160 116 -168 -167
		mu 0 4 21 13 19 27
		f 4 163 170 -170 -169
		mu 0 4 198 36 43 199
		f 4 165 172 -172 -171
		mu 0 4 36 27 35 43
		f 4 167 124 -174 -173
		mu 0 4 27 19 26 35
		f 4 169 176 -176 -175
		mu 0 4 199 43 47 204
		f 4 171 178 -178 -177
		mu 0 4 43 35 42 47
		f 4 173 132 -180 -179
		mu 0 4 35 26 34 42
		f 4 175 182 -182 -181
		mu 0 4 204 47 52 212
		f 4 177 184 -184 -183
		mu 0 4 47 42 46 52
		f 4 179 140 -186 -185
		mu 0 4 42 34 41 46
		f 4 181 188 -188 -187
		mu 0 4 212 52 55 58
		f 4 183 190 -190 -189
		mu 0 4 52 46 51 55
		f 4 185 151 -192 -191
		mu 0 4 46 41 45 51
		f 4 195 194 -194 -193
		mu 0 4 87 88 81 80
		f 4 193 198 -198 -197
		mu 0 4 80 81 75 74
		f 4 197 200 -7 -200
		mu 0 4 74 75 70 69
		f 4 203 202 -202 -195
		mu 0 4 88 95 89 81
		f 4 201 205 -205 -199
		mu 0 4 81 89 82 75
		f 4 204 206 -14 -201
		mu 0 4 75 82 76 70
		f 4 209 208 -208 -203
		mu 0 4 95 102 96 89
		f 4 207 211 -211 -206
		mu 0 4 89 96 90 82
		f 4 210 212 -21 -207
		mu 0 4 82 90 83 76
		f 4 215 214 -214 -209
		mu 0 4 102 106 103 96
		f 4 213 217 -217 -212
		mu 0 4 96 103 97 90
		f 4 216 218 -28 -213
		mu 0 4 90 97 91 83
		f 4 221 220 -220 -215
		mu 0 4 106 109 107 103
		f 4 219 223 -223 -218
		mu 0 4 103 107 104 97
		f 4 222 224 -35 -219
		mu 0 4 97 104 98 91
		f 4 227 226 -226 -221
		mu 0 4 109 111 110 107
		f 4 225 229 -229 -224
		mu 0 4 107 110 108 104
		f 4 228 230 -42 -225
		mu 0 4 104 108 105 98
		f 4 192 233 -233 -232
		mu 0 4 137 133 134 138
		f 4 -196 231 235 -235
		mu 0 4 88 87 200 201
		f 4 196 237 -237 -234
		mu 0 4 133 129 130 134
		f 4 199 52 -239 -238
		mu 0 4 129 126 125 130
		f 4 -204 234 240 -240
		mu 0 4 95 88 201 205
		f 4 -210 239 242 -242
		mu 0 4 102 95 205 210
		f 4 -216 241 244 -244
		mu 0 4 106 102 210 213
		f 4 -222 243 246 -246
		mu 0 4 109 106 213 112
		f 4 -227 249 248 -248
		mu 0 4 179 182 183 180
		f 4 -228 245 250 -250
		mu 0 4 111 109 112 113
		f 4 -230 247 252 -252
		mu 0 4 176 179 180 177
		f 4 -231 251 253 -69
		mu 0 4 171 176 177 172
		f 4 232 256 -256 -255
		mu 0 4 138 134 136 140
		f 4 -236 254 258 -258
		mu 0 4 201 200 202 50
		f 4 236 260 -260 -257
		mu 0 4 134 130 132 136
		f 4 238 77 -262 -261
		mu 0 4 130 125 128 132
		f 4 -241 257 263 -263
		mu 0 4 205 201 50 49
		f 4 -243 262 265 -265
		mu 0 4 210 205 49 54
		f 4 -245 264 267 -267
		mu 0 4 213 210 54 57
		f 4 -247 266 269 -269
		mu 0 4 112 213 57 59
		f 4 -249 272 271 -271
		mu 0 4 180 183 185 184
		f 4 -251 268 273 -273
		mu 0 4 113 112 59 60
		f 4 -253 270 275 -275
		mu 0 4 177 180 184 181
		f 4 -254 274 276 -94
		mu 0 4 172 177 181 178
		f 4 255 278 -157 -278
		mu 0 4 140 136 139 141
		f 4 -259 277 153 -280
		mu 0 4 50 202 37 38
		f 4 259 280 -160 -279
		mu 0 4 136 132 135 139
		f 4 261 106 -162 -281
		mu 0 4 132 128 131 135
		f 4 -264 279 162 -282
		mu 0 4 49 50 38 44
		f 4 -266 281 168 -283
		mu 0 4 54 49 44 48
		f 4 -268 282 174 -284
		mu 0 4 57 54 48 53
		f 4 -270 283 180 -285
		mu 0 4 59 57 53 56
		f 4 -272 286 187 -286
		mu 0 4 184 185 186 187
		f 4 -274 284 186 -287
		mu 0 4 60 59 56 209
		f 4 -276 285 189 -288
		mu 0 4 181 184 197 195
		f 4 -277 287 191 -151
		mu 0 4 178 181 195 193
		f 4 419 408 356 -406
		mu 0 4 219 220 221 222
		f 4 418 404 360 359
		mu 0 4 247 248 249 250
		f 4 425 406 367 -408
		mu 0 4 271 264 265 272
		f 4 -405 411 405 358
		mu 0 4 249 248 285 286
		f 4 430 407 350 -410
		mu 0 4 227 271 272 228
		f 4 420 -364 366 -407
		mu 0 4 264 258 259 265
		f 4 432 409 352 -411
		mu 0 4 223 227 228 224
		f 4 431 -362 364 363
		mu 0 4 258 253 254 259
		f 4 426 410 354 -409
		mu 0 4 220 223 224 221
		f 4 433 -360 362 361
		mu 0 4 253 247 250 254
		f 4 -291 288 384 -290
		mu 0 4 242 244 246 245
		f 4 -293 289 390 -292
		mu 0 4 238 242 245 243
		f 4 -295 291 392 -294
		mu 0 4 234 238 243 239
		f 4 -297 293 386 -296
		mu 0 4 235 234 239 240
		f 4 385 -298 -299 295
		mu 0 4 295 296 293 294
		f 4 -301 297 375 368
		mu 0 4 261 293 296 267
		f 4 -303 -369 379 370
		mu 0 4 268 261 267 275
		f 4 -305 -371 393 369
		mu 0 4 276 268 275 279
		f 4 -307 -370 391 -306
		mu 0 4 280 276 279 282
		f 4 -308 305 383 -289
		mu 0 4 244 280 282 246
		f 4 -311 308 290 -310
		mu 0 4 237 241 244 242
		f 4 -313 309 292 -312
		mu 0 4 233 237 242 238
		f 4 -315 311 294 -314
		mu 0 4 230 233 238 234
		f 4 -317 313 296 -316
		mu 0 4 231 230 234 235
		f 4 -318 -319 315 298
		mu 0 4 293 291 292 294
		f 4 -321 317 300 299
		mu 0 4 256 291 293 261
		f 4 -323 -300 302 301
		mu 0 4 262 256 261 268
		f 4 -325 -302 304 303
		mu 0 4 269 262 268 276
		f 4 -327 -304 306 -326
		mu 0 4 277 269 276 280
		f 4 -328 325 307 -309
		mu 0 4 241 277 280 244
		f 4 -331 328 310 -330
		mu 0 4 232 236 241 237
		f 4 -333 329 312 -332
		mu 0 4 229 232 237 233
		f 4 -335 331 314 -334
		mu 0 4 225 229 233 230
		f 4 -337 333 316 -336
		mu 0 4 226 225 230 231
		f 4 -338 -339 335 318
		mu 0 4 291 289 290 292
		f 4 -341 337 320 319
		mu 0 4 252 289 291 256
		f 4 -343 -320 322 321
		mu 0 4 257 252 256 262
		f 4 -345 -322 324 323
		mu 0 4 263 257 262 269
		f 4 -347 -324 326 -346
		mu 0 4 270 263 269 277
		f 4 -348 345 327 -329
		mu 0 4 236 270 277 241
		f 4 -351 348 330 -350
		mu 0 4 228 272 236 232
		f 4 -353 349 332 -352
		mu 0 4 224 228 232 229
		f 4 -355 351 334 -354
		mu 0 4 221 224 229 225
		f 4 -357 353 336 -356
		mu 0 4 222 221 225 226
		f 4 -358 -359 355 338
		mu 0 4 289 249 286 290
		f 4 -361 357 340 339
		mu 0 4 250 249 289 252
		f 4 -363 -340 342 341
		mu 0 4 254 250 252 257
		f 4 -365 -342 344 343
		mu 0 4 259 254 257 263
		f 4 -367 -344 346 -366
		mu 0 4 265 259 263 270
		f 4 -368 365 347 -349
		mu 0 4 272 265 270 236
		f 4 371 372 373 374
		mu 0 4 299 300 301 302
		f 4 376 377 378 -373
		mu 0 4 300 303 304 301
		f 4 -390 380 381 382
		mu 0 4 305 306 284 308
		f 4 387 -378 388 389
		mu 0 4 305 304 303 306
		f 4 394 -386 395 -375
		mu 0 4 297 296 295 298
		f 4 -395 -374 396 -376
		mu 0 4 296 297 274 267
		f 4 -397 -379 397 -380
		mu 0 4 267 274 278 275
		f 4 398 -392 -404 -383
		mu 0 4 283 282 279 281
		f 4 -399 -382 399 -384
		mu 0 4 282 283 284 246
		f 4 -400 -381 400 -385
		mu 0 4 246 284 306 245
		f 4 -396 -387 -402 -372
		mu 0 4 299 240 239 300
		f 4 401 -393 -403 -377
		mu 0 4 300 239 243 303
		f 4 -401 -389 402 -391
		mu 0 4 245 306 303 243
		f 4 403 -394 -398 -388
		mu 0 4 281 279 275 278
		f 4 412 413 414 415
		mu 0 4 309 310 311 312
		f 4 -428 416 -413 417
		mu 0 4 313 314 310 309
		f 4 421 422 423 424
		mu 0 4 273 316 315 318
		f 4 427 428 -423 429
		mu 0 4 314 313 315 316
		f 4 434 -415 435 -412
		mu 0 4 248 287 288 285
		f 4 -435 -419 -437 -416
		mu 0 4 287 248 247 251
		f 4 436 -434 -444 -418
		mu 0 4 251 247 253 255
		f 4 -436 -414 437 -420
		mu 0 4 219 311 310 220
		f 4 438 -424 439 -421
		mu 0 4 264 266 260 258
		f 4 -439 -426 440 -425
		mu 0 4 266 264 271 273
		f 4 -441 -431 -443 -422
		mu 0 4 273 271 227 316
		f 4 -438 -417 441 -427
		mu 0 4 220 310 314 223
		f 4 442 -433 -442 -430
		mu 0 4 316 227 223 314
		f 4 -440 -429 443 -432
		mu 0 4 258 260 255 253
		f 4 575 564 512 -562
		mu 0 4 319 320 321 322
		f 4 574 560 516 515
		mu 0 4 359 360 361 362
		f 4 581 562 523 -564
		mu 0 4 336 380 381 337
		f 4 -561 567 561 514
		mu 0 4 361 360 409 410
		f 4 586 563 506 -566
		mu 0 4 330 336 337 331
		f 4 576 -520 522 -563
		mu 0 4 380 373 374 381
		f 4 588 565 508 -567
		mu 0 4 325 330 331 326
		f 4 587 -518 520 519
		mu 0 4 373 367 368 374
		f 4 582 566 510 -565
		mu 0 4 320 325 326 321
		f 4 589 -516 518 517
		mu 0 4 367 359 362 368
		f 4 -447 444 540 -446
		mu 0 4 349 353 356 354
		f 4 -449 445 546 -448
		mu 0 4 345 349 354 350
		f 4 -451 447 548 -450
		mu 0 4 340 345 350 346
		f 4 -453 449 542 -452
		mu 0 4 341 340 346 347
		f 4 541 -454 -455 451
		mu 0 4 419 383 376 418
		f 4 -457 453 531 524
		mu 0 4 377 376 383 384
		f 4 -459 -525 535 526
		mu 0 4 385 377 384 393
		f 4 -461 -527 549 525
		mu 0 4 394 385 393 398
		f 4 -463 -526 547 -462
		mu 0 4 399 394 398 402
		f 4 -464 461 539 -445
		mu 0 4 353 399 402 356
		f 4 -467 464 446 -466
		mu 0 4 344 348 353 349
		f 4 -469 465 448 -468
		mu 0 4 339 344 349 345
		f 4 -471 467 450 -470
		mu 0 4 333 339 345 340
		f 4 -473 469 452 -472
		mu 0 4 334 333 340 341
		f 4 -474 -475 471 454
		mu 0 4 376 370 416 418
		f 4 -477 473 456 455
		mu 0 4 371 370 376 377
		f 4 -479 -456 458 457
		mu 0 4 378 371 377 385
		f 4 -481 -458 460 459
		mu 0 4 386 378 385 394
		f 4 -483 -460 462 -482
		mu 0 4 395 386 394 399
		f 4 -484 481 463 -465
		mu 0 4 348 395 399 353
		f 4 -487 484 466 -486
		mu 0 4 338 343 348 344
		f 4 -489 485 468 -488
		mu 0 4 332 338 344 339
		f 4 -491 487 470 -490
		mu 0 4 327 332 339 333
		f 4 -493 489 472 -492
		mu 0 4 328 327 333 334
		f 4 -494 -495 491 474
		mu 0 4 370 365 414 416
		f 4 -497 493 476 475
		mu 0 4 366 365 370 371
		f 4 -499 -476 478 477
		mu 0 4 372 366 371 378
		f 4 -501 -478 480 479
		mu 0 4 379 372 378 386
		f 4 -503 -480 482 -502
		mu 0 4 387 379 386 395
		f 4 -504 501 483 -485
		mu 0 4 343 387 395 348
		f 4 -507 504 486 -506
		mu 0 4 331 337 343 338
		f 4 -509 505 488 -508
		mu 0 4 326 331 338 332
		f 4 -511 507 490 -510
		mu 0 4 321 326 332 327
		f 4 -513 509 492 -512
		mu 0 4 322 321 327 328
		f 4 -514 -515 511 494
		mu 0 4 365 361 410 414
		f 4 -517 513 496 495
		mu 0 4 362 361 365 366
		f 4 -519 -496 498 497
		mu 0 4 368 362 366 372
		f 4 -521 -498 500 499
		mu 0 4 374 368 372 379
		f 4 -523 -500 502 -522
		mu 0 4 381 374 379 387
		f 4 -524 521 503 -505
		mu 0 4 337 381 387 343
		f 4 527 528 529 530
		mu 0 4 351 352 425 426
		f 4 532 533 534 -529
		mu 0 4 352 355 428 425
		f 4 -546 536 537 538
		mu 0 4 429 357 358 432
		f 4 543 -534 544 545
		mu 0 4 429 428 355 357
		f 4 550 -542 551 -531
		mu 0 4 391 383 419 422
		f 4 -551 -530 552 -532
		mu 0 4 383 391 392 384
		f 4 -553 -535 553 -536
		mu 0 4 384 392 397 393
		f 4 554 -548 -560 -539
		mu 0 4 404 402 398 401
		f 4 -555 -538 555 -540
		mu 0 4 402 404 358 356
		f 4 -556 -537 556 -541
		mu 0 4 356 358 357 354
		f 4 -552 -543 -558 -528
		mu 0 4 351 347 346 352
		f 4 557 -549 -559 -533
		mu 0 4 352 346 350 355
		f 4 -557 -545 558 -547
		mu 0 4 354 357 355 350
		f 4 559 -550 -554 -544
		mu 0 4 401 398 393 397
		f 4 568 569 570 571
		mu 0 4 364 434 412 363
		f 4 -584 572 -569 573
		mu 0 4 369 438 434 364
		f 4 577 578 579 580
		mu 0 4 342 440 375 382
		f 4 583 584 -579 585
		mu 0 4 438 369 375 440
		f 4 590 -571 591 -568
		mu 0 4 360 363 412 409
		f 4 -591 -575 -593 -572
		mu 0 4 363 360 359 364
		f 4 592 -590 -600 -574
		mu 0 4 364 359 367 369
		f 4 -592 -570 593 -576
		mu 0 4 319 323 324 320
		f 4 594 -580 595 -577
		mu 0 4 380 382 375 373
		f 4 -595 -582 596 -581
		mu 0 4 382 380 336 342
		f 4 -597 -587 -599 -578
		mu 0 4 342 336 330 335
		f 4 -594 -573 597 -583
		mu 0 4 320 324 329 325
		f 4 598 -589 -598 -586
		mu 0 4 335 330 325 329
		f 4 -596 -585 599 -588
		mu 0 4 373 375 369 367
		f 4 731 720 668 -718
		mu 0 4 480 473 474 481
		f 4 730 716 672 671
		mu 0 4 510 516 517 511
		f 4 737 718 679 -720
		mu 0 4 443 444 445 446
		f 4 -717 723 717 670
		mu 0 4 517 516 480 481
		f 4 742 719 662 -722
		mu 0 4 459 443 446 462
		f 4 732 -676 678 -719
		mu 0 4 499 500 501 502
		f 4 744 721 664 -723
		mu 0 4 467 459 462 468
		f 4 743 -674 676 675
		mu 0 4 500 505 506 501
		f 4 738 722 666 -721
		mu 0 4 473 467 468 474
		f 4 745 -672 674 673
		mu 0 4 505 510 511 506
		f 4 -603 600 696 -602
		mu 0 4 477 454 456 484
		f 4 -605 601 702 -604
		mu 0 4 485 477 484 490
		f 4 -607 603 704 -606
		mu 0 4 491 485 490 494
		f 4 -609 605 698 -608
		mu 0 4 495 491 494 497
		f 4 697 -610 -611 607
		mu 0 4 497 542 538 495
		f 4 -613 609 687 680
		mu 0 4 533 538 542 539
		f 4 -615 -681 691 682
		mu 0 4 527 533 539 534
		f 4 -617 -683 705 681
		mu 0 4 520 527 534 528
		f 4 -619 -682 703 -618
		mu 0 4 521 520 528 529
		f 4 -620 617 695 -601
		mu 0 4 454 453 455 456
		f 4 -623 620 602 -622
		mu 0 4 471 452 454 477
		f 4 -625 621 604 -624
		mu 0 4 478 471 477 485
		f 4 -627 623 606 -626
		mu 0 4 486 478 485 491
		f 4 -629 625 608 -628
		mu 0 4 492 486 491 495
		f 4 -630 -631 627 610
		mu 0 4 538 532 492 495
		f 4 -633 629 612 611
		mu 0 4 526 532 538 533
		f 4 -635 -612 614 613
		mu 0 4 519 526 533 527
		f 4 -637 -614 616 615
		mu 0 4 513 519 527 520
		f 4 -639 -616 618 -638
		mu 0 4 514 513 520 521
		f 4 -640 637 619 -621
		mu 0 4 452 451 453 454
		f 4 -643 640 622 -642
		mu 0 4 466 450 452 471
		f 4 -645 641 624 -644
		mu 0 4 472 466 471 478
		f 4 -647 643 626 -646
		mu 0 4 479 472 478 486
		f 4 -649 645 628 -648
		mu 0 4 487 479 486 492
		f 4 -650 -651 647 630
		mu 0 4 532 525 487 492
		f 4 -653 649 632 631
		mu 0 4 518 525 532 526
		f 4 -655 -632 634 633
		mu 0 4 512 518 526 519
		f 4 -657 -634 636 635
		mu 0 4 507 512 519 513
		f 4 -659 -636 638 -658
		mu 0 4 508 507 513 514
		f 4 -660 657 639 -641
		mu 0 4 450 449 451 452
		f 4 -663 660 642 -662
		mu 0 4 462 446 450 466
		f 4 -665 661 644 -664
		mu 0 4 468 462 466 472
		f 4 -667 663 646 -666
		mu 0 4 474 468 472 479
		f 4 -669 665 648 -668
		mu 0 4 481 474 479 487
		f 4 -670 -671 667 650
		mu 0 4 525 517 481 487
		f 4 -673 669 652 651
		mu 0 4 511 517 525 518
		f 4 -675 -652 654 653
		mu 0 4 506 511 518 512
		f 4 -677 -654 656 655
		mu 0 4 501 506 512 507
		f 4 -679 -656 658 -678
		mu 0 4 502 501 507 508
		f 4 -680 677 659 -661
		mu 0 4 446 445 449 450
		f 4 683 684 685 686
		mu 0 4 547 548 543 545
		f 4 688 689 690 -685
		mu 0 4 548 551 540 543
		f 4 -702 692 693 694
		mu 0 4 536 554 555 535
		f 4 699 -690 700 701
		mu 0 4 536 540 551 554
		f 4 706 -698 707 -687
		mu 0 4 545 542 497 546
		f 4 -707 -686 708 -688
		mu 0 4 542 545 543 539
		f 4 -709 -691 709 -692
		mu 0 4 539 543 540 534
		f 4 710 -704 -716 -695
		mu 0 4 535 529 528 536
		f 4 -711 -694 711 -696
		mu 0 4 455 457 458 456
		f 4 -712 -693 712 -697
		mu 0 4 456 488 489 484
		f 4 -708 -699 -714 -684
		mu 0 4 498 497 494 496
		f 4 713 -705 -715 -689
		mu 0 4 496 494 490 493
		f 4 -713 -701 714 -703
		mu 0 4 484 489 493 490
		f 4 715 -706 -710 -700
		mu 0 4 536 528 534 540
		f 4 724 725 726 727
		mu 0 4 557 475 482 560
		f 4 -740 728 -725 729
		mu 0 4 561 469 475 557
		f 4 733 734 735 736
		mu 0 4 463 464 563 566
		f 4 739 740 -735 741
		mu 0 4 469 561 563 464
		f 4 746 -727 747 -724
		mu 0 4 516 522 530 480
		f 4 -747 -731 -749 -728
		mu 0 4 522 516 510 515
		f 4 748 -746 -756 -730
		mu 0 4 515 510 505 509
		f 4 -748 -726 749 -732
		mu 0 4 480 482 475 473
		f 4 750 -736 751 -733
		mu 0 4 499 503 504 500
		f 4 -751 -738 752 -737
		mu 0 4 447 444 443 448
		f 4 -753 -743 -755 -734
		mu 0 4 463 443 459 464
		f 4 -750 -729 753 -739
		mu 0 4 473 475 469 467
		f 4 754 -745 -754 -742
		mu 0 4 464 459 467 469
		f 4 -752 -741 755 -744
		mu 0 4 500 504 509 505
		f 4 887 876 824 -874
		mu 0 4 585 644 645 586
		f 4 886 872 828 827
		mu 0 4 587 584 583 588
		f 4 893 874 835 -876
		mu 0 4 567 568 569 570
		f 4 -873 879 873 826
		mu 0 4 583 584 585 586
		f 4 898 875 818 -878
		mu 0 4 631 632 633 634
		f 4 888 -832 834 -875
		mu 0 4 568 602 603 569
		f 4 900 877 820 -879
		mu 0 4 639 631 634 640
		f 4 899 -830 832 831
		mu 0 4 602 594 595 603
		f 4 894 878 822 -877
		mu 0 4 644 639 640 645
		f 4 901 -828 830 829
		mu 0 4 594 587 588 595
		f 4 -759 756 852 -758
		mu 0 4 647 646 652 653
		f 4 -761 757 858 -760
		mu 0 4 654 647 653 659
		f 4 -763 759 860 -762
		mu 0 4 660 654 659 662
		f 4 -765 761 854 -764
		mu 0 4 605 660 662 612
		f 4 853 -766 -767 763
		mu 0 4 612 613 604 605
		f 4 -769 765 843 836
		mu 0 4 606 604 613 614
		f 4 -771 -837 847 838
		mu 0 4 615 606 614 621
		f 4 -773 -839 861 837
		mu 0 4 622 615 621 626
		f 4 -775 -838 859 -774
		mu 0 4 577 622 626 579
		f 4 -776 773 851 -757
		mu 0 4 578 577 579 580
		f 4 -779 776 758 -778
		mu 0 4 642 641 646 647
		f 4 -781 777 760 -780
		mu 0 4 648 642 647 654
		f 4 -783 779 762 -782
		mu 0 4 655 648 654 660
		f 4 -785 781 764 -784
		mu 0 4 597 655 660 605
		f 4 -786 -787 783 766
		mu 0 4 604 596 597 605
		f 4 -789 785 768 767
		mu 0 4 598 596 604 606
		f 4 -791 -768 770 769
		mu 0 4 607 598 606 615
		f 4 -793 -770 772 771
		mu 0 4 616 607 615 622
		f 4 -795 -772 774 -794
		mu 0 4 575 616 622 577
		f 4 -796 793 775 -777
		mu 0 4 576 575 577 578
		f 4 -799 796 778 -798
		mu 0 4 638 637 641 642
		f 4 -801 797 780 -800
		mu 0 4 643 638 642 648
		f 4 -803 799 782 -802
		mu 0 4 649 643 648 655
		f 4 -805 801 784 -804
		mu 0 4 592 649 655 597
		f 4 -806 -807 803 786
		mu 0 4 596 591 592 597
		f 4 -809 805 788 787
		mu 0 4 593 591 596 598
		f 4 -811 -788 790 789
		mu 0 4 599 593 598 607
		f 4 -813 -790 792 791
		mu 0 4 608 599 607 616
		f 4 -815 -792 794 -814
		mu 0 4 573 608 616 575
		f 4 -816 813 795 -797
		mu 0 4 574 573 575 576
		f 4 -819 816 798 -818
		mu 0 4 634 633 637 638
		f 4 -821 817 800 -820
		mu 0 4 640 634 638 643
		f 4 -823 819 802 -822
		mu 0 4 645 640 643 649
		f 4 -825 821 804 -824
		mu 0 4 586 645 649 592
		f 4 -826 -827 823 806
		mu 0 4 591 583 586 592
		f 4 -829 825 808 807
		mu 0 4 588 583 591 593
		f 4 -831 -808 810 809
		mu 0 4 595 588 593 599
		f 4 -833 -810 812 811
		mu 0 4 603 595 599 608
		f 4 -835 -812 814 -834
		mu 0 4 569 603 608 573
		f 4 -836 833 815 -817
		mu 0 4 570 569 573 574
		f 4 839 840 841 842
		mu 0 4 665 666 673 668
		f 4 844 845 846 -841
		mu 0 4 666 671 672 667
		f 4 -858 848 849 850
		mu 0 4 676 658 657 680
		f 4 855 -846 856 857
		mu 0 4 676 672 671 658
		f 4 862 -854 863 -843
		mu 0 4 619 613 612 620
		f 4 -863 -842 864 -844
		mu 0 4 613 619 624 614
		f 4 -865 -847 865 -848
		mu 0 4 614 624 625 621
		f 4 866 -860 -872 -851
		mu 0 4 581 579 626 628
		f 4 -867 -850 867 -852
		mu 0 4 579 581 582 580
		f 4 -868 -849 868 -853
		mu 0 4 652 657 658 653
		f 4 -864 -855 -870 -840
		mu 0 4 665 612 662 666
		f 4 869 -861 -871 -845
		mu 0 4 666 662 659 671
		f 4 -869 -857 870 -859
		mu 0 4 653 658 671 659
		f 4 871 -862 -866 -856
		mu 0 4 628 626 621 625
		f 4 880 881 882 883
		mu 0 4 689 682 683 684
		f 4 -896 884 -881 885
		mu 0 4 685 686 682 681
		f 4 889 890 891 892
		mu 0 4 635 636 691 695
		f 4 895 896 -891 897
		mu 0 4 686 685 691 636
		f 4 902 -883 903 -880
		mu 0 4 584 589 590 585
		f 4 -903 -887 -905 -884
		mu 0 4 589 584 587 600
		f 4 904 -902 -912 -886
		mu 0 4 600 587 594 601
		f 4 -904 -882 905 -888
		mu 0 4 585 683 682 644
		f 4 906 -892 907 -889
		mu 0 4 568 571 609 602
		f 4 -907 -894 908 -893
		mu 0 4 571 568 567 572
		f 4 -909 -899 -911 -890
		mu 0 4 635 632 631 636
		f 4 -906 -885 909 -895
		mu 0 4 644 682 686 639
		f 4 910 -901 -910 -898
		mu 0 4 636 631 639 686
		f 4 -908 -897 911 -900
		mu 0 4 602 609 601 594
		f 4 1043 1032 980 -1030
		mu 0 4 734 727 728 735
		f 4 1042 1028 984 983
		mu 0 4 759 765 766 760
		f 4 1049 1030 991 -1032
		mu 0 4 697 698 699 700
		f 4 -1029 1035 1029 982
		mu 0 4 766 765 734 735
		f 4 1054 1031 974 -1034
		mu 0 4 713 714 715 716
		f 4 1044 -988 990 -1031
		mu 0 4 698 749 750 699
		f 4 1056 1033 976 -1035
		mu 0 4 721 713 716 722
		f 4 1055 -986 988 987
		mu 0 4 749 754 755 750
		f 4 1050 1034 978 -1033
		mu 0 4 727 721 722 728
		f 4 1057 -984 986 985
		mu 0 4 754 759 760 755
		f 4 -915 912 1008 -914
		mu 0 4 731 730 737 738
		f 4 -917 913 1014 -916
		mu 0 4 739 731 738 742
		f 4 -919 915 1016 -918
		mu 0 4 743 739 742 745
		f 4 -921 917 1010 -920
		mu 0 4 746 743 745 747
		f 4 1009 -922 -923 919
		mu 0 4 747 790 786 746
		f 4 -925 921 999 992
		mu 0 4 781 786 790 787
		f 4 -927 -993 1003 994
		mu 0 4 776 781 787 782
		f 4 -929 -995 1017 993
		mu 0 4 769 776 782 777
		f 4 -931 -994 1015 -930
		mu 0 4 707 769 777 709
		f 4 -932 929 1007 -913
		mu 0 4 708 707 709 710
		f 4 -935 932 914 -934
		mu 0 4 725 724 730 731
		f 4 -937 933 916 -936
		mu 0 4 732 725 731 739
		f 4 -939 935 918 -938
		mu 0 4 740 732 739 743
		f 4 -941 937 920 -940
		mu 0 4 744 740 743 746
		f 4 -942 -943 939 922
		mu 0 4 786 780 744 746
		f 4 -945 941 924 923
		mu 0 4 775 780 786 781
		f 4 -947 -924 926 925
		mu 0 4 768 775 781 776
		f 4 -949 -926 928 927
		mu 0 4 762 768 776 769
		f 4 -951 -928 930 -950
		mu 0 4 705 762 769 707
		f 4 -952 949 931 -933
		mu 0 4 706 705 707 708
		f 4 -955 952 934 -954
		mu 0 4 720 719 724 725
		f 4 -957 953 936 -956
		mu 0 4 726 720 725 732
		f 4 -959 955 938 -958
		mu 0 4 733 726 732 740
		f 4 -961 957 940 -960
		mu 0 4 741 733 740 744
		f 4 -962 -963 959 942
		mu 0 4 780 774 741 744
		f 4 -965 961 944 943
		mu 0 4 767 774 780 775
		f 4 -967 -944 946 945
		mu 0 4 761 767 775 768
		f 4 -969 -946 948 947
		mu 0 4 756 761 768 762
		f 4 -971 -948 950 -970
		mu 0 4 703 756 762 705
		f 4 -972 969 951 -953
		mu 0 4 704 703 705 706
		f 4 -975 972 954 -974
		mu 0 4 716 715 719 720
		f 4 -977 973 956 -976
		mu 0 4 722 716 720 726
		f 4 -979 975 958 -978
		mu 0 4 728 722 726 733
		f 4 -981 977 960 -980
		mu 0 4 735 728 733 741;
	setAttr ".fc[500:999]"
		f 4 -982 -983 979 962
		mu 0 4 774 766 735 741
		f 4 -985 981 964 963
		mu 0 4 760 766 774 767
		f 4 -987 -964 966 965
		mu 0 4 755 760 767 761
		f 4 -989 -966 968 967
		mu 0 4 750 755 761 756
		f 4 -991 -968 970 -990
		mu 0 4 699 750 756 703
		f 4 -992 989 971 -973
		mu 0 4 700 699 703 704
		f 4 995 996 997 998
		mu 0 4 794 796 791 793
		f 4 1000 1001 1002 -997
		mu 0 4 796 801 788 791
		f 4 -1014 1004 1005 1006
		mu 0 4 784 805 712 711
		f 4 1011 -1002 1012 1013
		mu 0 4 784 788 801 805
		f 4 1018 -1010 1019 -999
		mu 0 4 793 790 747 794
		f 4 -1019 -998 1020 -1000
		mu 0 4 790 793 791 787
		f 4 -1021 -1003 1021 -1004
		mu 0 4 787 791 788 782
		f 4 1022 -1016 -1028 -1007
		mu 0 4 711 709 777 784
		f 4 -1023 -1006 1023 -1008
		mu 0 4 709 711 712 710
		f 4 -1024 -1005 1024 -1009
		mu 0 4 710 712 805 806
		f 4 -1020 -1011 -1026 -996
		mu 0 4 794 747 800 796
		f 4 1025 -1017 -1027 -1001
		mu 0 4 796 800 803 801
		f 4 -1025 -1013 1026 -1015
		mu 0 4 806 805 801 803
		f 4 1027 -1018 -1022 -1012
		mu 0 4 784 777 782 788
		f 4 -1041 1036 1037 1038
		mu 0 4 810 729 736 813
		f 4 -1052 1039 1040 1041
		mu 0 4 814 723 729 810
		f 4 1045 1046 1047 1048
		mu 0 4 717 718 818 821
		f 4 1051 1052 -1047 1053
		mu 0 4 723 814 818 718
		f 4 1058 -1038 1059 -1036
		mu 0 4 816 813 736 734
		f 4 -1059 -1043 -1061 -1039
		mu 0 4 771 765 759 764
		f 4 1060 -1058 -1068 -1042
		mu 0 4 764 759 754 758
		f 4 -1060 -1037 1061 -1044
		mu 0 4 734 736 729 727
		f 4 1062 -1048 1063 -1045
		mu 0 4 698 701 753 749
		f 4 -1063 -1050 1064 -1049
		mu 0 4 701 698 697 702
		f 4 -1065 -1055 -1067 -1046
		mu 0 4 717 714 713 718
		f 4 -1062 -1040 1065 -1051
		mu 0 4 727 729 723 721
		f 4 1066 -1057 -1066 -1054
		mu 0 4 718 713 721 723
		f 4 -1064 -1053 1067 -1056
		mu 0 4 749 753 758 754
		f 4 1199 1188 1136 -1186
		mu 0 4 840 899 900 841
		f 4 1198 1184 1140 1139
		mu 0 4 842 839 838 843
		f 4 1205 1186 1147 -1188
		mu 0 4 822 823 824 825
		f 4 -1185 1191 1185 1138
		mu 0 4 838 839 840 841
		f 4 1210 1187 1130 -1190
		mu 0 4 885 822 825 888
		f 4 1200 -1144 1146 -1187
		mu 0 4 864 855 856 865
		f 4 1212 1189 1132 -1191
		mu 0 4 893 885 888 894
		f 4 1211 -1142 1144 1143
		mu 0 4 855 849 850 856
		f 4 1206 1190 1134 -1189
		mu 0 4 899 893 894 900
		f 4 1213 -1140 1142 1141
		mu 0 4 849 842 843 850
		f 4 -1071 1068 1164 -1070
		mu 0 4 903 833 835 909
		f 4 -1073 1069 1170 -1072
		mu 0 4 910 903 909 913
		f 4 -1075 1071 1172 -1074
		mu 0 4 914 910 913 916
		f 4 -1077 1073 1166 -1076
		mu 0 4 858 914 916 866
		f 4 1165 -1078 -1079 1075
		mu 0 4 866 867 857 858
		f 4 -1081 1077 1155 1148
		mu 0 4 859 857 867 868
		f 4 -1083 -1149 1159 1150
		mu 0 4 869 859 868 875
		f 4 -1085 -1151 1173 1149
		mu 0 4 876 869 875 880
		f 4 -1087 -1150 1171 -1086
		mu 0 4 881 876 880 883
		f 4 -1088 1085 1163 -1069
		mu 0 4 833 832 834 835
		f 4 -1091 1088 1070 -1090
		mu 0 4 897 831 833 903
		f 4 -1093 1089 1072 -1092
		mu 0 4 904 897 903 910
		f 4 -1095 1091 1074 -1094
		mu 0 4 911 904 910 914
		f 4 -1097 1093 1076 -1096
		mu 0 4 852 911 914 858
		f 4 -1098 -1099 1095 1078
		mu 0 4 857 851 852 858
		f 4 -1101 1097 1080 1079
		mu 0 4 853 851 857 859
		f 4 -1103 -1080 1082 1081
		mu 0 4 860 853 859 869
		f 4 -1105 -1082 1084 1083
		mu 0 4 870 860 869 876
		f 4 -1107 -1084 1086 -1106
		mu 0 4 877 870 876 881
		f 4 -1108 1105 1087 -1089
		mu 0 4 831 830 832 833
		f 4 -1111 1108 1090 -1110
		mu 0 4 892 829 831 897
		f 4 -1113 1109 1092 -1112
		mu 0 4 898 892 897 904
		f 4 -1115 1111 1094 -1114
		mu 0 4 905 898 904 911
		f 4 -1117 1113 1096 -1116
		mu 0 4 847 905 911 852
		f 4 -1118 -1119 1115 1098
		mu 0 4 851 846 847 852
		f 4 -1121 1117 1100 1099
		mu 0 4 848 846 851 853
		f 4 -1123 -1100 1102 1101
		mu 0 4 854 848 853 860
		f 4 -1125 -1102 1104 1103
		mu 0 4 861 854 860 870
		f 4 -1127 -1104 1106 -1126
		mu 0 4 871 861 870 877
		f 4 -1128 1125 1107 -1109
		mu 0 4 829 828 830 831
		f 4 -1131 1128 1110 -1130
		mu 0 4 888 825 829 892
		f 4 -1133 1129 1112 -1132
		mu 0 4 894 888 892 898
		f 4 -1135 1131 1114 -1134
		mu 0 4 900 894 898 905
		f 4 -1137 1133 1116 -1136
		mu 0 4 841 900 905 847
		f 4 -1138 -1139 1135 1118
		mu 0 4 846 838 841 847
		f 4 -1141 1137 1120 1119
		mu 0 4 843 838 846 848
		f 4 -1143 -1120 1122 1121
		mu 0 4 850 843 848 854
		f 4 -1145 -1122 1124 1123
		mu 0 4 856 850 854 861
		f 4 -1147 -1124 1126 -1146
		mu 0 4 865 856 861 871
		f 4 -1148 1145 1127 -1129
		mu 0 4 825 824 828 829
		f 4 1151 1152 1153 1154
		mu 0 4 919 920 926 921
		f 4 1156 1157 1158 -1153
		mu 0 4 920 924 925 926
		f 4 -1170 1160 1161 1162
		mu 0 4 929 930 932 933
		f 4 1167 -1158 1168 1169
		mu 0 4 929 925 924 930
		f 4 1174 -1166 1175 -1155
		mu 0 4 873 867 866 874
		f 4 -1175 -1154 1176 -1156
		mu 0 4 867 873 878 868
		f 4 -1177 -1159 1177 -1160
		mu 0 4 868 878 879 875
		f 4 1178 -1172 -1184 -1163
		mu 0 4 884 883 880 882
		f 4 -1179 -1162 1179 -1164
		mu 0 4 834 836 837 835
		f 4 -1180 -1161 1180 -1165
		mu 0 4 835 932 930 909
		f 4 -1176 -1167 -1182 -1152
		mu 0 4 919 866 916 920
		f 4 1181 -1173 -1183 -1157
		mu 0 4 920 916 913 924
		f 4 -1181 -1169 1182 -1171
		mu 0 4 909 930 924 913
		f 4 1183 -1174 -1178 -1168
		mu 0 4 882 880 875 879
		f 4 -1197 1192 1193 1194
		mu 0 4 935 941 940 844
		f 4 -1208 1195 1196 1197
		mu 0 4 863 939 941 935
		f 4 1201 1202 1203 1204
		mu 0 4 947 945 862 872
		f 4 1207 1208 -1203 1209
		mu 0 4 939 863 862 945
		f 4 1214 -1194 1215 -1192
		mu 0 4 839 844 845 840
		f 4 -1215 -1199 -1217 -1195
		mu 0 4 844 839 842 935
		f 4 1216 -1214 -1224 -1198
		mu 0 4 935 842 849 863
		f 4 -1216 -1193 1217 -1200
		mu 0 4 840 845 901 899
		f 4 1218 -1204 1219 -1201
		mu 0 4 864 872 862 855
		f 4 -1219 -1206 1220 -1205
		mu 0 4 826 823 822 827
		f 4 -1221 -1211 -1223 -1202
		mu 0 4 827 822 885 890
		f 4 -1218 -1196 1221 -1207
		mu 0 4 899 901 895 893
		f 4 1222 -1213 -1222 -1210
		mu 0 4 890 885 893 895
		f 4 -1220 -1209 1223 -1212
		mu 0 4 855 862 863 849
		f 4 1355 1344 1292 -1342
		mu 0 4 1026 1019 1020 1027
		f 4 1354 1340 1296 1295
		mu 0 4 967 964 963 968
		f 4 1361 1342 1303 -1344
		mu 0 4 949 950 951 952
		f 4 -1341 1347 1341 1294
		mu 0 4 963 964 965 966
		f 4 1366 1343 1286 -1346
		mu 0 4 1005 949 952 1008
		f 4 1356 -1300 1302 -1343
		mu 0 4 950 977 978 951
		f 4 1368 1345 1288 -1347
		mu 0 4 1013 1005 1008 1014
		f 4 1367 -1298 1300 1299
		mu 0 4 977 972 973 978
		f 4 1362 1346 1290 -1345
		mu 0 4 1019 1013 1014 1020
		f 4 1369 -1296 1298 1297
		mu 0 4 972 967 968 973
		f 4 -1227 1224 1320 -1226
		mu 0 4 1023 958 960 1030
		f 4 -1229 1225 1326 -1228
		mu 0 4 1031 1023 1030 1034
		f 4 -1231 1227 1328 -1230
		mu 0 4 1035 1031 1034 1036
		f 4 -1233 1229 1322 -1232
		mu 0 4 1040 1035 1036 1044
		f 4 1321 -1234 -1235 1231
		mu 0 4 986 987 979 980
		f 4 -1237 1233 1311 1304
		mu 0 4 988 979 987 994
		f 4 -1239 -1305 1315 1306
		mu 0 4 989 988 994 995
		f 4 -1241 -1307 1329 1305
		mu 0 4 996 989 995 1000
		f 4 -1243 -1306 1327 -1242
		mu 0 4 957 996 1000 959
		f 4 -1244 1241 1319 -1225
		mu 0 4 958 957 959 960
		f 4 -1247 1244 1226 -1246
		mu 0 4 1017 956 958 1023
		f 4 -1249 1245 1228 -1248
		mu 0 4 1024 1017 1023 1031
		f 4 -1251 1247 1230 -1250
		mu 0 4 1032 1024 1031 1035
		f 4 -1253 1249 1232 -1252
		mu 0 4 1037 1032 1035 1040
		f 4 -1254 -1255 1251 1234
		mu 0 4 979 974 975 980
		f 4 -1257 1253 1236 1235
		mu 0 4 981 974 979 988
		f 4 -1259 -1236 1238 1237
		mu 0 4 982 981 988 989
		f 4 -1261 -1238 1240 1239
		mu 0 4 990 982 989 996
		f 4 -1263 -1240 1242 -1262
		mu 0 4 955 990 996 957
		f 4 -1264 1261 1243 -1245
		mu 0 4 956 955 957 958
		f 4 -1267 1264 1246 -1266
		mu 0 4 1012 954 956 1017
		f 4 -1269 1265 1248 -1268
		mu 0 4 1018 1012 1017 1024
		f 4 -1271 1267 1250 -1270
		mu 0 4 1025 1018 1024 1032
		f 4 -1273 1269 1252 -1272
		mu 0 4 1033 1025 1032 1037
		f 4 -1274 -1275 1271 1254
		mu 0 4 974 969 970 975
		f 4 -1277 1273 1256 1255
		mu 0 4 971 969 974 981
		f 4 -1279 -1256 1258 1257
		mu 0 4 976 971 981 982
		f 4 -1281 -1258 1260 1259
		mu 0 4 983 976 982 990
		f 4 -1283 -1260 1262 -1282
		mu 0 4 953 983 990 955
		f 4 -1284 1281 1263 -1265
		mu 0 4 954 953 955 956
		f 4 -1287 1284 1266 -1286
		mu 0 4 1008 952 954 1012
		f 4 -1289 1285 1268 -1288
		mu 0 4 1014 1008 1012 1018
		f 4 -1291 1287 1270 -1290
		mu 0 4 1020 1014 1018 1025
		f 4 -1293 1289 1272 -1292
		mu 0 4 1027 1020 1025 1033
		f 4 -1294 -1295 1291 1274
		mu 0 4 969 963 966 970
		f 4 -1297 1293 1276 1275
		mu 0 4 968 963 969 971
		f 4 -1299 -1276 1278 1277
		mu 0 4 973 968 971 976
		f 4 -1301 -1278 1280 1279
		mu 0 4 978 973 976 983
		f 4 -1303 -1280 1282 -1302
		mu 0 4 951 978 983 953
		f 4 -1304 1301 1283 -1285
		mu 0 4 952 951 953 954
		f 4 1307 1308 1309 1310
		mu 0 4 1053 1054 998 992
		f 4 1312 1313 1314 -1309
		mu 0 4 1054 1059 999 998
		f 4 -1326 1316 1317 1318
		mu 0 4 1002 1063 1065 1004
		f 4 1323 -1314 1324 1325
		mu 0 4 1002 999 1059 1063
		f 4 1330 -1322 1331 -1311
		mu 0 4 992 987 986 993
		f 4 -1331 -1310 1332 -1312
		mu 0 4 987 992 998 994
		f 4 -1333 -1315 1333 -1316
		mu 0 4 994 998 999 995
		f 4 1334 -1328 -1340 -1319
		mu 0 4 1004 959 1000 1002
		f 4 -1335 -1318 1335 -1320
		mu 0 4 959 961 962 960
		f 4 -1336 -1317 1336 -1321
		mu 0 4 1067 1065 1063 1064
		f 4 -1332 -1323 -1338 -1308
		mu 0 4 1053 1057 1058 1054
		f 4 1337 -1329 -1339 -1313
		mu 0 4 1054 1058 1061 1059
		f 4 -1337 -1325 1338 -1327
		mu 0 4 1064 1063 1059 1061
		f 4 1339 -1330 -1334 -1324
		mu 0 4 1002 1000 995 999
		f 4 -1353 1348 1349 1350
		mu 0 4 1068 1021 1028 1071
		f 4 -1364 1351 1352 1353
		mu 0 4 1072 1015 1021 1068
		f 4 1357 1358 1359 1360
		mu 0 4 1009 1010 1077 1082
		f 4 1363 1364 -1359 1365
		mu 0 4 1015 1072 1077 1010
		f 4 1370 -1350 1371 -1348
		mu 0 4 1074 1071 1028 1075
		f 4 -1371 -1355 -1373 -1351
		mu 0 4 1071 1074 1076 1068
		f 4 1372 -1370 -1380 -1354
		mu 0 4 1068 1076 1079 1072
		f 4 -1372 -1349 1373 -1356
		mu 0 4 1026 1028 1021 1019
		f 4 1374 -1360 1375 -1357
		mu 0 4 1083 1082 1077 1080
		f 4 -1375 -1362 1376 -1361
		mu 0 4 1082 1083 1084 1009
		f 4 -1377 -1367 -1379 -1358
		mu 0 4 1009 949 1005 1010
		f 4 -1374 -1352 1377 -1363
		mu 0 4 1019 1021 1015 1013
		f 4 1378 -1369 -1378 -1366
		mu 0 4 1010 1005 1013 1015
		f 4 -1376 -1365 1379 -1368
		mu 0 4 1080 1077 1072 1079
		f 4 1511 1500 1448 -1498
		mu 0 4 1122 1115 1116 1123
		f 4 1510 1496 1452 1451
		mu 0 4 1144 1149 1150 1145
		f 4 1517 1498 1459 -1500
		mu 0 4 1085 1105 1087 1088
		f 4 -1497 1503 1497 1450
		mu 0 4 1150 1149 1122 1123
		f 4 1522 1499 1442 -1502
		mu 0 4 1101 1102 1103 1104
		f 4 1512 -1456 1458 -1499
		mu 0 4 1105 1137 1138 1087
		f 4 1524 1501 1444 -1503
		mu 0 4 1109 1101 1104 1110
		f 4 1523 -1454 1456 1455
		mu 0 4 1137 1140 1141 1138
		f 4 1518 1502 1446 -1501
		mu 0 4 1115 1109 1110 1116
		f 4 1525 -1452 1454 1453
		mu 0 4 1140 1144 1145 1141
		f 4 -1383 1380 1476 -1382
		mu 0 4 1119 1118 1125 1126
		f 4 -1385 1381 1482 -1384
		mu 0 4 1127 1119 1126 1130
		f 4 -1387 1383 1484 -1386
		mu 0 4 1131 1127 1130 1133
		f 4 -1389 1385 1478 -1388
		mu 0 4 1134 1131 1133 1135
		f 4 1477 -1390 -1391 1387
		mu 0 4 1135 1173 1169 1134
		f 4 -1393 1389 1467 1460
		mu 0 4 1164 1169 1173 1170
		f 4 -1395 -1461 1471 1462
		mu 0 4 1159 1164 1170 1165
		f 4 -1397 -1463 1485 1461
		mu 0 4 1153 1159 1165 1160
		f 4 -1399 -1462 1483 -1398
		mu 0 4 1095 1153 1160 1097
		f 4 -1400 1397 1475 -1381
		mu 0 4 1096 1095 1097 1098
		f 4 -1403 1400 1382 -1402
		mu 0 4 1113 1112 1118 1119
		f 4 -1405 1401 1384 -1404
		mu 0 4 1120 1113 1119 1127
		f 4 -1407 1403 1386 -1406
		mu 0 4 1128 1120 1127 1131
		f 4 -1409 1405 1388 -1408
		mu 0 4 1132 1128 1131 1134
		f 4 -1410 -1411 1407 1390
		mu 0 4 1169 1163 1132 1134
		f 4 -1413 1409 1392 1391
		mu 0 4 1158 1163 1169 1164
		f 4 -1415 -1392 1394 1393
		mu 0 4 1152 1158 1164 1159
		f 4 -1417 -1394 1396 1395
		mu 0 4 1147 1152 1159 1153
		f 4 -1419 -1396 1398 -1418
		mu 0 4 1093 1147 1153 1095
		f 4 -1420 1417 1399 -1401
		mu 0 4 1094 1093 1095 1096
		f 4 -1423 1420 1402 -1422
		mu 0 4 1108 1107 1112 1113
		f 4 -1425 1421 1404 -1424
		mu 0 4 1114 1108 1113 1120
		f 4 -1427 1423 1406 -1426
		mu 0 4 1121 1114 1120 1128
		f 4 -1429 1425 1408 -1428
		mu 0 4 1129 1121 1128 1132
		f 4 -1430 -1431 1427 1410
		mu 0 4 1163 1157 1129 1132
		f 4 -1433 1429 1412 1411
		mu 0 4 1151 1157 1163 1158
		f 4 -1435 -1412 1414 1413
		mu 0 4 1146 1151 1158 1152
		f 4 -1437 -1414 1416 1415
		mu 0 4 1142 1146 1152 1147
		f 4 -1439 -1416 1418 -1438
		mu 0 4 1091 1142 1147 1093
		f 4 -1440 1437 1419 -1421
		mu 0 4 1092 1091 1093 1094
		f 4 -1443 1440 1422 -1442
		mu 0 4 1104 1103 1107 1108
		f 4 -1445 1441 1424 -1444
		mu 0 4 1110 1104 1108 1114
		f 4 -1447 1443 1426 -1446
		mu 0 4 1116 1110 1114 1121
		f 4 -1449 1445 1428 -1448
		mu 0 4 1123 1116 1121 1129
		f 4 -1450 -1451 1447 1430
		mu 0 4 1157 1150 1123 1129
		f 4 -1453 1449 1432 1431
		mu 0 4 1145 1150 1157 1151
		f 4 -1455 -1432 1434 1433
		mu 0 4 1141 1145 1151 1146
		f 4 -1457 -1434 1436 1435
		mu 0 4 1138 1141 1146 1142
		f 4 -1459 -1436 1438 -1458
		mu 0 4 1087 1138 1142 1091
		f 4 -1460 1457 1439 -1441
		mu 0 4 1088 1087 1091 1092
		f 4 1463 1464 1465 1466
		mu 0 4 1177 1179 1174 1176
		f 4 1468 1469 1470 -1465
		mu 0 4 1179 1184 1171 1174
		f 4 -1482 1472 1473 1474
		mu 0 4 1167 1188 1100 1099
		f 4 1479 -1470 1480 1481
		mu 0 4 1167 1171 1184 1188
		f 4 1486 -1478 1487 -1467
		mu 0 4 1176 1173 1135 1177
		f 4 -1487 -1466 1488 -1468
		mu 0 4 1173 1176 1174 1170
		f 4 -1489 -1471 1489 -1472
		mu 0 4 1170 1174 1171 1165
		f 4 1490 -1484 -1496 -1475
		mu 0 4 1099 1097 1160 1167
		f 4 -1491 -1474 1491 -1476
		mu 0 4 1097 1099 1100 1098
		f 4 -1492 -1473 1492 -1477
		mu 0 4 1098 1100 1188 1189
		f 4 -1488 -1479 -1494 -1464
		mu 0 4 1177 1135 1183 1179
		f 4 1493 -1485 -1495 -1469
		mu 0 4 1179 1183 1186 1184
		f 4 -1493 -1481 1494 -1483
		mu 0 4 1189 1188 1184 1186
		f 4 1495 -1486 -1490 -1480
		mu 0 4 1167 1160 1165 1171
		f 4 -1509 1504 1505 1506
		mu 0 4 1193 1117 1124 1196
		f 4 -1520 1507 1508 1509
		mu 0 4 1197 1111 1117 1193
		f 4 1513 1514 1515 1516
		mu 0 4 1090 1106 1202 1089
		f 4 1519 1520 -1515 1521
		mu 0 4 1111 1197 1202 1106
		f 4 1526 -1506 1527 -1504
		mu 0 4 1199 1196 1124 1122
		f 4 -1527 -1511 -1529 -1507
		mu 0 4 1196 1199 1201 1193
		f 4 1528 -1526 -1536 -1510
		mu 0 4 1193 1201 1204 1197
		f 4 -1528 -1505 1529 -1512
		mu 0 4 1122 1124 1117 1115
		f 4 1530 -1516 1531 -1513
		mu 0 4 1086 1089 1202 1205
		f 4 -1531 -1518 1532 -1517
		mu 0 4 1089 1086 1102 1090
		f 4 -1533 -1523 -1535 -1514
		mu 0 4 1090 1102 1101 1106
		f 4 -1530 -1508 1533 -1519
		mu 0 4 1115 1117 1111 1109
		f 4 1534 -1525 -1534 -1522
		mu 0 4 1106 1101 1109 1111
		f 4 -1532 -1521 1535 -1524
		mu 0 4 1205 1202 1197 1204
		f 4 1667 1656 1604 -1654
		mu 0 4 1209 1210 1211 1212
		f 4 1666 1652 1608 1607
		mu 0 4 1244 1245 1246 1247
		f 4 1673 1654 1615 -1656
		mu 0 4 1226 1261 1262 1227
		f 4 -1653 1659 1653 1606
		mu 0 4 1287 1288 1209 1212
		f 4 1678 1655 1598 -1658
		mu 0 4 1220 1226 1227 1221
		f 4 1668 -1612 1614 -1655
		mu 0 4 1261 1255 1256 1262
		f 4 1680 1657 1600 -1659
		mu 0 4 1215 1220 1221 1216
		f 4 1679 -1610 1612 1611
		mu 0 4 1255 1250 1251 1256
		f 4 1674 1658 1602 -1657
		mu 0 4 1210 1215 1216 1211
		f 4 1681 -1608 1610 1609
		mu 0 4 1250 1244 1247 1251
		f 4 -1539 1536 1632 -1538
		mu 0 4 1239 1241 1243 1242
		f 4 -1541 1537 1638 -1540
		mu 0 4 1235 1239 1242 1240
		f 4 -1543 1539 1640 -1542
		mu 0 4 1230 1235 1240 1236
		f 4 -1545 1541 1634 -1544
		mu 0 4 1231 1230 1236 1237
		f 4 1633 -1546 -1547 1543
		mu 0 4 1237 1263 1296 1231
		f 4 -1549 1545 1623 1616
		mu 0 4 1258 1257 1276 1264
		f 4 -1551 -1617 1627 1618
		mu 0 4 1265 1258 1264 1272
		f 4 -1553 -1619 1641 1617
		mu 0 4 1273 1265 1272 1279
		f 4 -1555 -1618 1639 -1554
		mu 0 4 1280 1273 1279 1282
		f 4 -1556 1553 1631 -1537
		mu 0 4 1241 1280 1282 1243
		f 4 -1559 1556 1538 -1558
		mu 0 4 1234 1238 1241 1239
		f 4 -1561 1557 1540 -1560
		mu 0 4 1229 1234 1239 1235
		f 4 -1563 1559 1542 -1562
		mu 0 4 1223 1229 1235 1230
		f 4 -1565 1561 1544 -1564
		mu 0 4 1224 1223 1230 1231
		f 4 -1566 -1567 1563 1546
		mu 0 4 1296 1294 1224 1231
		f 4 -1569 1565 1548 1547
		mu 0 4 1253 1252 1257 1258
		f 4 -1571 -1548 1550 1549
		mu 0 4 1259 1253 1258 1265
		f 4 -1573 -1550 1552 1551
		mu 0 4 1266 1259 1265 1273
		f 4 -1575 -1552 1554 -1574
		mu 0 4 1274 1266 1273 1280
		f 4 -1576 1573 1555 -1557
		mu 0 4 1238 1274 1280 1241
		f 4 -1579 1576 1558 -1578
		mu 0 4 1228 1233 1238 1234
		f 4 -1581 1577 1560 -1580
		mu 0 4 1222 1228 1234 1229
		f 4 -1583 1579 1562 -1582
		mu 0 4 1217 1222 1229 1223
		f 4 -1585 1581 1564 -1584
		mu 0 4 1218 1217 1223 1224
		f 4 -1586 -1587 1583 1566
		mu 0 4 1294 1292 1218 1224
		f 4 -1589 1585 1568 1567
		mu 0 4 1249 1248 1252 1253
		f 4 -1591 -1568 1570 1569
		mu 0 4 1254 1249 1253 1259
		f 4 -1593 -1570 1572 1571
		mu 0 4 1260 1254 1259 1266
		f 4 -1595 -1572 1574 -1594
		mu 0 4 1267 1260 1266 1274
		f 4 -1596 1593 1575 -1577
		mu 0 4 1233 1267 1274 1238
		f 4 -1599 1596 1578 -1598
		mu 0 4 1221 1227 1233 1228
		f 4 -1601 1597 1580 -1600
		mu 0 4 1216 1221 1228 1222
		f 4 -1603 1599 1582 -1602
		mu 0 4 1211 1216 1222 1217
		f 4 -1605 1601 1584 -1604
		mu 0 4 1212 1211 1217 1218
		f 4 -1606 -1607 1603 1586
		mu 0 4 1292 1287 1212 1218
		f 4 -1609 1605 1588 1587
		mu 0 4 1247 1246 1248 1249
		f 4 -1611 -1588 1590 1589
		mu 0 4 1251 1247 1249 1254
		f 4 -1613 -1590 1592 1591
		mu 0 4 1256 1251 1254 1260
		f 4 -1615 -1592 1594 -1614
		mu 0 4 1262 1256 1260 1267
		f 4 -1616 1613 1595 -1597
		mu 0 4 1227 1262 1267 1233
		f 4 1619 1620 1621 1622
		mu 0 4 1277 1301 1302 1303
		f 4 1624 1625 1626 -1621
		mu 0 4 1301 1306 1307 1302
		f 4 -1638 1628 1629 1630
		mu 0 4 1309 1310 1286 1313
		f 4 1635 -1626 1636 1637
		mu 0 4 1309 1307 1306 1310
		f 4 1642 -1634 1643 -1623
		mu 0 4 1303 1263 1237 1277
		f 4 -1643 -1622 1644 -1624
		mu 0 4 1276 1270 1271 1264
		f 4 -1645 -1627 1645 -1628
		mu 0 4 1264 1271 1278 1272
		f 4 1646 -1640 -1652 -1631
		mu 0 4 1284 1282 1279 1281
		f 4 -1647 -1630 1647 -1632
		mu 0 4 1282 1284 1286 1243
		f 4 -1648 -1629 1648 -1633
		mu 0 4 1243 1286 1310 1242
		f 4 -1644 -1635 -1650 -1620
		mu 0 4 1277 1237 1236 1301
		f 4 1649 -1641 -1651 -1625
		mu 0 4 1301 1236 1240 1306
		f 4 -1649 -1637 1650 -1639
		mu 0 4 1242 1310 1306 1240
		f 4 1651 -1642 -1646 -1636
		mu 0 4 1281 1279 1272 1278
		f 4 -1665 1660 1661 1662
		mu 0 4 1315 1214 1213 1290
		f 4 -1676 1663 1664 1665
		mu 0 4 1319 1219 1214 1315
		f 4 1669 1670 1671 1672
		mu 0 4 1232 1225 1323 1328
		f 4 1675 1676 -1671 1677
		mu 0 4 1219 1319 1323 1225
		f 4 1682 -1662 1683 -1660
		mu 0 4 1288 1290 1213 1209
		f 4 -1683 -1667 -1685 -1663
		mu 0 4 1290 1288 1322 1315
		f 4 1684 -1682 -1692 -1666
		mu 0 4 1315 1322 1325 1319
		f 4 -1684 -1661 1685 -1668
		mu 0 4 1209 1213 1214 1210
		f 4 1686 -1672 1687 -1669
		mu 0 4 1329 1328 1323 1326
		f 4 -1687 -1674 1688 -1673
		mu 0 4 1328 1329 1226 1232
		f 4 -1689 -1679 -1691 -1670
		mu 0 4 1232 1226 1220 1225
		f 4 -1686 -1664 1689 -1675
		mu 0 4 1210 1214 1219 1215
		f 4 1690 -1681 -1690 -1678
		mu 0 4 1225 1220 1215 1219
		f 4 -1688 -1677 1691 -1680
		mu 0 4 1326 1323 1319 1325
		f 4 1823 1812 1760 -1810
		mu 0 4 1331 1332 1333 1334
		f 4 1822 1808 1764 1763
		mu 0 4 1366 1367 1368 1369
		f 4 1829 1810 1771 -1812
		mu 0 4 1348 157 154 1349
		f 4 -1809 1815 1809 1762
		mu 0 4 610 664 1331 1334
		f 4 1834 1811 1754 -1814
		mu 0 4 1342 1348 1349 1343
		f 4 1824 -1768 1770 -1811
		mu 0 4 157 208 207 154
		f 4 1836 1813 1756 -1815
		mu 0 4 1337 1342 1343 1338
		f 4 1835 -1766 1768 1767
		mu 0 4 208 191 188 207
		f 4 1830 1814 1758 -1813
		mu 0 4 1332 1337 1338 1333
		f 4 1837 -1764 1766 1765
		mu 0 4 191 1366 1369 188
		f 4 -1695 1692 1788 -1694
		mu 0 4 1361 1363 1155 1364
		f 4 -1697 1693 1794 -1696
		mu 0 4 1357 1361 1364 1362
		f 4 -1699 1695 1796 -1698
		mu 0 4 1352 1357 1362 1358
		f 4 -1701 1697 1790 -1700
		mu 0 4 1353 1352 1358 1359
		f 4 1789 -1702 -1703 1699
		mu 0 4 1359 944 927 1353
		f 4 -1705 1701 1779 1772
		mu 0 4 162 203 152 148
		f 4 -1707 -1773 1783 1774
		mu 0 4 674 162 148 675
		f 4 -1709 -1775 1797 1773
		mu 0 4 670 674 675 693
		f 4 -1711 -1774 1795 -1710
		mu 0 4 692 670 693 629
		f 4 -1712 1709 1787 -1693
		mu 0 4 1363 692 629 1155
		f 4 -1715 1712 1694 -1714
		mu 0 4 1356 1360 1363 1361
		f 4 -1717 1713 1696 -1716
		mu 0 4 1351 1356 1361 1357
		f 4 -1719 1715 1698 -1718
		mu 0 4 1345 1351 1357 1352
		f 4 -1721 1717 1700 -1720
		mu 0 4 1346 1345 1352 1353
		f 4 -1722 -1723 1719 1702
		mu 0 4 927 889 1346 1353
		f 4 -1725 1721 1704 1703
		mu 0 4 214 216 203 162
		f 4 -1727 -1704 1706 1705
		mu 0 4 160 214 162 674
		f 4 -1729 -1706 1708 1707
		mu 0 4 630 160 674 670
		f 4 -1731 -1708 1710 -1730
		mu 0 4 669 630 670 692
		f 4 -1732 1729 1711 -1713
		mu 0 4 1360 669 692 1363
		f 4 -1735 1732 1714 -1734
		mu 0 4 1350 1355 1360 1356
		f 4 -1737 1733 1716 -1736
		mu 0 4 1344 1350 1356 1351
		f 4 -1739 1735 1718 -1738
		mu 0 4 1339 1344 1351 1345
		f 4 -1741 1737 1720 -1740
		mu 0 4 1340 1339 1345 1346
		f 4 -1742 -1743 1739 1722
		mu 0 4 889 650 1340 1346
		f 4 -1745 1741 1724 1723
		mu 0 4 192 194 216 214
		f 4 -1747 -1724 1726 1725
		mu 0 4 211 192 214 160
		f 4 -1749 -1726 1728 1727
		mu 0 4 159 211 160 630
		f 4 -1751 -1728 1730 -1750
		mu 0 4 618 159 630 669
		f 4 -1752 1749 1731 -1733
		mu 0 4 1355 618 669 1360
		f 4 -1755 1752 1734 -1754
		mu 0 4 1343 1349 1355 1350
		f 4 -1757 1753 1736 -1756
		mu 0 4 1338 1343 1350 1344
		f 4 -1759 1755 1738 -1758
		mu 0 4 1333 1338 1344 1339
		f 4 -1761 1757 1740 -1760
		mu 0 4 1334 1333 1339 1340
		f 4 -1762 -1763 1759 1742
		mu 0 4 650 610 1334 1340
		f 4 -1765 1761 1744 1743
		mu 0 4 1369 1368 194 192
		f 4 -1767 -1744 1746 1745
		mu 0 4 188 1369 192 211
		f 4 -1769 -1746 1748 1747
		mu 0 4 207 188 211 159
		f 4 -1771 -1748 1750 -1770
		mu 0 4 154 207 159 618
		f 4 -1772 1769 1751 -1753
		mu 0 4 1349 154 618 1355
		f 4 1775 1776 1777 1778
		mu 0 4 942 934 677 678
		f 4 1780 1781 1782 -1777
		mu 0 4 934 908 694 677
		f 4 -1794 1784 1785 1786
		mu 0 4 687 887 611 623
		f 4 1791 -1782 1792 1793
		mu 0 4 687 694 908 887
		f 4 1798 -1790 1799 -1779
		mu 0 4 678 152 923 942
		f 4 -1799 -1778 1800 -1780
		mu 0 4 152 678 677 148
		f 4 -1801 -1783 1801 -1784
		mu 0 4 148 677 694 675
		f 4 1802 -1796 -1808 -1787
		mu 0 4 623 629 693 687
		f 4 -1803 -1786 1803 -1788
		mu 0 4 629 623 611 1365
		f 4 -1804 -1785 1804 -1789
		mu 0 4 1365 611 887 886
		f 4 -1800 -1791 -1806 -1776
		mu 0 4 942 923 922 934
		f 4 1805 -1797 -1807 -1781
		mu 0 4 934 922 896 908
		f 4 -1805 -1793 1806 -1795
		mu 0 4 886 887 908 896
		f 4 1807 -1798 -1802 -1792
		mu 0 4 687 693 675 694
		f 4 -1821 1816 1817 1818
		mu 0 4 912 1336 1335 1029
		f 4 -1832 1819 1820 1821
		mu 0 4 1022 1341 1336 912
		f 4 1825 1826 1827 1828
		mu 0 4 1354 1347 1011 943
		f 4 1831 1832 -1827 1833
		mu 0 4 1341 1022 1011 1347
		f 4 1838 -1818 1839 -1816
		mu 0 4 664 656 1335 1331
		f 4 -1839 -1823 -1841 -1819
		mu 0 4 1370 1367 1366 196
		f 4 1840 -1838 -1848 -1822
		mu 0 4 196 1366 191 218
		f 4 -1840 -1817 1841 -1824
		mu 0 4 1331 1335 1336 1332
		f 4 1842 -1828 1843 -1825
		mu 0 4 157 153 206 208
		f 4 -1843 -1830 1844 -1829
		mu 0 4 153 157 1348 1354
		f 4 -1845 -1835 -1847 -1826
		mu 0 4 1354 1348 1342 1347
		f 4 -1842 -1820 1845 -1831
		mu 0 4 1332 1336 1341 1337
		f 4 1846 -1837 -1846 -1834
		mu 0 4 1347 1342 1337 1341
		f 4 -1844 -1833 1847 -1836
		mu 0 4 208 206 218 191
		f 4 1979 1968 1916 -1966
		mu 0 4 1070 1069 1003 1001
		f 4 1978 1964 1920 1919
		mu 0 4 549 483 476 470
		f 4 1985 1966 1927 -1968
		mu 0 4 1038 819 815 1052
		f 4 -1965 1971 1965 1918
		mu 0 4 1166 1191 1070 1001
		f 4 1990 1967 1910 -1970
		mu 0 4 1056 1038 1052 1055
		f 4 1980 -1924 1926 -1967
		mu 0 4 819 809 807 815
		f 4 1992 1969 1912 -1971
		mu 0 4 985 1056 1055 984
		f 4 1991 -1922 1924 1923
		mu 0 4 809 541 537 807
		f 4 1986 1970 1914 -1969
		mu 0 4 1069 985 984 1003
		f 4 1993 -1920 1922 1921
		mu 0 4 541 549 470 537
		f 4 -1851 1848 1944 -1850
		mu 0 4 558 553 550 552
		f 4 -1853 1849 1950 -1852
		mu 0 4 565 558 552 556
		f 4 -1855 1851 1952 -1854
		mu 0 4 1049 565 556 564
		f 4 -1857 1853 1946 -1856
		mu 0 4 1048 1049 564 562
		f 4 1945 -1858 -1859 1855
		mu 0 4 562 1161 1198 1048
		f 4 -1861 1857 1935 1928
		mu 0 4 817 752 812 811
		f 4 -1863 -1929 1939 1930
		mu 0 4 808 817 811 763
		f 4 -1865 -1931 1953 1929
		mu 0 4 757 808 763 779
		f 4 -1867 -1930 1951 -1866
		mu 0 4 773 757 779 1208
		f 4 -1868 1865 1943 -1849
		mu 0 4 553 773 1208 550
		f 4 -1871 1868 1850 -1870
		mu 0 4 1045 559 553 558
		f 4 -1873 1869 1852 -1872
		mu 0 4 1050 1045 558 565
		f 4 -1875 1871 1854 -1874
		mu 0 4 1043 1050 565 1049
		f 4 -1877 1873 1856 -1876
		mu 0 4 1042 1043 1049 1048
		f 4 -1878 -1879 1875 1858
		mu 0 4 1198 1203 1042 1048
		f 4 -1881 1877 1860 1859
		mu 0 4 523 524 752 817
		f 4 -1883 -1860 1862 1861
		mu 0 4 783 523 817 808
		f 4 -1885 -1862 1864 1863
		mu 0 4 804 783 808 757
		f 4 -1887 -1864 1866 -1886
		mu 0 4 751 804 757 773
		f 4 -1888 1885 1867 -1869
		mu 0 4 559 751 773 553
		f 4 -1891 1888 1870 -1890
		mu 0 4 1051 1046 559 1045
		f 4 -1893 1889 1872 -1892
		mu 0 4 1041 1051 1045 1050
		f 4 -1895 1891 1874 -1894
		mu 0 4 1066 1041 1050 1043
		f 4 -1897 1893 1876 -1896
		mu 0 4 1062 1066 1043 1042
		f 4 -1898 -1899 1895 1878
		mu 0 4 1203 1200 1062 1042
		f 4 -1901 1897 1880 1879
		mu 0 4 544 460 524 523
		f 4 -1903 -1880 1882 1881
		mu 0 4 799 544 523 783
		f 4 -1905 -1882 1884 1883
		mu 0 4 820 799 783 804
		f 4 -1907 -1884 1886 -1906
		mu 0 4 802 820 804 751
		f 4 -1908 1905 1887 -1889
		mu 0 4 1046 802 751 559
		f 4 -1911 1908 1890 -1910
		mu 0 4 1055 1052 1046 1051
		f 4 -1913 1909 1892 -1912
		mu 0 4 984 1055 1051 1041
		f 4 -1915 1911 1894 -1914
		mu 0 4 1003 984 1041 1066
		f 4 -1917 1913 1896 -1916
		mu 0 4 1001 1003 1066 1062
		f 4 -1918 -1919 1915 1898
		mu 0 4 1200 1166 1001 1062
		f 4 -1921 1917 1900 1899
		mu 0 4 470 476 460 544
		f 4 -1923 -1900 1902 1901
		mu 0 4 537 470 544 799
		f 4 -1925 -1902 1904 1903
		mu 0 4 807 537 799 820
		f 4 -1927 -1904 1906 -1926
		mu 0 4 815 807 820 802
		f 4 -1928 1925 1907 -1909
		mu 0 4 1052 815 802 1046
		f 4 1931 1932 1933 1934
		mu 0 4 1148 1139 1136 1175
		f 4 1936 1937 1938 -1933
		mu 0 4 1139 1162 1156 1136
		f 4 -1950 1940 1941 1942
		mu 0 4 1081 651 1190 928
		f 4 1947 -1938 1948 1949
		mu 0 4 1081 1156 1162 651
		f 4 1954 -1946 1955 -1935
		mu 0 4 1154 1161 562 1148
		f 4 -1955 -1934 1956 -1936
		mu 0 4 812 778 770 811
		f 4 -1957 -1939 1957 -1940
		mu 0 4 811 770 785 763
		f 4 1958 -1952 -1964 -1943
		mu 0 4 1182 1208 779 1207
		f 4 -1959 -1942 1959 -1944
		mu 0 4 1208 1182 1190 550
		f 4 -1960 -1941 1960 -1945
		mu 0 4 550 1190 651 552
		f 4 -1956 -1947 -1962 -1932
		mu 0 4 1148 562 564 1139
		f 4 1961 -1953 -1963 -1937
		mu 0 4 1139 564 556 1162
		f 4 -1961 -1949 1962 -1951
		mu 0 4 552 651 1162 556
		f 4 1963 -1954 -1958 -1948
		mu 0 4 1207 779 763 785
		f 4 -1977 1972 1973 1974
		mu 0 4 461 917 891 465
		f 4 -1988 1975 1976 1977
		mu 0 4 531 1073 917 461
		f 4 1981 1982 1983 1984
		mu 0 4 1016 1007 795 792
		f 4 1987 1988 -1983 1989
		mu 0 4 1073 531 795 1007
		f 4 1994 -1974 1995 -1972
		mu 0 4 1191 1181 997 1070
		f 4 -1995 -1979 -1997 -1975
		mu 0 4 465 483 549 461
		f 4 1996 -1994 -2004 -1978
		mu 0 4 461 549 541 531
		f 4 -1996 -1973 1997 -1980
		mu 0 4 1070 997 991 1069
		f 4 1998 -1984 1999 -1981
		mu 0 4 819 792 795 809
		f 4 -1999 -1986 2000 -1985
		mu 0 4 792 819 1038 1047
		f 4 -2001 -1991 -2003 -1982
		mu 0 4 1047 1038 1056 1039
		f 4 -1998 -1976 2001 -1987
		mu 0 4 1069 991 1060 985;
	setAttr ".fc[1000:1079]"
		f 4 2002 -1993 -2002 -1990
		mu 0 4 1039 1056 985 1060
		f 4 -2000 -1989 2003 -1992
		mu 0 4 809 795 531 541
		f 4 2134 2124 2072 -2122
		mu 0 4 948 936 937 661
		f 4 2133 2120 2076 2075
		mu 0 4 400 396 389 388
		f 4 2139 2122 2083 -2124
		mu 0 4 797 1318 1291 439
		f 4 -2121 2127 2121 2074
		mu 0 4 389 396 1172 1283
		f 4 2143 2123 2066 -2126
		mu 0 4 421 797 439 406
		f 4 2135 -2080 2082 -2123
		mu 0 4 1318 1180 1143 1291
		f 4 2145 2125 2068 -2127
		mu 0 4 627 421 406 688
		f 4 2144 -2078 2080 2079
		mu 0 4 1180 403 317 1143
		f 4 2140 2126 2070 -2125
		mu 0 4 936 627 688 937
		f 4 2146 -2076 2078 2077
		mu 0 4 403 400 388 317
		f 4 -2007 2004 2100 -2006
		mu 0 4 415 417 1195 405
		f 4 -2009 2005 2106 -2008
		mu 0 4 423 415 405 420
		f 4 -2011 2007 2108 -2010
		mu 0 4 433 423 420 408
		f 4 -2013 2009 2102 -2012
		mu 0 4 431 433 408 407
		f 4 2101 -2014 -2015 2011
		mu 0 4 617 1300 918 663
		f 4 -2017 2013 2091 2084
		mu 0 4 430 918 1300 1314
		f 4 -2019 -2085 2095 2086
		mu 0 4 1311 430 1314 1320
		f 4 -2021 -2087 2109 2085
		mu 0 4 1317 1311 1320 1295
		f 4 -2023 -2086 2107 -2022
		mu 0 4 1293 1317 1295 1285
		f 4 -2024 2021 2099 -2005
		mu 0 4 417 1293 1285 1195
		f 4 -2027 2024 2006 -2026
		mu 0 4 424 413 417 415
		f 4 -2029 2025 2008 -2028
		mu 0 4 436 424 415 423
		f 4 -2031 2027 2010 -2030
		mu 0 4 390 436 423 433
		f 4 -2033 2029 2012 -2032
		mu 0 4 435 390 433 431
		f 4 -2034 -2035 2031 2014
		mu 0 4 918 307 690 663
		f 4 -2037 2033 2016 2015
		mu 0 4 906 307 918 430
		f 4 -2039 -2016 2018 2017
		mu 0 4 411 906 430 1311
		f 4 -2041 -2018 2020 2019
		mu 0 4 1308 411 1311 1317
		f 4 -2043 -2020 2022 -2042
		mu 0 4 1316 1308 1317 1293
		f 4 -2044 2041 2023 -2025
		mu 0 4 413 1316 1293 417
		f 4 -2047 2044 2026 -2046
		mu 0 4 437 427 413 424
		f 4 -2049 2045 2028 -2048
		mu 0 4 441 437 424 436
		f 4 -2051 2047 2030 -2050
		mu 0 4 696 441 436 390
		f 4 -2053 2049 2032 -2052
		mu 0 4 679 696 390 435
		f 4 -2054 -2055 2051 2034
		mu 0 4 307 1321 442 690
		f 4 -2057 2053 2036 2035
		mu 0 4 1312 1321 307 906
		f 4 -2059 -2036 2038 2037
		mu 0 4 789 1312 906 411
		f 4 -2061 -2038 2040 2039
		mu 0 4 1299 789 411 1308
		f 4 -2063 -2040 2042 -2062
		mu 0 4 1305 1299 1308 1316
		f 4 -2064 2061 2043 -2045
		mu 0 4 427 1305 1316 413
		f 4 -2067 2064 2046 -2066
		mu 0 4 406 439 427 437
		f 4 -2069 2065 2048 -2068
		mu 0 4 688 406 437 441
		f 4 -2071 2067 2050 -2070
		mu 0 4 937 688 441 696
		f 4 -2073 2069 2052 -2072
		mu 0 4 661 937 696 679
		f 4 -2074 -2075 2071 2054
		mu 0 4 1321 389 1283 442
		f 4 -2077 2073 2056 2055
		mu 0 4 388 389 1321 1312
		f 4 -2079 -2056 2058 2057
		mu 0 4 317 388 1312 789
		f 4 -2081 -2058 2060 2059
		mu 0 4 1143 317 789 1299
		f 4 -2083 -2060 2062 -2082
		mu 0 4 1291 1143 1299 1305
		f 4 -2084 2081 2063 -2065
		mu 0 4 439 1291 1305 427
		f 4 2087 2088 2089 2090
		mu 0 4 1275 1268 1324 1327
		f 4 2092 2093 2094 -2089
		mu 0 4 1268 1330 1304 1324
		f 4 -2106 2096 2097 2098
		mu 0 4 915 938 1269 1194
		f 4 2103 -2094 2104 2105
		mu 0 4 915 1304 1330 938
		f 4 2110 -2102 2111 -2091
		mu 0 4 1327 1300 617 1275
		f 4 -2111 -2090 2112 -2092
		mu 0 4 1300 1327 1324 1314
		f 4 -2113 -2095 2113 -2096
		mu 0 4 1314 1324 1304 1320
		f 4 2114 -2108 -2120 -2099
		mu 0 4 1194 1285 1295 915
		f 4 -2115 -2098 2115 -2100
		mu 0 4 1285 1194 1269 1195
		f 4 -2116 -2097 2116 -2101
		mu 0 4 1195 1269 938 1168
		f 4 -2112 -2103 -2118 -2088
		mu 0 4 1275 617 1298 1268
		f 4 2117 -2109 -2119 -2093
		mu 0 4 1268 1298 931 1330
		f 4 -2117 -2105 2118 -2107
		mu 0 4 1168 938 1330 931
		f 4 2119 -2110 -2114 -2104
		mu 0 4 915 1295 1320 1304
		f 4 2147 -2130 2148 -2128
		mu 0 4 1206 1289 1297 948
		f 4 -2148 -2134 -2150 -2131
		mu 0 4 1289 1206 1185 1187
		f 4 2149 -2147 -2157 -2133
		mu 0 4 1187 1185 946 907
		f 4 -2149 -2129 2150 -2135
		mu 0 4 948 1297 1006 936
		f 4 2151 -2138 2152 -2136
		mu 0 4 1192 772 902 1078
		f 4 -2152 -2140 2153 -2139
		mu 0 4 772 1192 797 798
		f 4 -2154 -2144 -2156 -2137
		mu 0 4 798 797 421 748
		f 4 -2151 -2132 2154 -2141
		mu 0 4 936 1006 1178 627
		f 4 2155 -2146 -2155 -2143
		mu 0 4 748 421 627 1178
		f 4 -2153 -2142 2156 -2145
		mu 0 4 1078 902 907 946
		f 4 2128 2129 2130 2157
		mu 0 4 1006 1297 1289 1187
		f 4 2131 -2158 2132 2158
		mu 0 4 1178 1006 1187 907
		f 4 2142 -2159 2141 2159
		mu 0 4 748 1178 907 902
		f 4 2136 -2160 2137 2138
		mu 0 4 798 748 902 772;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
	setAttr ".vcs" 2;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n"
		+ "                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput1\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput1\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput1\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 1 -size 12 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 100 -ast 1 -aet 110 ";
	setAttr ".st" 6;
createNode lambert -n "icosahedron:ico_edges";
	setAttr ".c" -type "float3" 0.958 0.958 0.958 ;
createNode shadingEngine -n "icosahedron:lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "icosahedron:materialInfo1";
createNode lambert -n "icosahedron:ico_faces";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "icosahedron:lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "icosahedron:materialInfo2";
createNode groupId -n "icosahedron:groupId6";
	setAttr ".ihi" 0;
createNode hyperGraphInfo -n "icosahedron:nodeEditorPanel2Info";
createNode hyperView -n "icosahedron:hyperView1";
	setAttr ".vl" -type "double2" -372.48260601843805 -486.47821708076441 ;
	setAttr ".vh" -type "double2" 1043.4145439289098 234.0972646998122 ;
	setAttr ".dag" no;
createNode hyperLayout -n "icosahedron:hyperLayout1";
	setAttr ".ihi" 0;
	setAttr ".anf" yes;
createNode phong -n "Hand_SHD";
	setAttr ".cp" 2;
createNode shadingEngine -n "Hand_MDLSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode shadingEngine -n "Hand_MDLSG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "psdFileTex12456";
	setAttr ".ftn" -type "string" "D:/WIP/Sixense/Hands/textures/Hands_Diffuse.png";
createNode place2dTexture -n "place2dTexture1";
createNode file -n "file8";
	setAttr ".ftn" -type "string" "D:/WIP/Sixense/Hands/textures/Hands_Specular.png";
createNode place2dTexture -n "place2dTexture2";
createNode bump2d -n "bump2d1";
	setAttr ".bd" 0;
	setAttr ".bi" 1;
createNode file -n "psdFileTex12457";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "D:/WIP/Sixense/Hands/textures/Hands_Normal.png";
createNode place2dTexture -n "place2dTexture3";
createNode phong -n "Hand_SHD1";
	setAttr ".cp" 2;
createNode shadingEngine -n "Hand_MDLSG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode shadingEngine -n "Hand_MDLSG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode bump2d -n "bump2d2";
	setAttr ".bi" 1;
createNode tweak -n "tweak1";
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
	setAttr ".gi" 74;
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1079]";
	setAttr ".gi" 76;
createNode animCurveTA -n "root_rotateX";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 10 0 20 0 30 0 40 0 60 0 69 0 80 0 90 0
		 100 0;
	setAttr -s 10 ".kit[0:9]"  10 9 9 9 9 10 10 10 
		10 9;
	setAttr -s 10 ".kot[9]"  9;
createNode animCurveTA -n "root_rotateY";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 10 0 20 0 30 0 40 0 60 0 69 0 80 0 90 0
		 100 0;
	setAttr -s 10 ".kit[0:9]"  10 9 9 9 9 10 10 10 
		10 9;
	setAttr -s 10 ".kot[9]"  9;
createNode animCurveTA -n "root_rotateZ";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 10 0 20 0 30 0 40 0 60 0 69 0 80 0 90 0
		 100 0;
	setAttr -s 10 ".kit[0:9]"  10 9 9 9 9 10 10 10 
		10 9;
	setAttr -s 10 ".kot[9]"  9;
createNode animCurveTA -n "index0_rotateX";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 20 0 30 0 50 -0.048315642497668045
		 60 0 60.004 0 90 0 100 0;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 10 1 9 10 
		9;
	setAttr -s 9 ".kot[8]"  9;
	setAttr -s 9 ".kix[5:8]"  0 1 1 1;
	setAttr -s 9 ".kiy[5:8]"  0 0 0 0;
createNode animCurveTA -n "index0_rotateY";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 20 0 30 0 50 -0.035810585099988426
		 60 0 60.004 0 90 0 100 0;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 10 1 9 10 
		9;
	setAttr -s 9 ".kot[8]"  9;
	setAttr -s 9 ".kix[5:8]"  0 1 1 1;
	setAttr -s 9 ".kiy[5:8]"  0 0 0 0;
createNode animCurveTA -n "index0_rotateZ";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 10 -22.331481361867631 20 0 30 0 50 -73.933015710847442
		 60 0 60.004 0 80 -73.856270538598366 90 0 100 0;
	setAttr -s 10 ".kit[0:9]"  10 9 9 9 10 1 9 1 
		10 9;
	setAttr -s 10 ".kot[9]"  9;
	setAttr -s 10 ".kix[5:9]"  0 0.54290765523910522 1 1 1;
	setAttr -s 10 ".kiy[5:9]"  0 -0.83979243040084839 0 0 0;
createNode animCurveTA -n "index1_rotateX";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 20 0 30 0 50 3.2736536643497591
		 60 0 60.004 0 90 0 100 0;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 10 1 9 10 
		9;
	setAttr -s 9 ".kot[8]"  9;
	setAttr -s 9 ".kix[5:8]"  0 1 1 1;
	setAttr -s 9 ".kiy[5:8]"  0 0 0 0;
createNode animCurveTA -n "index1_rotateY";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 20 0 30 0 50 3.5799167241974517
		 60 0 60.004 0 90 0 100 0;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 10 1 9 10 
		9;
	setAttr -s 9 ".kot[8]"  9;
	setAttr -s 9 ".kix[5:8]"  0 1 1 1;
	setAttr -s 9 ".kiy[5:8]"  0 0 0 0;
createNode animCurveTA -n "index1_rotateZ";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 10 -31.517515934003878 20 0 30 0 50 -73.694163236903179
		 60 0 60.004 0 80 -73.600660552526776 90 0 100 0;
	setAttr -s 10 ".kit[0:9]"  10 9 9 9 10 1 9 1 
		10 9;
	setAttr -s 10 ".kot[9]"  9;
	setAttr -s 10 ".kix[5:9]"  0 0.54423528909683228 1 1 1;
	setAttr -s 10 ".kiy[5:9]"  0 -0.83893263339996338 0 0 0;
createNode animCurveTA -n "index2_rotateX";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 10 0 20 0 30 0 50 4.3302939423440394
		 60 0 60.004 0 69 0 80 4.2734148945057235 90 0 100 0;
	setAttr -s 11 ".kit[0:10]"  10 9 9 9 10 1 9 1 
		1 10 9;
	setAttr -s 11 ".kot[10]"  9;
	setAttr -s 11 ".kix[5:10]"  0 1 0 1 1 1;
	setAttr -s 11 ".kiy[5:10]"  0 0 0 0 0 0;
createNode animCurveTA -n "index2_rotateY";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 10 0 20 0 30 0 50 6.1664792660145276
		 60 0 60.004 0 69 0 80 6.8482221948890247 90 0 100 0;
	setAttr -s 11 ".kit[0:10]"  10 9 9 9 10 1 9 1 
		1 10 9;
	setAttr -s 11 ".kot[10]"  9;
	setAttr -s 11 ".kix[5:10]"  0 1 0 1 1 1;
	setAttr -s 11 ".kiy[5:10]"  0 0 0 0 0 0;
createNode animCurveTA -n "index2_rotateZ";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 10 -13.627020572592684 20 0 30 0 50 -73.369730401410166
		 60 0 60.004 0 69 0 80 -79.606417509743309 90 0 100 0;
	setAttr -s 11 ".kit[0:10]"  10 9 9 9 10 1 9 1 
		1 10 9;
	setAttr -s 11 ".kot[10]"  9;
	setAttr -s 11 ".kix[5:10]"  0 1 0 1 1 1;
	setAttr -s 11 ".kiy[5:10]"  0 0 0 0 0 0;
createNode animCurveTA -n "index3_rotateX";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 10 0 20 0 30 0 50 73.933051777716329
		 60 0 60.004 0 69 0 80 80.20069941768665 90 0 100 0;
	setAttr -s 11 ".kit[0:10]"  10 9 9 9 10 10 9 10 
		10 10 9;
	setAttr -s 11 ".kot[10]"  9;
createNode animCurveTA -n "index3_rotateY";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 10 0 20 0 30 0 50 0 60 0 60.004 0 69 0
		 80 0 90 0 100 0;
	setAttr -s 11 ".kit[0:10]"  10 9 9 9 10 10 9 10 
		10 10 9;
	setAttr -s 11 ".kot[10]"  9;
createNode animCurveTA -n "index3_rotateZ";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 10 -19.161841607781788 20 0 30 0 50 0
		 60 0 60.004 0 69 0 80 0 90 0 100 0;
	setAttr -s 11 ".kit[0:10]"  10 9 9 9 10 10 9 10 
		10 10 9;
	setAttr -s 11 ".kot[10]"  9;
createNode animCurveTA -n "middle0_rotateX";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 10 0 20 0 30 0 40 0 50 -0.43803586322875759
		 90 -0.4496329092050057 100 -0.4496329092050057;
	setAttr -s 8 ".kit[0:7]"  10 9 9 9 9 10 10 9;
	setAttr -s 8 ".kot[7]"  9;
createNode animCurveTA -n "middle0_rotateY";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 10 0 20 0 30 0 40 0 50 -0.3221580864751013
		 90 -0.37020995423620923 100 -0.37020995423620923;
	setAttr -s 8 ".kit[0:7]"  10 9 9 9 9 10 10 9;
	setAttr -s 8 ".kot[7]"  9;
createNode animCurveTA -n "middle0_rotateZ";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 10 0 20 -18.975428636387385 30 0 40 0
		 50 -73.930106213274911 69 0 80 -73.85309946599655 90 -73.85309946599655 100 -73.85309946599655;
	setAttr -s 10 ".kit[0:9]"  10 9 9 9 9 1 9 10 
		10 9;
	setAttr -s 10 ".kot[9]"  9;
	setAttr -s 10 ".kix[5:9]"  0.77351701259613037 0.99999940395355225 
		1 1 1;
	setAttr -s 10 ".kiy[5:9]"  -0.63377547264099121 0.0010752163361757994 
		0 0 0;
createNode animCurveTA -n "middle1_rotateX";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 10 0 20 0 30 0 40 0 50 1.568166761140229
		 69 0 100 0;
	setAttr -s 8 ".kit[0:7]"  10 9 9 9 9 10 10 9;
	setAttr -s 8 ".kot[7]"  9;
createNode animCurveTA -n "middle1_rotateY";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 10 0 20 0 30 0 40 0 50 1.7945618382200073
		 69 0 100 0;
	setAttr -s 8 ".kit[0:7]"  10 9 9 9 9 10 10 9;
	setAttr -s 8 ".kot[7]"  9;
createNode animCurveTA -n "middle1_rotateZ";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 20 -49.106580268871006 30 0 40 0
		 50 -73.875555657962238 69 0 80 -73.794937404686436 100 -73.794937404686436;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 9 10 10 10 
		9;
	setAttr -s 9 ".kot[8]"  9;
createNode animCurveTA -n "middle2_rotateX";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 10 0 20 0 30 0 40 0 50 1.9387384120197251
		 69 0 80 1.8919410617665895 90 1.8919410617665895 100 1.8919410617665895;
	setAttr -s 10 ".kit[0:9]"  10 9 9 9 9 10 10 10 
		10 9;
	setAttr -s 10 ".kot[9]"  9;
createNode animCurveTA -n "middle2_rotateY";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 10 0 20 0 30 0 40 0 50 3.1067392998193548
		 69 0 80 3.436255877703148 90 3.436255877703148 100 3.436255877703148;
	setAttr -s 10 ".kit[0:9]"  10 9 9 9 9 10 10 10 
		10 9;
	setAttr -s 10 ".kot[9]"  9;
createNode animCurveTA -n "middle2_rotateZ";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 20 -12.636458337632938 30 0 40 0
		 50 -73.802679306063624 69 0 80 -80.064163950611075 100 -80.064163950611075;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 9 10 10 10 
		9;
	setAttr -s 9 ".kot[8]"  9;
createNode animCurveTA -n "middle3_rotateX";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 10 0 20 0 30 0 40 0 50 73.933051777716429
		 60 84.182005316257502 69 0 80 80.200699417686536 90 80.200699417686536 100 80.200699417686536;
	setAttr -s 11 ".kit[0:10]"  10 9 9 9 9 10 10 10 
		10 10 9;
	setAttr -s 11 ".kot[10]"  9;
createNode animCurveTA -n "middle3_rotateY";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 10 0 20 0 30 0 40 0 50 0 60 0 69 0 80 0
		 90 0 100 0;
	setAttr -s 11 ".kit[0:10]"  10 9 9 9 9 10 10 10 
		10 10 9;
	setAttr -s 11 ".kot[10]"  9;
createNode animCurveTA -n "middle3_rotateZ";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 10 0 20 0 30 0 40 0 50 0 60 0 69 0 80 0
		 90 0 100 0;
	setAttr -s 11 ".kit[0:10]"  10 9 9 9 9 10 10 10 
		10 10 9;
	setAttr -s 11 ".kot[10]"  9;
createNode animCurveTA -n "pinky0_rotateX";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 20 0 30 0 40 0 50 -0.4699351811090508
		 80 0 90 0 100 0;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 9 10 10 10 
		9;
	setAttr -s 9 ".kot[8]"  9;
createNode animCurveTA -n "pinky0_rotateY";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 20 0 30 0 40 0 50 -0.39161546120230378
		 80 0 90 0 100 0;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 9 10 10 10 
		9;
	setAttr -s 9 ".kot[8]"  9;
createNode animCurveTA -n "pinky0_rotateZ";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 20 0 30 0 40 -28.373637890792487
		 50 -73.929276345063769 80 0 90 0 100 0;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 9 10 10 10 
		9;
	setAttr -s 9 ".kot[8]"  9;
createNode animCurveTA -n "pinky1_rotateX";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 20 0 30 0 40 0 50 -6.3918531266275611
		 80 0 90 0 100 0;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 9 10 10 10 
		9;
	setAttr -s 9 ".kot[8]"  9;
createNode animCurveTA -n "pinky1_rotateY";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 20 0 30 0 40 0 50 -5.7548207242802416
		 80 0 90 0 100 0;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 9 10 10 10 
		9;
	setAttr -s 9 ".kot[8]"  9;
createNode animCurveTA -n "pinky1_rotateZ";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 20 0 30 0 40 -62.748093818754739
		 50 -73.181313948226432 80 0 90 0 100 0;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 9 10 10 10 
		9;
	setAttr -s 9 ".kot[8]"  9;
createNode animCurveTA -n "pinky2_rotateX";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 20 0 30 0 40 0 50 -6.7107382091250578
		 80 0 90 0 100 0;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 9 10 10 10 
		9;
	setAttr -s 9 ".kot[8]"  9;
createNode animCurveTA -n "pinky2_rotateY";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 20 0 30 0 40 0 50 -10.233210221234501
		 80 0 90 0 100 0;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 9 10 10 10 
		9;
	setAttr -s 9 ".kot[8]"  9;
createNode animCurveTA -n "pinky2_rotateZ";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 20 0 30 0 40 0 50 -72.457550692118673
		 80 0 90 0 100 0;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 9 10 10 10 
		9;
	setAttr -s 9 ".kot[8]"  9;
createNode animCurveTA -n "pinky3_rotateX";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 10 0 20 0 30 0 40 0 50 73.582453403763537
		 60 84.04681899257406 69 84.04681899257406 80 0 90 0 100 0;
	setAttr -s 11 ".kit[0:10]"  10 9 9 9 9 10 10 10 
		10 10 9;
	setAttr -s 11 ".kot[10]"  9;
createNode animCurveTA -n "pinky3_rotateY";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 10 0 20 0 30 0 40 0 50 11.621355359479189
		 60 11.946866208377546 69 11.946866208377546 80 0 90 0 100 0;
	setAttr -s 11 ".kit[0:10]"  10 9 9 9 9 10 10 10 
		10 10 9;
	setAttr -s 11 ".kot[10]"  9;
createNode animCurveTA -n "pinky3_rotateZ";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 10 0 20 0 30 0 40 0 50 9.6164156270341774
		 60 11.867904040445048 69 11.867904040445048 80 0 90 0 100 0;
	setAttr -s 11 ".kit[0:10]"  10 9 9 9 9 10 10 10 
		10 10 9;
	setAttr -s 11 ".kot[10]"  9;
createNode animCurveTA -n "ring0_rotateX";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 10 0 20 0 30 0 40 0 50 0.07835297063267746
		 90 0.080368931373465222 100 0.080368931373465222;
	setAttr -s 8 ".kit[0:7]"  10 9 9 9 9 10 10 9;
	setAttr -s 8 ".kot[7]"  9;
createNode animCurveTA -n "ring0_rotateY";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 10 0 20 0 30 0 40 0 50 0.058618957093920801
		 90 0.067283452843121927 100 0.067283452843121927;
	setAttr -s 8 ".kit[0:7]"  10 9 9 9 9 10 10 9;
	setAttr -s 8 ".kot[7]"  9;
createNode animCurveTA -n "ring0_rotateZ";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 20 -8.7288764831536305 30 -26.479343652610734
		 40 -10.843896704647781 50 -73.93295618450783 80 -73.93295618450783 90 -73.93295618450783
		 100 -73.93295618450783;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 9 10 10 10 
		9;
	setAttr -s 9 ".kot[8]"  9;
createNode animCurveTA -n "ring1_rotateX";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 10 0 20 0 30 0 40 0 50 -1.3224603495050407
		 90 -1.3399360017191317 100 -1.3399360017191317;
	setAttr -s 8 ".kit[0:7]"  10 9 9 9 9 10 10 9;
	setAttr -s 8 ".kot[7]"  9;
createNode animCurveTA -n "ring1_rotateY";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 10 0 20 0 30 0 40 0 50 -1.2729893723780477
		 90 -1.4389308141225228 100 -1.4389308141225228;
	setAttr -s 8 ".kit[0:7]"  10 9 9 9 9 10 10 9;
	setAttr -s 8 ".kot[7]"  9;
createNode animCurveTA -n "ring1_rotateZ";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 10 0 20 -19.634316836885269 30 -61.467624643786365
		 40 -5.7985881829370989 50 -73.898823096480456 100 -73.898823096480456;
	setAttr -s 7 ".kit[0:6]"  10 9 9 9 9 10 9;
	setAttr -s 7 ".kot[6]"  9;
createNode animCurveTA -n "ring2_rotateX";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 20 0 30 0 40 0 50 -2.5988230039965701
		 80 -2.5136821417060502 90 -2.5136821417060502 100 -2.5136821417060502;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 9 10 10 10 
		9;
	setAttr -s 9 ".kot[8]"  9;
createNode animCurveTA -n "ring2_rotateY";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 20 0 30 0 40 0 50 -4.5538617086944688
		 80 -5.0226171813765772 90 -5.0226171813765772 100 -5.0226171813765772;
	setAttr -s 9 ".kit[0:8]"  10 9 9 9 9 10 10 10 
		9;
	setAttr -s 9 ".kot[8]"  9;
createNode animCurveTA -n "ring2_rotateZ";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 10 0 20 0 30 -5.6213687964904073 40 0
		 50 -73.670119815479765 80 -79.926762996924552 100 -79.926762996924552;
	setAttr -s 8 ".kit[0:7]"  10 9 9 9 9 10 10 9;
	setAttr -s 8 ".kot[7]"  9;
createNode animCurveTA -n "ring3_rotateX";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 10 0 20 0 30 0 40 0 50 73.9330517777164
		 60 84.182005316257573 69 84.182005316257573 80 80.200699417686664 90 80.200699417686664
		 100 80.200699417686664;
	setAttr -s 11 ".kit[0:10]"  10 9 9 9 9 10 10 10 
		10 10 9;
	setAttr -s 11 ".kot[10]"  9;
createNode animCurveTA -n "ring3_rotateY";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 10 0 20 0 30 0 40 0 50 0 60 0 69 0 80 0
		 90 0 100 0;
	setAttr -s 11 ".kit[0:10]"  10 9 9 9 9 10 10 10 
		10 10 9;
	setAttr -s 11 ".kot[10]"  9;
createNode animCurveTA -n "ring3_rotateZ";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 10 0 20 0 30 0 40 0 50 0 60 0 69 0 80 0
		 90 0 100 0;
	setAttr -s 11 ".kit[0:10]"  10 9 9 9 9 10 10 10 
		10 10 9;
	setAttr -s 11 ".kot[10]"  9;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1076]";
	setAttr ".gi" 77;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:1105]";
	setAttr ".gi" 78;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:1105]";
	setAttr ".gi" 79;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1077]";
	setAttr ".gi" 80;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:1105]";
	setAttr ".gi" 81;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:1105]";
	setAttr ".gi" 82;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1078]";
	setAttr ".gi" 83;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:1105]";
	setAttr ".gi" 84;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:1105]";
	setAttr ".gi" 85;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:1105]";
createNode surfaceShader -n "surfaceShader1";
createNode shadingEngine -n "surfaceShader1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode ramp -n "ramp1";
	setAttr ".t" 7;
	setAttr -s 3 ".cel";
	setAttr ".cel[0].ep" 0;
	setAttr ".cel[0].ec" -type "float3" 1 0 0 ;
	setAttr ".cel[1].ep" 0.5;
	setAttr ".cel[1].ec" -type "float3" 0 1 0 ;
	setAttr ".cel[2].ep" 1;
	setAttr ".cel[2].ec" -type "float3" 0 0 1 ;
createNode place2dTexture -n "place2dTexture4";
createNode checker -n "checker1";
createNode place2dTexture -n "place2dTexture5";
	setAttr ".re" -type "float2" 16 16 ;
createNode blendColors -n "blendColors1";
createNode skinCluster -n "skinCluster2";
	setAttr -s 1106 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".wl[98].w[0]"  1;
	setAttr ".wl[99].w[0]"  1;
	setAttr ".wl[100].w[0]"  1;
	setAttr ".wl[101].w[0]"  1;
	setAttr ".wl[102].w[0]"  1;
	setAttr ".wl[103].w[0]"  1;
	setAttr ".wl[104].w[0]"  1;
	setAttr ".wl[105].w[0]"  1;
	setAttr ".wl[106].w[0]"  1;
	setAttr ".wl[107].w[0]"  1;
	setAttr ".wl[108].w[0]"  1;
	setAttr ".wl[109].w[0]"  1;
	setAttr ".wl[110].w[0]"  1;
	setAttr ".wl[111].w[0]"  1;
	setAttr ".wl[112].w[0]"  1;
	setAttr ".wl[113].w[0]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[0]"  1;
	setAttr ".wl[139].w[0]"  1;
	setAttr ".wl[140].w[0]"  1;
	setAttr ".wl[141].w[0]"  1;
	setAttr ".wl[142].w[0]"  1;
	setAttr ".wl[143].w[0]"  1;
	setAttr ".wl[144].w[0]"  1;
	setAttr ".wl[145].w[0]"  1;
	setAttr ".wl[146].w[1]"  1;
	setAttr ".wl[147].w[1]"  1;
	setAttr ".wl[148].w[1]"  1;
	setAttr ".wl[149].w[1]"  1;
	setAttr ".wl[150].w[1]"  1;
	setAttr ".wl[151].w[1]"  1;
	setAttr ".wl[152].w[1]"  1;
	setAttr ".wl[153].w[1]"  1;
	setAttr ".wl[154].w[1]"  1;
	setAttr ".wl[155].w[1]"  1;
	setAttr ".wl[156].w[1]"  1;
	setAttr ".wl[157].w[1]"  1;
	setAttr ".wl[158].w[1]"  1;
	setAttr ".wl[159].w[1]"  1;
	setAttr ".wl[160].w[1]"  1;
	setAttr ".wl[161].w[1]"  1;
	setAttr ".wl[162].w[1]"  1;
	setAttr ".wl[163].w[1]"  1;
	setAttr ".wl[164].w[1]"  1;
	setAttr ".wl[165].w[1]"  1;
	setAttr ".wl[166].w[1]"  1;
	setAttr ".wl[167].w[1]"  1;
	setAttr ".wl[168].w[1]"  1;
	setAttr ".wl[169].w[1]"  1;
	setAttr ".wl[170].w[1]"  1;
	setAttr ".wl[171].w[1]"  1;
	setAttr ".wl[172].w[1]"  1;
	setAttr ".wl[173].w[1]"  1;
	setAttr ".wl[174].w[1]"  1;
	setAttr ".wl[175].w[1]"  1;
	setAttr ".wl[176].w[1]"  1;
	setAttr ".wl[177].w[1]"  1;
	setAttr ".wl[178].w[1]"  1;
	setAttr ".wl[179].w[1]"  1;
	setAttr ".wl[180].w[1]"  1;
	setAttr ".wl[181].w[1]"  1;
	setAttr ".wl[182].w[1]"  1;
	setAttr ".wl[183].w[1]"  1;
	setAttr ".wl[184].w[1]"  1;
	setAttr ".wl[185].w[1]"  1;
	setAttr ".wl[186].w[1]"  1;
	setAttr ".wl[187].w[1]"  1;
	setAttr ".wl[188].w[1]"  1;
	setAttr ".wl[189].w[1]"  1;
	setAttr ".wl[190].w[1]"  1;
	setAttr ".wl[191].w[1]"  1;
	setAttr ".wl[192].w[1]"  1;
	setAttr ".wl[193].w[1]"  1;
	setAttr ".wl[194].w[1]"  1;
	setAttr ".wl[195].w[1]"  1;
	setAttr ".wl[196].w[1]"  1;
	setAttr ".wl[197].w[1]"  1;
	setAttr ".wl[198].w[1]"  1;
	setAttr ".wl[199].w[1]"  1;
	setAttr ".wl[200].w[1]"  1;
	setAttr ".wl[201].w[1]"  1;
	setAttr ".wl[202].w[1]"  1;
	setAttr ".wl[203].w[1]"  1;
	setAttr ".wl[204].w[1]"  1;
	setAttr ".wl[205].w[1]"  1;
	setAttr ".wl[206].w[1]"  1;
	setAttr ".wl[207].w[1]"  1;
	setAttr ".wl[208].w[1]"  1;
	setAttr ".wl[209].w[1]"  1;
	setAttr ".wl[210].w[1]"  1;
	setAttr ".wl[211].w[1]"  1;
	setAttr ".wl[212].w[1]"  1;
	setAttr ".wl[213].w[1]"  1;
	setAttr ".wl[214].w[1]"  1;
	setAttr ".wl[215].w[1]"  1;
	setAttr ".wl[216].w[1]"  1;
	setAttr ".wl[217].w[1]"  1;
	setAttr ".wl[218].w[1]"  1;
	setAttr ".wl[219].w[1]"  1;
	setAttr ".wl[220].w[1]"  1;
	setAttr ".wl[221].w[1]"  1;
	setAttr ".wl[222].w[1]"  1;
	setAttr ".wl[223].w[1]"  1;
	setAttr ".wl[224].w[1]"  1;
	setAttr ".wl[225].w[1]"  1;
	setAttr ".wl[226].w[5]"  1;
	setAttr ".wl[227].w[5]"  1;
	setAttr ".wl[228].w[5]"  1;
	setAttr ".wl[229].w[5]"  1;
	setAttr ".wl[230].w[5]"  1;
	setAttr ".wl[231].w[5]"  1;
	setAttr ".wl[232].w[5]"  1;
	setAttr ".wl[233].w[5]"  1;
	setAttr ".wl[234].w[5]"  1;
	setAttr ".wl[235].w[5]"  1;
	setAttr ".wl[236].w[5]"  1;
	setAttr ".wl[237].w[5]"  1;
	setAttr ".wl[238].w[5]"  1;
	setAttr ".wl[239].w[5]"  1;
	setAttr ".wl[240].w[5]"  1;
	setAttr ".wl[241].w[5]"  1;
	setAttr ".wl[242].w[5]"  1;
	setAttr ".wl[243].w[5]"  1;
	setAttr ".wl[244].w[5]"  1;
	setAttr ".wl[245].w[5]"  1;
	setAttr ".wl[246].w[5]"  1;
	setAttr ".wl[247].w[5]"  1;
	setAttr ".wl[248].w[5]"  1;
	setAttr ".wl[249].w[5]"  1;
	setAttr ".wl[250].w[5]"  1;
	setAttr ".wl[251].w[5]"  1;
	setAttr ".wl[252].w[5]"  1;
	setAttr ".wl[253].w[5]"  1;
	setAttr ".wl[254].w[5]"  1;
	setAttr ".wl[255].w[5]"  1;
	setAttr ".wl[256].w[5]"  1;
	setAttr ".wl[257].w[5]"  1;
	setAttr ".wl[258].w[5]"  1;
	setAttr ".wl[259].w[5]"  1;
	setAttr ".wl[260].w[5]"  1;
	setAttr ".wl[261].w[5]"  1;
	setAttr ".wl[262].w[5]"  1;
	setAttr ".wl[263].w[5]"  1;
	setAttr ".wl[264].w[5]"  1;
	setAttr ".wl[265].w[5]"  1;
	setAttr ".wl[266].w[5]"  1;
	setAttr ".wl[267].w[5]"  1;
	setAttr ".wl[268].w[5]"  1;
	setAttr ".wl[269].w[5]"  1;
	setAttr ".wl[270].w[5]"  1;
	setAttr ".wl[271].w[5]"  1;
	setAttr ".wl[272].w[5]"  1;
	setAttr ".wl[273].w[5]"  1;
	setAttr ".wl[274].w[5]"  1;
	setAttr ".wl[275].w[5]"  1;
	setAttr ".wl[276].w[5]"  1;
	setAttr ".wl[277].w[5]"  1;
	setAttr ".wl[278].w[5]"  1;
	setAttr ".wl[279].w[5]"  1;
	setAttr ".wl[280].w[5]"  1;
	setAttr ".wl[281].w[5]"  1;
	setAttr ".wl[282].w[5]"  1;
	setAttr ".wl[283].w[5]"  1;
	setAttr ".wl[284].w[5]"  1;
	setAttr ".wl[285].w[5]"  1;
	setAttr ".wl[286].w[5]"  1;
	setAttr ".wl[287].w[5]"  1;
	setAttr ".wl[288].w[5]"  1;
	setAttr ".wl[289].w[5]"  1;
	setAttr ".wl[290].w[5]"  1;
	setAttr ".wl[291].w[5]"  1;
	setAttr ".wl[292].w[5]"  1;
	setAttr ".wl[293].w[5]"  1;
	setAttr ".wl[294].w[5]"  1;
	setAttr ".wl[295].w[5]"  1;
	setAttr ".wl[296].w[5]"  1;
	setAttr ".wl[297].w[5]"  1;
	setAttr ".wl[298].w[5]"  1;
	setAttr ".wl[299].w[5]"  1;
	setAttr ".wl[300].w[5]"  1;
	setAttr ".wl[301].w[5]"  1;
	setAttr ".wl[302].w[5]"  1;
	setAttr ".wl[303].w[5]"  1;
	setAttr ".wl[304].w[5]"  1;
	setAttr ".wl[305].w[5]"  1;
	setAttr ".wl[306].w[9]"  1;
	setAttr ".wl[307].w[9]"  1;
	setAttr ".wl[308].w[9]"  1;
	setAttr ".wl[309].w[9]"  1;
	setAttr ".wl[310].w[9]"  1;
	setAttr ".wl[311].w[9]"  1;
	setAttr ".wl[312].w[9]"  1;
	setAttr ".wl[313].w[9]"  1;
	setAttr ".wl[314].w[9]"  1;
	setAttr ".wl[315].w[9]"  1;
	setAttr ".wl[316].w[9]"  1;
	setAttr ".wl[317].w[9]"  1;
	setAttr ".wl[318].w[9]"  1;
	setAttr ".wl[319].w[9]"  1;
	setAttr ".wl[320].w[9]"  1;
	setAttr ".wl[321].w[9]"  1;
	setAttr ".wl[322].w[9]"  1;
	setAttr ".wl[323].w[9]"  1;
	setAttr ".wl[324].w[9]"  1;
	setAttr ".wl[325].w[9]"  1;
	setAttr ".wl[326].w[9]"  1;
	setAttr ".wl[327].w[9]"  1;
	setAttr ".wl[328].w[9]"  1;
	setAttr ".wl[329].w[9]"  1;
	setAttr ".wl[330].w[9]"  1;
	setAttr ".wl[331].w[9]"  1;
	setAttr ".wl[332].w[9]"  1;
	setAttr ".wl[333].w[9]"  1;
	setAttr ".wl[334].w[9]"  1;
	setAttr ".wl[335].w[9]"  1;
	setAttr ".wl[336].w[9]"  1;
	setAttr ".wl[337].w[9]"  1;
	setAttr ".wl[338].w[9]"  1;
	setAttr ".wl[339].w[9]"  1;
	setAttr ".wl[340].w[9]"  1;
	setAttr ".wl[341].w[9]"  1;
	setAttr ".wl[342].w[9]"  1;
	setAttr ".wl[343].w[9]"  1;
	setAttr ".wl[344].w[9]"  1;
	setAttr ".wl[345].w[9]"  1;
	setAttr ".wl[346].w[9]"  1;
	setAttr ".wl[347].w[9]"  1;
	setAttr ".wl[348].w[9]"  1;
	setAttr ".wl[349].w[9]"  1;
	setAttr ".wl[350].w[9]"  1;
	setAttr ".wl[351].w[9]"  1;
	setAttr ".wl[352].w[9]"  1;
	setAttr ".wl[353].w[9]"  1;
	setAttr ".wl[354].w[9]"  1;
	setAttr ".wl[355].w[9]"  1;
	setAttr ".wl[356].w[9]"  1;
	setAttr ".wl[357].w[9]"  1;
	setAttr ".wl[358].w[9]"  1;
	setAttr ".wl[359].w[9]"  1;
	setAttr ".wl[360].w[9]"  1;
	setAttr ".wl[361].w[9]"  1;
	setAttr ".wl[362].w[9]"  1;
	setAttr ".wl[363].w[9]"  1;
	setAttr ".wl[364].w[9]"  1;
	setAttr ".wl[365].w[9]"  1;
	setAttr ".wl[366].w[9]"  1;
	setAttr ".wl[367].w[9]"  1;
	setAttr ".wl[368].w[9]"  1;
	setAttr ".wl[369].w[9]"  1;
	setAttr ".wl[370].w[9]"  1;
	setAttr ".wl[371].w[9]"  1;
	setAttr ".wl[372].w[9]"  1;
	setAttr ".wl[373].w[9]"  1;
	setAttr ".wl[374].w[9]"  1;
	setAttr ".wl[375].w[9]"  1;
	setAttr ".wl[376].w[9]"  1;
	setAttr ".wl[377].w[9]"  1;
	setAttr ".wl[378].w[9]"  1;
	setAttr ".wl[379].w[9]"  1;
	setAttr ".wl[380].w[9]"  1;
	setAttr ".wl[381].w[9]"  1;
	setAttr ".wl[382].w[9]"  1;
	setAttr ".wl[383].w[9]"  1;
	setAttr ".wl[384].w[9]"  1;
	setAttr ".wl[385].w[9]"  1;
	setAttr ".wl[386].w[13]"  1;
	setAttr ".wl[387].w[13]"  1;
	setAttr ".wl[388].w[13]"  1;
	setAttr ".wl[389].w[13]"  1;
	setAttr ".wl[390].w[13]"  1;
	setAttr ".wl[391].w[13]"  1;
	setAttr ".wl[392].w[13]"  1;
	setAttr ".wl[393].w[13]"  1;
	setAttr ".wl[394].w[13]"  1;
	setAttr ".wl[395].w[13]"  1;
	setAttr ".wl[396].w[13]"  1;
	setAttr ".wl[397].w[13]"  1;
	setAttr ".wl[398].w[13]"  1;
	setAttr ".wl[399].w[13]"  1;
	setAttr ".wl[400].w[13]"  1;
	setAttr ".wl[401].w[13]"  1;
	setAttr ".wl[402].w[13]"  1;
	setAttr ".wl[403].w[13]"  1;
	setAttr ".wl[404].w[13]"  1;
	setAttr ".wl[405].w[13]"  1;
	setAttr ".wl[406].w[13]"  1;
	setAttr ".wl[407].w[13]"  1;
	setAttr ".wl[408].w[13]"  1;
	setAttr ".wl[409].w[13]"  1;
	setAttr ".wl[410].w[13]"  1;
	setAttr ".wl[411].w[13]"  1;
	setAttr ".wl[412].w[13]"  1;
	setAttr ".wl[413].w[13]"  1;
	setAttr ".wl[414].w[13]"  1;
	setAttr ".wl[415].w[13]"  1;
	setAttr ".wl[416].w[13]"  1;
	setAttr ".wl[417].w[13]"  1;
	setAttr ".wl[418].w[13]"  1;
	setAttr ".wl[419].w[13]"  1;
	setAttr ".wl[420].w[13]"  1;
	setAttr ".wl[421].w[13]"  1;
	setAttr ".wl[422].w[13]"  1;
	setAttr ".wl[423].w[13]"  1;
	setAttr ".wl[424].w[13]"  1;
	setAttr ".wl[425].w[13]"  1;
	setAttr ".wl[426].w[13]"  1;
	setAttr ".wl[427].w[13]"  1;
	setAttr ".wl[428].w[13]"  1;
	setAttr ".wl[429].w[13]"  1;
	setAttr ".wl[430].w[13]"  1;
	setAttr ".wl[431].w[13]"  1;
	setAttr ".wl[432].w[13]"  1;
	setAttr ".wl[433].w[13]"  1;
	setAttr ".wl[434].w[13]"  1;
	setAttr ".wl[435].w[13]"  1;
	setAttr ".wl[436].w[13]"  1;
	setAttr ".wl[437].w[13]"  1;
	setAttr ".wl[438].w[13]"  1;
	setAttr ".wl[439].w[13]"  1;
	setAttr ".wl[440].w[13]"  1;
	setAttr ".wl[441].w[13]"  1;
	setAttr ".wl[442].w[13]"  1;
	setAttr ".wl[443].w[13]"  1;
	setAttr ".wl[444].w[13]"  1;
	setAttr ".wl[445].w[13]"  1;
	setAttr ".wl[446].w[13]"  1;
	setAttr ".wl[447].w[13]"  1;
	setAttr ".wl[448].w[13]"  1;
	setAttr ".wl[449].w[13]"  1;
	setAttr ".wl[450].w[13]"  1;
	setAttr ".wl[451].w[13]"  1;
	setAttr ".wl[452].w[13]"  1;
	setAttr ".wl[453].w[13]"  1;
	setAttr ".wl[454].w[13]"  1;
	setAttr ".wl[455].w[13]"  1;
	setAttr ".wl[456].w[13]"  1;
	setAttr ".wl[457].w[13]"  1;
	setAttr ".wl[458].w[13]"  1;
	setAttr ".wl[459].w[13]"  1;
	setAttr ".wl[460].w[13]"  1;
	setAttr ".wl[461].w[13]"  1;
	setAttr ".wl[462].w[13]"  1;
	setAttr ".wl[463].w[13]"  1;
	setAttr ".wl[464].w[13]"  1;
	setAttr ".wl[465].w[13]"  1;
	setAttr ".wl[466].w[10]"  1;
	setAttr ".wl[467].w[10]"  1;
	setAttr ".wl[468].w[10]"  1;
	setAttr ".wl[469].w[10]"  1;
	setAttr ".wl[470].w[10]"  1;
	setAttr ".wl[471].w[10]"  1;
	setAttr ".wl[472].w[10]"  1;
	setAttr ".wl[473].w[10]"  1;
	setAttr ".wl[474].w[10]"  1;
	setAttr ".wl[475].w[10]"  1;
	setAttr ".wl[476].w[10]"  1;
	setAttr ".wl[477].w[10]"  1;
	setAttr ".wl[478].w[10]"  1;
	setAttr ".wl[479].w[10]"  1;
	setAttr ".wl[480].w[10]"  1;
	setAttr ".wl[481].w[10]"  1;
	setAttr ".wl[482].w[10]"  1;
	setAttr ".wl[483].w[10]"  1;
	setAttr ".wl[484].w[10]"  1;
	setAttr ".wl[485].w[10]"  1;
	setAttr ".wl[486].w[10]"  1;
	setAttr ".wl[487].w[10]"  1;
	setAttr ".wl[488].w[10]"  1;
	setAttr ".wl[489].w[10]"  1;
	setAttr ".wl[490].w[10]"  1;
	setAttr ".wl[491].w[10]"  1;
	setAttr ".wl[492].w[10]"  1;
	setAttr ".wl[493].w[10]"  1;
	setAttr ".wl[494].w[10]"  1;
	setAttr ".wl[495].w[10]"  1;
	setAttr ".wl[496].w[10]"  1;
	setAttr ".wl[497].w[10]"  1;
	setAttr ".wl[498].w[10]"  1;
	setAttr ".wl[499].w[10]"  1;
	setAttr ".wl[500].w[10]"  1;
	setAttr ".wl[501].w[10]"  1;
	setAttr ".wl[502].w[10]"  1;
	setAttr ".wl[503].w[10]"  1;
	setAttr ".wl[504].w[10]"  1;
	setAttr ".wl[505].w[10]"  1;
	setAttr ".wl[506].w[10]"  1;
	setAttr ".wl[507].w[10]"  1;
	setAttr ".wl[508].w[10]"  1;
	setAttr ".wl[509].w[10]"  1;
	setAttr ".wl[510].w[10]"  1;
	setAttr ".wl[511].w[10]"  1;
	setAttr ".wl[512].w[10]"  1;
	setAttr ".wl[513].w[10]"  1;
	setAttr ".wl[514].w[10]"  1;
	setAttr ".wl[515].w[10]"  1;
	setAttr ".wl[516].w[10]"  1;
	setAttr ".wl[517].w[10]"  1;
	setAttr ".wl[518].w[10]"  1;
	setAttr ".wl[519].w[10]"  1;
	setAttr ".wl[520].w[10]"  1;
	setAttr ".wl[521].w[10]"  1;
	setAttr ".wl[522].w[10]"  1;
	setAttr ".wl[523].w[10]"  1;
	setAttr ".wl[524].w[10]"  1;
	setAttr ".wl[525].w[10]"  1;
	setAttr ".wl[526].w[10]"  1;
	setAttr ".wl[527].w[10]"  1;
	setAttr ".wl[528].w[10]"  1;
	setAttr ".wl[529].w[10]"  1;
	setAttr ".wl[530].w[10]"  1;
	setAttr ".wl[531].w[10]"  1;
	setAttr ".wl[532].w[10]"  1;
	setAttr ".wl[533].w[10]"  1;
	setAttr ".wl[534].w[10]"  1;
	setAttr ".wl[535].w[10]"  1;
	setAttr ".wl[536].w[10]"  1;
	setAttr ".wl[537].w[10]"  1;
	setAttr ".wl[538].w[10]"  1;
	setAttr ".wl[539].w[10]"  1;
	setAttr ".wl[540].w[10]"  1;
	setAttr ".wl[541].w[10]"  1;
	setAttr ".wl[542].w[10]"  1;
	setAttr ".wl[543].w[10]"  1;
	setAttr ".wl[544].w[10]"  1;
	setAttr ".wl[545].w[10]"  1;
	setAttr ".wl[546].w[14]"  1;
	setAttr ".wl[547].w[14]"  1;
	setAttr ".wl[548].w[14]"  1;
	setAttr ".wl[549].w[14]"  1;
	setAttr ".wl[550].w[14]"  1;
	setAttr ".wl[551].w[14]"  1;
	setAttr ".wl[552].w[14]"  1;
	setAttr ".wl[553].w[14]"  1;
	setAttr ".wl[554].w[14]"  1;
	setAttr ".wl[555].w[14]"  1;
	setAttr ".wl[556].w[14]"  1;
	setAttr ".wl[557].w[14]"  1;
	setAttr ".wl[558].w[14]"  1;
	setAttr ".wl[559].w[14]"  1;
	setAttr ".wl[560].w[14]"  1;
	setAttr ".wl[561].w[14]"  1;
	setAttr ".wl[562].w[14]"  1;
	setAttr ".wl[563].w[14]"  1;
	setAttr ".wl[564].w[14]"  1;
	setAttr ".wl[565].w[14]"  1;
	setAttr ".wl[566].w[14]"  1;
	setAttr ".wl[567].w[14]"  1;
	setAttr ".wl[568].w[14]"  1;
	setAttr ".wl[569].w[14]"  1;
	setAttr ".wl[570].w[14]"  1;
	setAttr ".wl[571].w[14]"  1;
	setAttr ".wl[572].w[14]"  1;
	setAttr ".wl[573].w[14]"  1;
	setAttr ".wl[574].w[14]"  1;
	setAttr ".wl[575].w[14]"  1;
	setAttr ".wl[576].w[14]"  1;
	setAttr ".wl[577].w[14]"  1;
	setAttr ".wl[578].w[14]"  1;
	setAttr ".wl[579].w[14]"  1;
	setAttr ".wl[580].w[14]"  1;
	setAttr ".wl[581].w[14]"  1;
	setAttr ".wl[582].w[14]"  1;
	setAttr ".wl[583].w[14]"  1;
	setAttr ".wl[584].w[14]"  1;
	setAttr ".wl[585].w[14]"  1;
	setAttr ".wl[586].w[14]"  1;
	setAttr ".wl[587].w[14]"  1;
	setAttr ".wl[588].w[14]"  1;
	setAttr ".wl[589].w[14]"  1;
	setAttr ".wl[590].w[14]"  1;
	setAttr ".wl[591].w[14]"  1;
	setAttr ".wl[592].w[14]"  1;
	setAttr ".wl[593].w[14]"  1;
	setAttr ".wl[594].w[14]"  1;
	setAttr ".wl[595].w[14]"  1;
	setAttr ".wl[596].w[14]"  1;
	setAttr ".wl[597].w[14]"  1;
	setAttr ".wl[598].w[14]"  1;
	setAttr ".wl[599].w[14]"  1;
	setAttr ".wl[600].w[14]"  1;
	setAttr ".wl[601].w[14]"  1;
	setAttr ".wl[602].w[14]"  1;
	setAttr ".wl[603].w[14]"  1;
	setAttr ".wl[604].w[14]"  1;
	setAttr ".wl[605].w[14]"  1;
	setAttr ".wl[606].w[14]"  1;
	setAttr ".wl[607].w[14]"  1;
	setAttr ".wl[608].w[14]"  1;
	setAttr ".wl[609].w[14]"  1;
	setAttr ".wl[610].w[14]"  1;
	setAttr ".wl[611].w[14]"  1;
	setAttr ".wl[612].w[14]"  1;
	setAttr ".wl[613].w[14]"  1;
	setAttr ".wl[614].w[14]"  1;
	setAttr ".wl[615].w[14]"  1;
	setAttr ".wl[616].w[14]"  1;
	setAttr ".wl[617].w[14]"  1;
	setAttr ".wl[618].w[14]"  1;
	setAttr ".wl[619].w[14]"  1;
	setAttr ".wl[620].w[14]"  1;
	setAttr ".wl[621].w[14]"  1;
	setAttr ".wl[622].w[14]"  1;
	setAttr ".wl[623].w[14]"  1;
	setAttr ".wl[624].w[14]"  1;
	setAttr ".wl[625].w[14]"  1;
	setAttr ".wl[626].w[15]"  1;
	setAttr ".wl[627].w[15]"  1;
	setAttr ".wl[628].w[15]"  1;
	setAttr ".wl[629].w[15]"  1;
	setAttr ".wl[630].w[15]"  1;
	setAttr ".wl[631].w[15]"  1;
	setAttr ".wl[632].w[15]"  1;
	setAttr ".wl[633].w[15]"  1;
	setAttr ".wl[634].w[15]"  1;
	setAttr ".wl[635].w[15]"  1;
	setAttr ".wl[636].w[15]"  1;
	setAttr ".wl[637].w[15]"  1;
	setAttr ".wl[638].w[15]"  1;
	setAttr ".wl[639].w[15]"  1;
	setAttr ".wl[640].w[15]"  1;
	setAttr ".wl[641].w[15]"  1;
	setAttr ".wl[642].w[15]"  1;
	setAttr ".wl[643].w[15]"  1;
	setAttr ".wl[644].w[15]"  1;
	setAttr ".wl[645].w[15]"  1;
	setAttr ".wl[646].w[15]"  1;
	setAttr ".wl[647].w[15]"  1;
	setAttr ".wl[648].w[15]"  1;
	setAttr ".wl[649].w[15]"  1;
	setAttr ".wl[650].w[15]"  1;
	setAttr ".wl[651].w[15]"  1;
	setAttr ".wl[652].w[15]"  1;
	setAttr ".wl[653].w[15]"  1;
	setAttr ".wl[654].w[15]"  1;
	setAttr ".wl[655].w[15]"  1;
	setAttr ".wl[656].w[15]"  1;
	setAttr ".wl[657].w[15]"  1;
	setAttr ".wl[658].w[15]"  1;
	setAttr ".wl[659].w[15]"  1;
	setAttr ".wl[660].w[15]"  1;
	setAttr ".wl[661].w[15]"  1;
	setAttr ".wl[662].w[15]"  1;
	setAttr ".wl[663].w[15]"  1;
	setAttr ".wl[664].w[15]"  1;
	setAttr ".wl[665].w[15]"  1;
	setAttr ".wl[666].w[15]"  1;
	setAttr ".wl[667].w[15]"  1;
	setAttr ".wl[668].w[15]"  1;
	setAttr ".wl[669].w[15]"  1;
	setAttr ".wl[670].w[15]"  1;
	setAttr ".wl[671].w[15]"  1;
	setAttr ".wl[672].w[15]"  1;
	setAttr ".wl[673].w[15]"  1;
	setAttr ".wl[674].w[15]"  1;
	setAttr ".wl[675].w[15]"  1;
	setAttr ".wl[676].w[15]"  1;
	setAttr ".wl[677].w[15]"  1;
	setAttr ".wl[678].w[15]"  1;
	setAttr ".wl[679].w[15]"  1;
	setAttr ".wl[680].w[15]"  1;
	setAttr ".wl[681].w[15]"  1;
	setAttr ".wl[682].w[15]"  1;
	setAttr ".wl[683].w[16]"  1;
	setAttr ".wl[684].w[15]"  1;
	setAttr ".wl[685].w[15]"  1;
	setAttr ".wl[686].w[15]"  1;
	setAttr ".wl[687].w[15]"  1;
	setAttr ".wl[688].w[15]"  1;
	setAttr ".wl[689].w[15]"  1;
	setAttr ".wl[690].w[15]"  1;
	setAttr ".wl[691].w[15]"  1;
	setAttr ".wl[692].w[15]"  1;
	setAttr ".wl[693].w[15]"  1;
	setAttr ".wl[694].w[15]"  1;
	setAttr ".wl[695].w[15]"  1;
	setAttr ".wl[696].w[15]"  1;
	setAttr ".wl[697].w[15]"  1;
	setAttr ".wl[698].w[15]"  1;
	setAttr ".wl[699].w[15]"  1;
	setAttr ".wl[700].w[15]"  1;
	setAttr ".wl[701].w[15]"  1;
	setAttr ".wl[702].w[15]"  1;
	setAttr ".wl[703].w[15]"  1;
	setAttr ".wl[704].w[15]"  1;
	setAttr ".wl[705].w[15]"  1;
	setAttr ".wl[706].w[11]"  1;
	setAttr ".wl[707].w[11]"  1;
	setAttr ".wl[708].w[11]"  1;
	setAttr ".wl[709].w[11]"  1;
	setAttr ".wl[710].w[11]"  1;
	setAttr ".wl[711].w[11]"  1;
	setAttr ".wl[712].w[11]"  1;
	setAttr ".wl[713].w[11]"  1;
	setAttr ".wl[714].w[11]"  1;
	setAttr ".wl[715].w[11]"  1;
	setAttr ".wl[716].w[11]"  1;
	setAttr ".wl[717].w[11]"  1;
	setAttr ".wl[718].w[11]"  1;
	setAttr ".wl[719].w[11]"  1;
	setAttr ".wl[720].w[11]"  1;
	setAttr ".wl[721].w[11]"  1;
	setAttr ".wl[722].w[11]"  1;
	setAttr ".wl[723].w[11]"  1;
	setAttr ".wl[724].w[11]"  1;
	setAttr ".wl[725].w[11]"  1;
	setAttr ".wl[726].w[11]"  1;
	setAttr ".wl[727].w[11]"  1;
	setAttr ".wl[728].w[11]"  1;
	setAttr ".wl[729].w[11]"  1;
	setAttr ".wl[730].w[11]"  1;
	setAttr ".wl[731].w[11]"  1;
	setAttr ".wl[732].w[11]"  1;
	setAttr ".wl[733].w[11]"  1;
	setAttr ".wl[734].w[11]"  1;
	setAttr ".wl[735].w[11]"  1;
	setAttr ".wl[736].w[11]"  1;
	setAttr ".wl[737].w[11]"  1;
	setAttr ".wl[738].w[11]"  1;
	setAttr ".wl[739].w[11]"  1;
	setAttr ".wl[740].w[11]"  1;
	setAttr ".wl[741].w[11]"  1;
	setAttr ".wl[742].w[11]"  1;
	setAttr ".wl[743].w[11]"  1;
	setAttr ".wl[744].w[11]"  1;
	setAttr ".wl[745].w[11]"  1;
	setAttr ".wl[746].w[11]"  1;
	setAttr ".wl[747].w[11]"  1;
	setAttr ".wl[748].w[11]"  1;
	setAttr ".wl[749].w[11]"  1;
	setAttr ".wl[750].w[11]"  1;
	setAttr ".wl[751].w[11]"  1;
	setAttr ".wl[752].w[11]"  1;
	setAttr ".wl[753].w[11]"  1;
	setAttr ".wl[754].w[11]"  1;
	setAttr ".wl[755].w[11]"  1;
	setAttr ".wl[756].w[11]"  1;
	setAttr ".wl[757].w[11]"  1;
	setAttr ".wl[758].w[11]"  1;
	setAttr ".wl[759].w[11]"  1;
	setAttr ".wl[760].w[11]"  1;
	setAttr ".wl[761].w[11]"  1;
	setAttr ".wl[762].w[11]"  1;
	setAttr ".wl[763].w[11]"  1;
	setAttr ".wl[764].w[11]"  1;
	setAttr ".wl[765].w[11]"  1;
	setAttr ".wl[766].w[11]"  1;
	setAttr ".wl[767].w[11]"  1;
	setAttr ".wl[768].w[11]"  1;
	setAttr ".wl[769].w[11]"  1;
	setAttr ".wl[770].w[11]"  1;
	setAttr ".wl[771].w[11]"  1;
	setAttr ".wl[772].w[11]"  1;
	setAttr ".wl[773].w[11]"  1;
	setAttr ".wl[774].w[11]"  1;
	setAttr ".wl[775].w[11]"  1;
	setAttr ".wl[776].w[11]"  1;
	setAttr ".wl[777].w[11]"  1;
	setAttr ".wl[778].w[11]"  1;
	setAttr ".wl[779].w[11]"  1;
	setAttr ".wl[780].w[11]"  1;
	setAttr ".wl[781].w[11]"  1;
	setAttr ".wl[782].w[11]"  1;
	setAttr ".wl[783].w[11]"  1;
	setAttr ".wl[784].w[11]"  1;
	setAttr ".wl[785].w[11]"  1;
	setAttr ".wl[786].w[7]"  1;
	setAttr ".wl[787].w[7]"  1;
	setAttr ".wl[788].w[7]"  1;
	setAttr ".wl[789].w[7]"  1;
	setAttr ".wl[790].w[7]"  1;
	setAttr ".wl[791].w[7]"  1;
	setAttr ".wl[792].w[7]"  1;
	setAttr ".wl[793].w[7]"  1;
	setAttr ".wl[794].w[7]"  1;
	setAttr ".wl[795].w[7]"  1;
	setAttr ".wl[796].w[7]"  1;
	setAttr ".wl[797].w[7]"  1;
	setAttr ".wl[798].w[7]"  1;
	setAttr ".wl[799].w[7]"  1;
	setAttr ".wl[800].w[7]"  1;
	setAttr ".wl[801].w[7]"  1;
	setAttr ".wl[802].w[7]"  1;
	setAttr ".wl[803].w[7]"  1;
	setAttr ".wl[804].w[7]"  1;
	setAttr ".wl[805].w[7]"  1;
	setAttr ".wl[806].w[7]"  1;
	setAttr ".wl[807].w[7]"  1;
	setAttr ".wl[808].w[7]"  1;
	setAttr ".wl[809].w[7]"  1;
	setAttr ".wl[810].w[7]"  1;
	setAttr ".wl[811].w[7]"  1;
	setAttr ".wl[812].w[7]"  1;
	setAttr ".wl[813].w[7]"  1;
	setAttr ".wl[814].w[7]"  1;
	setAttr ".wl[815].w[7]"  1;
	setAttr ".wl[816].w[7]"  1;
	setAttr ".wl[817].w[7]"  1;
	setAttr ".wl[818].w[7]"  1;
	setAttr ".wl[819].w[7]"  1;
	setAttr ".wl[820].w[7]"  1;
	setAttr ".wl[821].w[7]"  1;
	setAttr ".wl[822].w[7]"  1;
	setAttr ".wl[823].w[7]"  1;
	setAttr ".wl[824].w[7]"  1;
	setAttr ".wl[825].w[7]"  1;
	setAttr ".wl[826].w[7]"  1;
	setAttr ".wl[827].w[7]"  1;
	setAttr ".wl[828].w[7]"  1;
	setAttr ".wl[829].w[7]"  1;
	setAttr ".wl[830].w[7]"  1;
	setAttr ".wl[831].w[7]"  1;
	setAttr ".wl[832].w[7]"  1;
	setAttr ".wl[833].w[7]"  1;
	setAttr ".wl[834].w[7]"  1;
	setAttr ".wl[835].w[7]"  1;
	setAttr ".wl[836].w[7]"  1;
	setAttr ".wl[837].w[7]"  1;
	setAttr ".wl[838].w[7]"  1;
	setAttr ".wl[839].w[7]"  1;
	setAttr ".wl[840].w[7]"  1;
	setAttr ".wl[841].w[7]"  1;
	setAttr ".wl[842].w[7]"  1;
	setAttr ".wl[843].w[8]"  1;
	setAttr ".wl[844].w[7]"  1;
	setAttr ".wl[845].w[7]"  1;
	setAttr ".wl[846].w[7]"  1;
	setAttr ".wl[847].w[7]"  1;
	setAttr ".wl[848].w[7]"  1;
	setAttr ".wl[849].w[7]"  1;
	setAttr ".wl[850].w[7]"  1;
	setAttr ".wl[851].w[7]"  1;
	setAttr ".wl[852].w[7]"  1;
	setAttr ".wl[853].w[7]"  1;
	setAttr ".wl[854].w[7]"  1;
	setAttr ".wl[855].w[7]"  1;
	setAttr ".wl[856].w[7]"  1;
	setAttr ".wl[857].w[7]"  1;
	setAttr ".wl[858].w[7]"  1;
	setAttr ".wl[859].w[7]"  1;
	setAttr ".wl[860].w[7]"  1;
	setAttr ".wl[861].w[7]"  1;
	setAttr ".wl[862].w[7]"  1;
	setAttr ".wl[863].w[7]"  1;
	setAttr ".wl[864].w[7]"  1;
	setAttr ".wl[865].w[7]"  1;
	setAttr ".wl[866].w[6]"  1;
	setAttr ".wl[867].w[6]"  1;
	setAttr ".wl[868].w[6]"  1;
	setAttr ".wl[869].w[6]"  1;
	setAttr ".wl[870].w[6]"  1;
	setAttr ".wl[871].w[6]"  1;
	setAttr ".wl[872].w[6]"  1;
	setAttr ".wl[873].w[6]"  1;
	setAttr ".wl[874].w[6]"  1;
	setAttr ".wl[875].w[6]"  1;
	setAttr ".wl[876].w[6]"  1;
	setAttr ".wl[877].w[6]"  1;
	setAttr ".wl[878].w[6]"  1;
	setAttr ".wl[879].w[6]"  1;
	setAttr ".wl[880].w[6]"  1;
	setAttr ".wl[881].w[6]"  1;
	setAttr ".wl[882].w[6]"  1;
	setAttr ".wl[883].w[6]"  1;
	setAttr ".wl[884].w[6]"  1;
	setAttr ".wl[885].w[6]"  1;
	setAttr ".wl[886].w[6]"  1;
	setAttr ".wl[887].w[6]"  1;
	setAttr ".wl[888].w[6]"  1;
	setAttr ".wl[889].w[6]"  1;
	setAttr ".wl[890].w[6]"  1;
	setAttr ".wl[891].w[6]"  1;
	setAttr ".wl[892].w[6]"  1;
	setAttr ".wl[893].w[6]"  1;
	setAttr ".wl[894].w[6]"  1;
	setAttr ".wl[895].w[6]"  1;
	setAttr ".wl[896].w[6]"  1;
	setAttr ".wl[897].w[6]"  1;
	setAttr ".wl[898].w[6]"  1;
	setAttr ".wl[899].w[6]"  1;
	setAttr ".wl[900].w[6]"  1;
	setAttr ".wl[901].w[6]"  1;
	setAttr ".wl[902].w[6]"  1;
	setAttr ".wl[903].w[6]"  1;
	setAttr ".wl[904].w[6]"  1;
	setAttr ".wl[905].w[6]"  1;
	setAttr ".wl[906].w[6]"  1;
	setAttr ".wl[907].w[6]"  1;
	setAttr ".wl[908].w[6]"  1;
	setAttr ".wl[909].w[6]"  1;
	setAttr ".wl[910].w[6]"  1;
	setAttr ".wl[911].w[6]"  1;
	setAttr ".wl[912].w[6]"  1;
	setAttr ".wl[913].w[6]"  1;
	setAttr ".wl[914].w[6]"  1;
	setAttr ".wl[915].w[6]"  1;
	setAttr ".wl[916].w[6]"  1;
	setAttr ".wl[917].w[6]"  1;
	setAttr ".wl[918].w[6]"  1;
	setAttr ".wl[919].w[6]"  1;
	setAttr ".wl[920].w[6]"  1;
	setAttr ".wl[921].w[6]"  1;
	setAttr ".wl[922].w[6]"  1;
	setAttr ".wl[923].w[6]"  1;
	setAttr ".wl[924].w[6]"  1;
	setAttr ".wl[925].w[6]"  1;
	setAttr ".wl[926].w[6]"  1;
	setAttr ".wl[927].w[6]"  1;
	setAttr ".wl[928].w[6]"  1;
	setAttr ".wl[929].w[6]"  1;
	setAttr ".wl[930].w[6]"  1;
	setAttr ".wl[931].w[6]"  1;
	setAttr ".wl[932].w[6]"  1;
	setAttr ".wl[933].w[6]"  1;
	setAttr ".wl[934].w[6]"  1;
	setAttr ".wl[935].w[6]"  1;
	setAttr ".wl[936].w[6]"  1;
	setAttr ".wl[937].w[6]"  1;
	setAttr ".wl[938].w[6]"  1;
	setAttr ".wl[939].w[6]"  1;
	setAttr ".wl[940].w[6]"  1;
	setAttr ".wl[941].w[6]"  1;
	setAttr ".wl[942].w[6]"  1;
	setAttr ".wl[943].w[6]"  1;
	setAttr ".wl[944].w[6]"  1;
	setAttr ".wl[945].w[6]"  1;
	setAttr ".wl[946].w[2]"  1;
	setAttr ".wl[947].w[2]"  1;
	setAttr ".wl[948].w[2]"  1;
	setAttr ".wl[949].w[2]"  1;
	setAttr ".wl[950].w[2]"  1;
	setAttr ".wl[951].w[2]"  1;
	setAttr ".wl[952].w[2]"  1;
	setAttr ".wl[953].w[2]"  1;
	setAttr ".wl[954].w[2]"  1;
	setAttr ".wl[955].w[2]"  1;
	setAttr ".wl[956].w[2]"  1;
	setAttr ".wl[957].w[2]"  1;
	setAttr ".wl[958].w[2]"  1;
	setAttr ".wl[959].w[2]"  1;
	setAttr ".wl[960].w[2]"  1;
	setAttr ".wl[961].w[2]"  1;
	setAttr ".wl[962].w[2]"  1;
	setAttr ".wl[963].w[2]"  1;
	setAttr ".wl[964].w[2]"  1;
	setAttr ".wl[965].w[2]"  1;
	setAttr ".wl[966].w[2]"  1;
	setAttr ".wl[967].w[2]"  1;
	setAttr ".wl[968].w[2]"  1;
	setAttr ".wl[969].w[2]"  1;
	setAttr ".wl[970].w[2]"  1;
	setAttr ".wl[971].w[2]"  1;
	setAttr ".wl[972].w[2]"  1;
	setAttr ".wl[973].w[2]"  1;
	setAttr ".wl[974].w[2]"  1;
	setAttr ".wl[975].w[2]"  1;
	setAttr ".wl[976].w[2]"  1;
	setAttr ".wl[977].w[2]"  1;
	setAttr ".wl[978].w[2]"  1;
	setAttr ".wl[979].w[2]"  1;
	setAttr ".wl[980].w[2]"  1;
	setAttr ".wl[981].w[2]"  1;
	setAttr ".wl[982].w[2]"  1;
	setAttr ".wl[983].w[2]"  1;
	setAttr ".wl[984].w[2]"  1;
	setAttr ".wl[985].w[2]"  1;
	setAttr ".wl[986].w[2]"  1;
	setAttr ".wl[987].w[2]"  1;
	setAttr ".wl[988].w[2]"  1;
	setAttr ".wl[989].w[2]"  1;
	setAttr ".wl[990].w[2]"  1;
	setAttr ".wl[991].w[2]"  1;
	setAttr ".wl[992].w[2]"  1;
	setAttr ".wl[993].w[2]"  1;
	setAttr ".wl[994].w[2]"  1;
	setAttr ".wl[995].w[2]"  1;
	setAttr ".wl[996].w[2]"  1;
	setAttr ".wl[997].w[2]"  1;
	setAttr ".wl[998].w[2]"  1;
	setAttr ".wl[999].w[2]"  1;
	setAttr ".wl[1000].w[2]"  1;
	setAttr ".wl[1001].w[2]"  1;
	setAttr ".wl[1002].w[2]"  1;
	setAttr ".wl[1003].w[2]"  1;
	setAttr ".wl[1004].w[2]"  1;
	setAttr ".wl[1005].w[2]"  1;
	setAttr ".wl[1006].w[2]"  1;
	setAttr ".wl[1007].w[2]"  1;
	setAttr ".wl[1008].w[2]"  1;
	setAttr ".wl[1009].w[2]"  1;
	setAttr ".wl[1010].w[2]"  1;
	setAttr ".wl[1011].w[2]"  1;
	setAttr ".wl[1012].w[2]"  1;
	setAttr ".wl[1013].w[2]"  1;
	setAttr ".wl[1014].w[2]"  1;
	setAttr ".wl[1015].w[2]"  1;
	setAttr ".wl[1016].w[2]"  1;
	setAttr ".wl[1017].w[2]"  1;
	setAttr ".wl[1018].w[2]"  1;
	setAttr ".wl[1019].w[2]"  1;
	setAttr ".wl[1020].w[2]"  1;
	setAttr ".wl[1021].w[2]"  1;
	setAttr ".wl[1022].w[2]"  1;
	setAttr ".wl[1023].w[2]"  1;
	setAttr ".wl[1024].w[2]"  1;
	setAttr ".wl[1025].w[2]"  1;
	setAttr ".wl[1026].w[3]"  1;
	setAttr ".wl[1027].w[3]"  1;
	setAttr ".wl[1028].w[3]"  1;
	setAttr ".wl[1029].w[3]"  1;
	setAttr ".wl[1030].w[3]"  1;
	setAttr ".wl[1031].w[3]"  1;
	setAttr ".wl[1032].w[3]"  1;
	setAttr ".wl[1033].w[3]"  1;
	setAttr ".wl[1034].w[3]"  1;
	setAttr ".wl[1035].w[3]"  1;
	setAttr ".wl[1036].w[3]"  1;
	setAttr ".wl[1037].w[3]"  1;
	setAttr ".wl[1038].w[3]"  1;
	setAttr ".wl[1039].w[3]"  1;
	setAttr ".wl[1040].w[3]"  1;
	setAttr ".wl[1041].w[3]"  1;
	setAttr ".wl[1042].w[3]"  1;
	setAttr ".wl[1043].w[3]"  1;
	setAttr ".wl[1044].w[3]"  1;
	setAttr ".wl[1045].w[3]"  1;
	setAttr ".wl[1046].w[3]"  1;
	setAttr ".wl[1047].w[3]"  1;
	setAttr ".wl[1048].w[3]"  1;
	setAttr ".wl[1049].w[3]"  1;
	setAttr ".wl[1050].w[3]"  1;
	setAttr ".wl[1051].w[3]"  1;
	setAttr ".wl[1052].w[3]"  1;
	setAttr ".wl[1053].w[3]"  1;
	setAttr ".wl[1054].w[3]"  1;
	setAttr ".wl[1055].w[3]"  1;
	setAttr ".wl[1056].w[3]"  1;
	setAttr ".wl[1057].w[3]"  1;
	setAttr ".wl[1058].w[3]"  1;
	setAttr ".wl[1059].w[3]"  1;
	setAttr ".wl[1060].w[3]"  1;
	setAttr ".wl[1061].w[3]"  1;
	setAttr ".wl[1062].w[3]"  1;
	setAttr ".wl[1063].w[3]"  1;
	setAttr ".wl[1064].w[3]"  1;
	setAttr ".wl[1065].w[3]"  1;
	setAttr ".wl[1066].w[3]"  1;
	setAttr ".wl[1067].w[3]"  1;
	setAttr ".wl[1068].w[3]"  1;
	setAttr ".wl[1069].w[3]"  1;
	setAttr ".wl[1070].w[3]"  1;
	setAttr ".wl[1071].w[3]"  1;
	setAttr ".wl[1072].w[3]"  1;
	setAttr ".wl[1073].w[3]"  1;
	setAttr ".wl[1074].w[3]"  1;
	setAttr ".wl[1075].w[3]"  1;
	setAttr ".wl[1076].w[3]"  1;
	setAttr ".wl[1077].w[3]"  1;
	setAttr ".wl[1078].w[3]"  1;
	setAttr ".wl[1079].w[3]"  1;
	setAttr ".wl[1080].w[3]"  1;
	setAttr ".wl[1081].w[3]"  1;
	setAttr ".wl[1082].w[3]"  1;
	setAttr ".wl[1083].w[3]"  1;
	setAttr ".wl[1084].w[3]"  1;
	setAttr ".wl[1085].w[3]"  1;
	setAttr ".wl[1086].w[3]"  1;
	setAttr ".wl[1087].w[3]"  1;
	setAttr ".wl[1088].w[3]"  1;
	setAttr ".wl[1089].w[3]"  1;
	setAttr ".wl[1090].w[3]"  1;
	setAttr ".wl[1091].w[3]"  1;
	setAttr ".wl[1092].w[3]"  1;
	setAttr ".wl[1093].w[3]"  1;
	setAttr ".wl[1094].w[3]"  1;
	setAttr ".wl[1095].w[3]"  1;
	setAttr ".wl[1096].w[3]"  1;
	setAttr ".wl[1097].w[3]"  1;
	setAttr ".wl[1098].w[3]"  1;
	setAttr ".wl[1099].w[3]"  1;
	setAttr ".wl[1100].w[3]"  1;
	setAttr ".wl[1101].w[3]"  1;
	setAttr ".wl[1102].w[3]"  1;
	setAttr ".wl[1103].w[3]"  1;
	setAttr ".wl[1104].w[3]"  1;
	setAttr ".wl[1105].w[3]"  1;
	setAttr -s 17 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.67728063612412592 0.033420956500576054 -0.73496529142394595 0
		 0.049285833269673673 0.99878471486047182 -1.5612511283791261e-016 0 0.73407209902720949 -0.036223376812117833 -0.67810472672155464 0
		 0.32982201455776367 -0.10540503156560241 -0.28744054354975201 1;
	setAttr ".pm[1]" -type "matrix" -0.00087271464250723255 6.417336517355807e-006 -0.99999961916391256 0
		 0.0073531057152183372 0.99997296555273973 2.6297882735381094e-015 0 0.99997258472694817 -0.0073531029148903287 -0.0008727382365031122 0
		 0.064605613141398524 -0.11468457073224569 -0.33050134161981937 1;
	setAttr ".pm[2]" -type "matrix" 0.069129200428093021 0.013078460148440458 -0.99752198348122523 0
		 -0.18589115722295757 0.98257034235026131 -8.6198409521287529e-015 0 0.98013551681105926 0.1854305158646655 0.070355472222719109 0
		 -0.39254428476767578 -0.19432851732114623 -0.3614643989959157 1;
	setAttr ".pm[3]" -type "matrix" 0.10370546758295085 0.03419814777805593 -0.99401995084703976 0
		 -0.31317382610263333 0.94969582216846549 4.2188474935755941e-015 0 0.94401659447153741 0.31130103122911856 0.10919861408483267 0
		 -0.74248766230858165 -0.29150864583699204 -0.39281857421988126 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 8.0524407813256778e-015 -5.6926685587655167e-014 0
		 -8.0699336102460898e-015 1 -3.4861002973229455e-014 0 5.695444116327024e-014 3.4789563432529335e-014 1 0
		 0.27884864807123022 0.030127525329556232 -1.0589644908905198 1;
	setAttr ".pm[5]" -type "matrix" -0.0078902165385730545 8.70502128245308e-005 -0.99996886796801554 0
		 0.011032005903614549 0.99993914557124042 -7.8375619796261489e-016 0 0.99990801543377827 -0.011031662454853916 -0.0078906967224146828 0
		 0.06242246729922888 -0.20366217070317236 -0.097716679097526904 1;
	setAttr ".pm[6]" -type "matrix" 0.033834508825753049 0.0071389224900778253 -0.99940195206843596 0
		 -0.20644987034906079 0.97845717894696638 -3.8294888093925999e-014 0 0.97787201465497331 0.20632640343112821 0.034579447679211041 0
		 -0.41181590825278852 -0.30034426748768578 -0.11756653648106538 1;
	setAttr ".pm[7]" -type "matrix" 0.049552283122038979 0.019156991331155004 -0.9985877932963787 0
		 -0.36059238668836607 0.93272350172084106 -2.9941327195359683e-015 0 0.93140630333908569 0.36008315570261018 0.053126444257720173 0
		 -0.76925899098722539 -0.42868787510213352 -0.13377907337537617 1;
	setAttr ".pm[8]" -type "matrix" 1 -5.0792002506346796e-014 -3.1918911962535243e-016 0
		 5.0754578656739755e-014 1 8.9817190147679223e-013 0 4.3021142199666423e-016 -8.9812256309263389e-013 0.99999999999999978 0
		 0.073982000350950081 -0.025839731096211044 -1.1275279521942365 1;
	setAttr ".pm[9]" -type "matrix" 0.0014200295544245451 -4.0850147895223542e-006 -0.99999899174917994 0
		 0.0028766992006705422 0.99999586229229398 -2.788170729180454e-015 0 0.99999485404564603 -0.0028766963002362276 0.0014200354301160448 0
		 0.064604278556659567 -0.20314781957313266 0.17335462550631672 1;
	setAttr ".pm[10]" -type "matrix" -0.02643929101900367 -0.0032269145239395471 -0.99964521251945559 0
		 -0.1211509557797696 0.99263409467620478 2.3548871186385153e-014 0 0.99228192052665176 0.12110797293740355 -0.02663548548332436 0
		 -0.41708105953439145 -0.25686548223029632 0.18591587779461743 1;
	setAttr ".pm[11]" -type "matrix" -0.069756283551086623 -0.030274339729157759 -0.99710457087464177 0
		 -0.39812349500951677 0.91733182803247781 8.9442342421364158e-015 0 0.91467575873997409 0.39697075664657744 -0.076042585048747974 0
		 -0.6877992615362708 -0.47037758140481561 0.22665959094158769 1;
	setAttr ".pm[12]" -type "matrix" 1 -6.988853374584612e-009 1.9246952614347991e-011 0
		 6.988853385109175e-009 0.99999999999999956 3.5548152354410798e-008 0 -1.9247199695815727e-011 -3.5548152185326485e-008 0.99999999999999922 0
		 -0.1464916471583759 -0.058966180726445418 -1.0598285219201258 1;
	setAttr ".pm[13]" -type "matrix" -0.008866168199901131 -0.00044000133933507537 -0.99996059795387526 0
		 -0.04956600212875216 0.99877085031200852 4.4054928975689725e-014 0 0.99873149669689665 0.049564049126850453 -0.0088770794593465933 0
		 0.074805601145429515 -0.11036484850156428 0.42875259149764178 1;
	setAttr ".pm[14]" -type "matrix" -0.12402689021420538 -0.011727514255339695 -0.9922095524198421 0
		 -0.094136328422531015 0.99555931599836123 2.2792531750859253e-014 0 0.98780346333413827 0.093402964290569615 -0.12458011112057869 0
		 -0.31514515740836729 -0.12197964957335242 0.46956055395867408 1;
	setAttr ".pm[15]" -type "matrix" -0.16569870383128718 -0.062133734505570554 -0.98421711963622238 0
		 -0.35110719473290564 0.93633526997907612 1.8041124150158786e-016 0 0.92155720243261108 0.34556571188357477 -0.17696514180758124 0
		 -0.57925717288224143 -0.28073189952245076 0.50422108616125716 1;
	setAttr ".pm[16]" -type "matrix" 0.97602509327900022 0.21740090594018194 0.010576548875069999 0
		 -0.21348272609907845 0.94669913254656013 0.24121749126648431 0 0.042428091484586664 -0.23769223490046698 0.97041344720742451 0
		 -0.38293541845486306 0.13731616908073568 -0.86250500587390011 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 15 ".ma";
	setAttr -s 17 ".dpf[0:16]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 15 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
	setAttr -s 17 ".ifcl";
	setAttr -s 17 ".ifcl";
createNode objectSet -n "skinCluster2Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 15 ".wm";
	setAttr -s 17 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.015645977945217826 0.089021381578947373
		 -0.44084605594059406 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.022579723962865207 -0.91571967294939016 0.0098893192649908198 0.40106089064342565 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.51099951335492033 -1.9196444919991282e-017
		 -2.7877694745491963e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.010299872642119949 0.36347696336983221 -0.0195389775601198 0.93134131127042086 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.51196163725747079 4.9966690983138883e-018
		 -1.1506183498308742e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0031962355900088156 0.035492016553064519 -0.096951520848770026 0.99465094553022004 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.39622156587787916 -1.5029959878034262e-016
		 -1.7203213250989995e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0048765154656569432 0.018880759319635527 -0.065717273810851448 0.99764772161685256 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.23770941299352161 -4.5044686593629204e-017
		 -1.1159212471981346e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10584308117402058 0.65893697356055614 0.11810728632625252 0.73528904245819771 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.35762544263088486 0.09643107366371681
		 -0.17162798125039513 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.010869811905951224 0.36018784347384403 -0.01785002274117254 0.9326456675988638 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.53422124077533728 -1.9507456899031332e-017
		 -7.5986418880041755e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0020875410790050495 0.021134114886280447 -0.10924548192869345 0.99378791300678671 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.41848582029808751 -2.8361475489709085e-017
		 2.9038287073350821e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0026403105078319214 0.008899002448003325 -0.080388520825511955 0.99672038317440803 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.26794406354241906 -1.7051783619379958e-016
		 -2.6029296007441371e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.12619660964521162 0.6763957374090952 0.13308893588046949 0.71333761801482509 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.17444455777541806 0.10547028142776317
		 -0.37041056152841872 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0095141546576651345 0.36456641649018179 -0.02161379665958264 0.93087789350838901 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.51535957471869354 -4.3930447322193605e-017
		 -5.5511151231257359e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00083123294603596853 -0.014004228117122113 -0.062116858954721361 0.99797028336530758 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.38613303013681538 -5.0152478973430691e-017
		 -1.2057012580114784e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0064896136100887382 -0.023869729827765373 -0.14346934312637691 0.98934557587125604 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.247905643750639 1.3761527681329692e-017
		 -9.6235850020506237e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.14912619201898913 -0.71818011068803989 -0.13818636614251795 -0.66549473001546489 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0033868493153578769
		 0.025113069820340769 -0.55862671707347411 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-5.0476917435926527e-005 0.35989170112386748 -0.046114089266782489 0.93185377162156979 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.44719442278383792 -3.1202082812576681e-017
		 -1.1179806112604468e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0041670557908411688 -0.057831247666410422 -0.022305352313696705 0.99806846142814487 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.34305088233255449 4.7607873522947172e-018
		 4.7607873522947172e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0059504526767637381 -0.025818786152941323 -0.13180733514511739 0.99092119202107731 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.17992715718301056 4.163336342344337e-017
		 -2.7755575615628914e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.29312392599064796 0.71073754009135359 0.13670251770770953 0.62469427304009595 1
		 1 1 yes;
	setAttr -s 15 ".m";
	setAttr -s 15 ".p";
	setAttr ".bp" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
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
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
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
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
select -ne :time1;
	setAttr ".o" 100;
	setAttr ".unw" 100;
select -ne :renderPartition;
	setAttr -s 9 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :defaultTextureList1;
	setAttr -s 5 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 8 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "root_rotateX.o" "root.rx";
connectAttr "root_rotateY.o" "root.ry";
connectAttr "root_rotateZ.o" "root.rz";
connectAttr "root.s" "index0.is";
connectAttr "index0_rotateX.o" "index0.rx";
connectAttr "index0_rotateY.o" "index0.ry";
connectAttr "index0_rotateZ.o" "index0.rz";
connectAttr "index0.s" "index1.is";
connectAttr "index1_rotateX.o" "index1.rx";
connectAttr "index1_rotateY.o" "index1.ry";
connectAttr "index1_rotateZ.o" "index1.rz";
connectAttr "index1.s" "index2.is";
connectAttr "index2_rotateX.o" "index2.rx";
connectAttr "index2_rotateY.o" "index2.ry";
connectAttr "index2_rotateZ.o" "index2.rz";
connectAttr "index2.s" "index3.is";
connectAttr "index3_rotateX.o" "index3.rx";
connectAttr "index3_rotateY.o" "index3.ry";
connectAttr "index3_rotateZ.o" "index3.rz";
connectAttr "root.s" "middle0.is";
connectAttr "middle0_rotateX.o" "middle0.rx";
connectAttr "middle0_rotateY.o" "middle0.ry";
connectAttr "middle0_rotateZ.o" "middle0.rz";
connectAttr "middle0.s" "middle1.is";
connectAttr "middle1_rotateX.o" "middle1.rx";
connectAttr "middle1_rotateY.o" "middle1.ry";
connectAttr "middle1_rotateZ.o" "middle1.rz";
connectAttr "middle1.s" "middle2.is";
connectAttr "middle2_rotateX.o" "middle2.rx";
connectAttr "middle2_rotateY.o" "middle2.ry";
connectAttr "middle2_rotateZ.o" "middle2.rz";
connectAttr "middle2.s" "middle3.is";
connectAttr "middle3_rotateX.o" "middle3.rx";
connectAttr "middle3_rotateY.o" "middle3.ry";
connectAttr "middle3_rotateZ.o" "middle3.rz";
connectAttr "root.s" "ring0.is";
connectAttr "ring0_rotateX.o" "ring0.rx";
connectAttr "ring0_rotateY.o" "ring0.ry";
connectAttr "ring0_rotateZ.o" "ring0.rz";
connectAttr "ring0.s" "ring1.is";
connectAttr "ring1_rotateX.o" "ring1.rx";
connectAttr "ring1_rotateY.o" "ring1.ry";
connectAttr "ring1_rotateZ.o" "ring1.rz";
connectAttr "ring1.s" "ring2.is";
connectAttr "ring2_rotateX.o" "ring2.rx";
connectAttr "ring2_rotateY.o" "ring2.ry";
connectAttr "ring2_rotateZ.o" "ring2.rz";
connectAttr "ring2.s" "ring3.is";
connectAttr "ring3_rotateX.o" "ring3.rx";
connectAttr "ring3_rotateY.o" "ring3.ry";
connectAttr "ring3_rotateZ.o" "ring3.rz";
connectAttr "root.s" "pinky0.is";
connectAttr "pinky0_rotateX.o" "pinky0.rx";
connectAttr "pinky0_rotateY.o" "pinky0.ry";
connectAttr "pinky0_rotateZ.o" "pinky0.rz";
connectAttr "pinky0.s" "pinky1.is";
connectAttr "pinky1_rotateX.o" "pinky1.rx";
connectAttr "pinky1_rotateY.o" "pinky1.ry";
connectAttr "pinky1_rotateZ.o" "pinky1.rz";
connectAttr "pinky1.s" "pinky2.is";
connectAttr "pinky2_rotateX.o" "pinky2.rx";
connectAttr "pinky2_rotateY.o" "pinky2.ry";
connectAttr "pinky2_rotateZ.o" "pinky2.rz";
connectAttr "pinky2.s" "pinky3.is";
connectAttr "pinky3_rotateX.o" "pinky3.rx";
connectAttr "pinky3_rotateY.o" "pinky3.ry";
connectAttr "pinky3_rotateZ.o" "pinky3.rz";
connectAttr "skinCluster2.og[0]" "techHandShape.i";
connectAttr "groupId3.id" "techHandShape.iog.og[4].gid";
connectAttr "tweakSet1.mwc" "techHandShape.iog.og[4].gco";
connectAttr "skinCluster2GroupId.id" "techHandShape.iog.og[5].gid";
connectAttr "skinCluster2Set.mwc" "techHandShape.iog.og[5].gco";
connectAttr "tweak1.vl[0].vt[1]" "techHandShape.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "icosahedron:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "icosahedron:lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Hand_MDLSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Hand_MDLSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Hand_MDLSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Hand_MDLSG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "icosahedron:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "icosahedron:lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Hand_MDLSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Hand_MDLSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Hand_MDLSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Hand_MDLSG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "icosahedron:ico_edges.oc" "icosahedron:lambert2SG.ss";
connectAttr "icosahedron:lambert2SG.msg" "icosahedron:materialInfo1.sg";
connectAttr "icosahedron:ico_edges.msg" "icosahedron:materialInfo1.m";
connectAttr "icosahedron:ico_faces.oc" "icosahedron:lambert3SG.ss";
connectAttr "icosahedron:lambert3SG.msg" "icosahedron:materialInfo2.sg";
connectAttr "icosahedron:ico_faces.msg" "icosahedron:materialInfo2.m";
connectAttr "icosahedron:hyperView1.msg" "icosahedron:nodeEditorPanel2Info.b[0]"
		;
connectAttr "icosahedron:hyperLayout1.msg" "icosahedron:hyperView1.hl";
connectAttr "psdFileTex12456.oc" "Hand_SHD.c";
connectAttr "file8.oc" "Hand_SHD.sc";
connectAttr "bump2d1.o" "Hand_SHD.n";
connectAttr "Hand_SHD.oc" "Hand_MDLSG.ss";
connectAttr "Hand_MDLSG.msg" "materialInfo1.sg";
connectAttr "Hand_SHD.msg" "materialInfo1.m";
connectAttr "psdFileTex12456.msg" "materialInfo1.t" -na;
connectAttr "Hand_SHD.oc" "Hand_MDLSG1.ss";
connectAttr "Hand_MDLSG1.msg" "materialInfo2.sg";
connectAttr "Hand_SHD.msg" "materialInfo2.m";
connectAttr "psdFileTex12456.msg" "materialInfo2.t" -na;
connectAttr "place2dTexture1.o" "psdFileTex12456.uv";
connectAttr "place2dTexture1.ofu" "psdFileTex12456.ofu";
connectAttr "place2dTexture1.ofv" "psdFileTex12456.ofv";
connectAttr "place2dTexture1.rf" "psdFileTex12456.rf";
connectAttr "place2dTexture1.reu" "psdFileTex12456.reu";
connectAttr "place2dTexture1.rev" "psdFileTex12456.rev";
connectAttr "place2dTexture1.vt1" "psdFileTex12456.vt1";
connectAttr "place2dTexture1.vt2" "psdFileTex12456.vt2";
connectAttr "place2dTexture1.vt3" "psdFileTex12456.vt3";
connectAttr "place2dTexture1.vc1" "psdFileTex12456.vc1";
connectAttr "place2dTexture1.ofs" "psdFileTex12456.fs";
connectAttr "place2dTexture2.o" "file8.uv";
connectAttr "place2dTexture2.ofu" "file8.ofu";
connectAttr "place2dTexture2.ofv" "file8.ofv";
connectAttr "place2dTexture2.rf" "file8.rf";
connectAttr "place2dTexture2.reu" "file8.reu";
connectAttr "place2dTexture2.rev" "file8.rev";
connectAttr "place2dTexture2.vt1" "file8.vt1";
connectAttr "place2dTexture2.vt2" "file8.vt2";
connectAttr "place2dTexture2.vt3" "file8.vt3";
connectAttr "place2dTexture2.vc1" "file8.vc1";
connectAttr "place2dTexture2.ofs" "file8.fs";
connectAttr "psdFileTex12457.oa" "bump2d1.bv";
connectAttr "place2dTexture3.o" "psdFileTex12457.uv";
connectAttr "place2dTexture3.ofu" "psdFileTex12457.ofu";
connectAttr "place2dTexture3.ofv" "psdFileTex12457.ofv";
connectAttr "place2dTexture3.rf" "psdFileTex12457.rf";
connectAttr "place2dTexture3.reu" "psdFileTex12457.reu";
connectAttr "place2dTexture3.rev" "psdFileTex12457.rev";
connectAttr "place2dTexture3.vt1" "psdFileTex12457.vt1";
connectAttr "place2dTexture3.vt2" "psdFileTex12457.vt2";
connectAttr "place2dTexture3.vt3" "psdFileTex12457.vt3";
connectAttr "place2dTexture3.vc1" "psdFileTex12457.vc1";
connectAttr "place2dTexture3.ofs" "psdFileTex12457.fs";
connectAttr "psdFileTex12456.oc" "Hand_SHD1.c";
connectAttr "file8.oc" "Hand_SHD1.sc";
connectAttr "bump2d2.o" "Hand_SHD1.n";
connectAttr "Hand_SHD1.oc" "Hand_MDLSG2.ss";
connectAttr "Hand_MDLSG2.msg" "materialInfo3.sg";
connectAttr "Hand_SHD1.msg" "materialInfo3.m";
connectAttr "psdFileTex12456.msg" "materialInfo3.t" -na;
connectAttr "Hand_SHD1.oc" "Hand_MDLSG3.ss";
connectAttr "Hand_MDLSG3.msg" "materialInfo4.sg";
connectAttr "Hand_SHD1.msg" "materialInfo4.m";
connectAttr "psdFileTex12456.msg" "materialInfo4.t" -na;
connectAttr "psdFileTex12457.oa" "bump2d2.bv";
connectAttr "techHandShape6Orig2.w" "tweak1.ip[0].ig";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "groupId3.msg" "tweakSet1.gn" -na;
connectAttr "techHandShape.iog.og[4]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "skinCluster1GroupParts.og" "groupParts4.ig";
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupParts6.og" "groupParts7.ig";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupParts8.og" "groupParts9.ig";
connectAttr "groupParts9.og" "groupParts10.ig";
connectAttr "groupParts10.og" "groupParts11.ig";
connectAttr "groupParts11.og" "groupParts12.ig";
connectAttr "groupParts12.og" "groupParts13.ig";
connectAttr "groupParts13.og" "groupParts16.ig";
connectAttr "groupId3.id" "groupParts16.gi";
connectAttr "blendColors1.op" "surfaceShader1.oc";
connectAttr "surfaceShader1.oc" "surfaceShader1SG.ss";
connectAttr "surfaceShader1SG.msg" "materialInfo5.sg";
connectAttr "surfaceShader1.msg" "materialInfo5.m";
connectAttr "ramp1.msg" "materialInfo5.t" -na;
connectAttr "place2dTexture4.o" "ramp1.uv";
connectAttr "place2dTexture4.ofs" "ramp1.fs";
connectAttr "place2dTexture5.o" "checker1.uv";
connectAttr "place2dTexture5.ofs" "checker1.fs";
connectAttr "ramp1.oc" "blendColors1.c1";
connectAttr "checker1.oc" "blendColors1.c2";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "root.wm" "skinCluster2.ma[0]";
connectAttr "index0.wm" "skinCluster2.ma[1]";
connectAttr "index1.wm" "skinCluster2.ma[2]";
connectAttr "index2.wm" "skinCluster2.ma[3]";
connectAttr "middle0.wm" "skinCluster2.ma[5]";
connectAttr "middle1.wm" "skinCluster2.ma[6]";
connectAttr "middle2.wm" "skinCluster2.ma[7]";
connectAttr "middle3.wm" "skinCluster2.ma[8]";
connectAttr "ring0.wm" "skinCluster2.ma[9]";
connectAttr "ring1.wm" "skinCluster2.ma[10]";
connectAttr "ring2.wm" "skinCluster2.ma[11]";
connectAttr "pinky0.wm" "skinCluster2.ma[13]";
connectAttr "pinky1.wm" "skinCluster2.ma[14]";
connectAttr "pinky2.wm" "skinCluster2.ma[15]";
connectAttr "pinky3.wm" "skinCluster2.ma[16]";
connectAttr "root.liw" "skinCluster2.lw[0]";
connectAttr "index0.liw" "skinCluster2.lw[1]";
connectAttr "index1.liw" "skinCluster2.lw[2]";
connectAttr "index2.liw" "skinCluster2.lw[3]";
connectAttr "middle0.liw" "skinCluster2.lw[5]";
connectAttr "middle1.liw" "skinCluster2.lw[6]";
connectAttr "middle2.liw" "skinCluster2.lw[7]";
connectAttr "middle3.liw" "skinCluster2.lw[8]";
connectAttr "ring0.liw" "skinCluster2.lw[9]";
connectAttr "ring1.liw" "skinCluster2.lw[10]";
connectAttr "ring2.liw" "skinCluster2.lw[11]";
connectAttr "pinky0.liw" "skinCluster2.lw[13]";
connectAttr "pinky1.liw" "skinCluster2.lw[14]";
connectAttr "pinky2.liw" "skinCluster2.lw[15]";
connectAttr "pinky3.liw" "skinCluster2.lw[16]";
connectAttr "root.obcc" "skinCluster2.ifcl[0]";
connectAttr "index0.obcc" "skinCluster2.ifcl[1]";
connectAttr "index1.obcc" "skinCluster2.ifcl[2]";
connectAttr "index2.obcc" "skinCluster2.ifcl[3]";
connectAttr "index3.obcc" "skinCluster2.ifcl[4]";
connectAttr "middle0.obcc" "skinCluster2.ifcl[5]";
connectAttr "middle1.obcc" "skinCluster2.ifcl[6]";
connectAttr "middle2.obcc" "skinCluster2.ifcl[7]";
connectAttr "middle3.obcc" "skinCluster2.ifcl[8]";
connectAttr "ring0.obcc" "skinCluster2.ifcl[9]";
connectAttr "ring1.obcc" "skinCluster2.ifcl[10]";
connectAttr "ring2.obcc" "skinCluster2.ifcl[11]";
connectAttr "ring3.obcc" "skinCluster2.ifcl[12]";
connectAttr "pinky0.obcc" "skinCluster2.ifcl[13]";
connectAttr "pinky1.obcc" "skinCluster2.ifcl[14]";
connectAttr "pinky2.obcc" "skinCluster2.ifcl[15]";
connectAttr "pinky3.obcc" "skinCluster2.ifcl[16]";
connectAttr "index0.msg" "skinCluster2.ptt";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "techHandShape.iog.og[5]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "groupParts16.og" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "root.msg" "bindPose1.m[0]";
connectAttr "index0.msg" "bindPose1.m[1]";
connectAttr "index1.msg" "bindPose1.m[2]";
connectAttr "index2.msg" "bindPose1.m[3]";
connectAttr "middle0.msg" "bindPose1.m[5]";
connectAttr "middle1.msg" "bindPose1.m[6]";
connectAttr "middle2.msg" "bindPose1.m[7]";
connectAttr "middle3.msg" "bindPose1.m[8]";
connectAttr "ring0.msg" "bindPose1.m[9]";
connectAttr "ring1.msg" "bindPose1.m[10]";
connectAttr "ring2.msg" "bindPose1.m[11]";
connectAttr "pinky0.msg" "bindPose1.m[13]";
connectAttr "pinky1.msg" "bindPose1.m[14]";
connectAttr "pinky2.msg" "bindPose1.m[15]";
connectAttr "pinky3.msg" "bindPose1.m[16]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[0]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[0]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[0]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "root.bps" "bindPose1.wm[0]";
connectAttr "index0.bps" "bindPose1.wm[1]";
connectAttr "index1.bps" "bindPose1.wm[2]";
connectAttr "index2.bps" "bindPose1.wm[3]";
connectAttr "middle0.bps" "bindPose1.wm[5]";
connectAttr "middle1.bps" "bindPose1.wm[6]";
connectAttr "middle2.bps" "bindPose1.wm[7]";
connectAttr "middle3.bps" "bindPose1.wm[8]";
connectAttr "ring0.bps" "bindPose1.wm[9]";
connectAttr "ring1.bps" "bindPose1.wm[10]";
connectAttr "ring2.bps" "bindPose1.wm[11]";
connectAttr "pinky0.bps" "bindPose1.wm[13]";
connectAttr "pinky1.bps" "bindPose1.wm[14]";
connectAttr "pinky2.bps" "bindPose1.wm[15]";
connectAttr "pinky3.bps" "bindPose1.wm[16]";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "icosahedron:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "icosahedron:lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "Hand_MDLSG.pa" ":renderPartition.st" -na;
connectAttr "Hand_MDLSG1.pa" ":renderPartition.st" -na;
connectAttr "Hand_MDLSG2.pa" ":renderPartition.st" -na;
connectAttr "Hand_MDLSG3.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader1SG.pa" ":renderPartition.st" -na;
connectAttr "techHandShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "icosahedron:ico_edges.msg" ":defaultShaderList1.s" -na;
connectAttr "icosahedron:ico_faces.msg" ":defaultShaderList1.s" -na;
connectAttr "Hand_SHD.msg" ":defaultShaderList1.s" -na;
connectAttr "Hand_SHD1.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "psdFileTex12456.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "psdFileTex12457.msg" ":defaultTextureList1.tx" -na;
connectAttr "ramp1.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendColors1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of techGloves.ma
