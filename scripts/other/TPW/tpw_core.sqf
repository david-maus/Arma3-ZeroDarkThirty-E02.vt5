/* 
CORE FUNCTIONS FOR TPW MODS
Author: tpw 
Date: 20170619
Version: 1.39
Requires: CBA A3
Compatibility: N/A

Disclaimer: Feel free to use and modify this code, on the proviso that you post back changes and improvements so that everyone can benefit from them, and acknowledge the original author (tpw) in any derivative works.     

To use: 
1 - Save this script into your mission directory as eg tpw_core.sqf
2 - Call it with 0 = [["str1","str2",etc]] execvm "tpw_core.sqf"; // where str1 = civs containing this string in their classname will be excluded, str2 etc

TPW MODS WILL NOT FUNCTION WITHOUT THIS SCRIPT RUNNING
*/

tpw_mods_version = "20170619"; // will appear on start hint

tpw_core_active = true;

tpw_core_blacklist = _this select 0;

// MAP SPECIFIC MOD DISABLING

//Maps without roads - no cars
if (worldname in  ["pja307"]) then
	{
	tpw_car_active = false;
	tpw_park_active = false;
	};

// No aircraft
if (worldname in ["mak_Jungle","isladuala"]) then
	{
	tpw_air_active = false;
	};

// CLOTHES
private ["_pants", "_tanoa_pants", "_shorts", "_tanoa_shorts", "_clothes"];
tpw_core_pants = [
"U_Competitor",
"U_C_HunterBody_grn",
"U_C_Poor_1",
"U_C_Poor_2",
"U_IG_Guerilla2_2",
"U_IG_Guerilla2_3",
"U_IG_Guerilla3_1",
"U_IG_Guerilla3_2",
"U_NikosBody",
"U_Marshal",
"U_C_Journalist",
"U_Rangemaster"
];

tpw_core_tanoa_pants = [
"u_c_man_casual_1_f",
"u_c_man_casual_2_f",
"u_c_man_casual_3_f",
"u_c_man_casual_4_f",
"u_i_c_soldier_bandit_2_f",
"u_i_c_soldier_bandit_3_f"
];

tpw_core_shorts = [
"U_C_Poloshirt_blue",
"U_C_Poloshirt_burgundy",
"U_C_Poloshirt_redwhite",
"U_C_Poloshirt_salmon",
"U_C_Poloshirt_stripped",
"U_C_Poloshirt_tricolour"
];

tpw_core_tanoa_shorts = [
"u_c_man_casual_5_f",
"u_c_man_casual_6_f",
"u_c_man_sport_1_f",
"u_c_man_sport_2_f",
"u_c_man_sport_3_f",
"u_i_c_soldier_bandit_1_f",
"u_i_c_soldier_bandit_4_f",
"u_i_c_soldier_bandit_5_f"
];

// ADD TANOAN CLOTHING IF AVAILABLE
if (isclass (configfile/"CfgWeapons"/"u_c_man_casual_1_f")) then 
	{
	tpw_core_pants = tpw_core_pants + tpw_core_tanoa_pants;
	tpw_core_shorts = tpw_core_shorts + tpw_core_tanoa_shorts;
	};

tpw_core_fnc_clothes =
	{
	private ["_clothes"];
	
	// Appropriate clothing for climate
	if (!isnil "tpw_fog_temp" &&  {tpw_fog_temp > 20 }) then
		{
		_clothes = tpw_core_pants + tpw_core_shorts + tpw_core_shorts + tpw_core_shorts;
		} else
		{
		_clothes = tpw_core_pants;
		};
	_clothes
	};


// GRAB CIVS FROM CONFIG
tpw_core_fnc_grabciv =
	{
	private ["_cfg","_str"];
	tpw_core_civs = [];
	_cfg = (configFile >> "CfgVehicles");
	_str = _this select 0;
	for "_i" from 0 to ((count _cfg) -1) do 
		{
		if (isClass ((_cfg select _i) ) ) then 
			{
			_cfgName = configName (_cfg select _i);
			if ( (_cfgName isKindOf "camanbase") && {getNumber ((_cfg select _i) >> "scope") == 2} && {[_str,str _cfgname] call BIS_fnc_inString}) then 
				{
				tpw_core_civs set [count tpw_core_civs,_cfgname];
				};
			};
		};

		// No pilot, diver, VR civs	
		for "_i" from 0 to (count tpw_core_civs - 1) do	
			{	
			_unit = tpw_core_civs select _i;
			if ((["pilot",str _unit] call BIS_fnc_inString)||(["diver",str _unit] call BIS_fnc_inString)||(["vr",str _unit] call BIS_fnc_inString)) then
				{
				tpw_core_civs set [_i, -1];
				};
			};
			
		// User blacklist
		for "_i" from 0 to (count tpw_core_civs - 1) do	
			{	
			_unit = tpw_core_civs select _i;
				{
				if ([_x,str _unit] call BIS_fnc_inString) then
					{
					tpw_core_civs set [_i, -1];
					};
				} count tpw_core_blacklist;
			};
			
		tpw_core_civs = tpw_core_civs - [-1];			
	};
	
// GRAB FEMALE CIVS FROM CONFIG
tpw_core_fnc_grabfemciv =
	{
	private ["_cfg","_str"];
	_cfg = (configFile >> "CfgVehicles");
	_str = "Max_woman";
	for "_i" from 0 to ((count _cfg) -1) do 
		{
		if (isClass ((_cfg select _i) ) ) then 
			{
			_cfgName = configName (_cfg select _i);
			if ( (_cfgName isKindOf "camanbase") && {getNumber ((_cfg select _i) >> "scope") == 2} && {[_str,str _cfgname] call BIS_fnc_inString} && {!(["soldier",str _cfgname] call BIS_fnc_inString)}) then 
				{
				tpw_core_civs set [count tpw_core_civs,_cfgname];
				tpw_core_civs set [count tpw_core_civs,_cfgname];
				};
			};
		};
	};		

// REGION SPECIFIC CIVILIANS
tpw_core_fnc_civs =
	{
	private ["_civstring","_mideast","_african","_asian","_ethnicity","_ext"];
	
	_european = [	
		"bush_island_51",
		"carraigdubh",
		"chernarus",
		"chernarus_summer",
		"fdf_isle1_a",
		"mbg_celle2",
		"woodland_acr",
		"bootcamp_acr",
		"thirsk",
		"thirskw",
		"utes",
		"gsep_mosch",
		"gsep_zernovo",
		"bornholm",
		"anim_helvantis_v2",
		"wgl_palms",
		"colleville",
		"staszow",
		"baranow",
		"panovo",
		"ivachev",
		"xcam_taunus",
		"abramia",
		"malden"
		];

	_greek = [
		"stratis",
		"altis",
		"imrali",
		"pja314"
		];
	
	_mideast = [
		"mcn_aliabad",
		"mcn_hazarkot",
		"bmfayshkhabur",
		"clafghan",
		"fallujah",
		"fata",
		"hellskitchen",
		"hellskitchens",
		"mcn_hazarkot",
		"praa_av",
		"reshmaan",
		"shapur_baf",
		"takistan",
		"torabora",
		"tup_qom",
		"zargabad",
		"pja307",
		"pja306",
		"pja308",
		"pja310",
		"mountains_acr",
		"tunba",
		"kunduz",
		"mog",
		"waziristan",
		"dya"
		];
	
	_african = [
		"mak_jungle",
		"pja305",
		"tropica",
		"tigeria",
		"tigeria_se",
		"sara",
		"saralite",
		"sara_dbe1",
		"porto",
		"intro",
		"kidal",
		"isladuala3",
		"bsoc_brasil",
		"lingor3",
		"dingor"
		];
		
	_asian = [
		"pja312"
		];
		
	_oceania = [
		"tanoa"
	];	
	
	// External civ addons?
	_ext = 0;
	if (isclass (configfile/"CfgWeapons"/"H_caf_ag_turban")) then {_ext = 1}; // CAF Agressors civs
	if (isclass (configfile >> "CfgVehicles" >> "LOP_AFR_Civ_Man_01")) then {_ext = 2}; // Leights OPFOR civs
	if (isclass (configfile/"CfgVehicles"/"RDS_Assistant")) then {_ext = 3}; // RDS civs
	if (isclass (configfile/"CfgVehicles"/"CUP_C_C_Citizen_01")) then {_ext = 4}; // CUP civs
	
	// Ethnicity based on worldname
	_ethnicity = "default"; // Default
	if (tolower worldname in _european) then {_ethnicity = "european"};
	if (tolower worldname in _greek) then {_ethnicity = "greek"};
	if (tolower worldname in _mideast) then {_ethnicity = "mideast"};
	if (tolower worldname in _african) then {_ethnicity = "african"};
	if (tolower worldname in _asian) then {_ethnicity = "asian"};
	if (tolower worldname in _oceania) then {_ethnicity = "oceania"};
	
	// Europeans
	if (_ethnicity == "european") then 
		{
		_civstring = ["c_man","c_man","c_man","RDS","CUP_C"] select _ext;
		[_civstring] call tpw_core_fnc_grabciv;
	
		// Screen out non-Europeans from BIS civs
		if (_civstring == "c_man") then
			{
			for "_i" from 0 to (count tpw_core_civs - 1) do	
				{	
				_civ = tpw_core_civs select _i;
				if !(["euro",str _civ] call BIS_fnc_inString) then
					{
					tpw_core_civs set [_i, -1];
					};
				};
			tpw_core_civs = tpw_core_civs - [-1];		
			
			// Females
			[] call tpw_core_fnc_grabfemciv;	
			};
		};
		
	// Greeks
	if (_ethnicity == "greek") then 
		{
		_civstring = ["c_man","c_man","c_man","RDS","CUP_C"] select _ext;
		[_civstring] call tpw_core_fnc_grabciv;
	
		// Screen out non-Greeks from BIS civs
		if (_civstring == "c_man") then
			{
			for "_i" from 0 to (count tpw_core_civs - 1) do	
				{	
				_civ = tpw_core_civs select _i;
				if ((["unarmed",str _civ] call BIS_fnc_inString)  || (["euro",str _civ] call BIS_fnc_inString) || (["asia",str _civ] call BIS_fnc_inString)||(["afro",str _civ] call BIS_fnc_inString)||(["tanoa",str _civ] call BIS_fnc_inString)) then
					{
					tpw_core_civs set [_i, -1];
					};
				};
			tpw_core_civs = tpw_core_civs - [-1];
			
			// Females
			[] call tpw_core_fnc_grabfemciv;
			};
		};	

	// Africans
	if (_ethnicity == "african") then 
		{
		_civstring = ["c_man","caf_ag_afr_civ","lop_afr_civ_man","c_man","c_man"] select _ext;
		if ((_ext == 4) && (isclass (configfile/"CfgVehicles"/"C_CUPAFRCIV_Civ_1_01"))) then
			{
			_civstring = "CUPAFRCIV";
			};
		[_civstring] call tpw_core_fnc_grabciv;
	
		// Screen out non-Africans from BIS civs
		if (_civstring == "c_man") then
			{
			for "_i" from 0 to (count tpw_core_civs - 1) do	
				{	
				_civ = tpw_core_civs select _i;
				if !(["afro",str _civ] call BIS_fnc_inString) then
					{
					tpw_core_civs set [_i, -1];
					};
				};
			tpw_core_civs = tpw_core_civs - [-1];	
			};
		};
		
	// Asians
	if (_ethnicity == "asian") then 
		{
		_civstring = "c_man";
		[_civstring] call tpw_core_fnc_grabciv;
	
		// Screen out non-Asians from BIS civs
		if (_civstring == "c_man") then
			{
			for "_i" from 0 to (count tpw_core_civs - 1) do	
				{	
				_civ = tpw_core_civs select _i;
				if !(["asia",str _civ] call BIS_fnc_inString) then
					{
					tpw_core_civs set [_i, -1];
					};
				};
			tpw_core_civs = tpw_core_civs - [-1];	
			};
		};	
		
	// Oceania (Fijian)
	if (_ethnicity == "oceania") then 
		{
		_civstring = "c_man";
		[_civstring] call tpw_core_fnc_grabciv;
	
		// Screen out non-Africans from BIS civs
		if (_civstring == "c_man") then
			{
			for "_i" from 0 to (count tpw_core_civs - 1) do	
				{	
				_civ = tpw_core_civs select _i;
				if !(["tanoa",str _civ] call BIS_fnc_inString) then
					{
					tpw_core_civs set [_i, -1];
					};
				};
			tpw_core_civs = tpw_core_civs - [-1];	
			};
		};	
		
	// Mid East
	if (_ethnicity == "mideast") then 
		{
		_civstring = ["c_man","caf_ag_me_civ","lop_tak_civ_man","c_man","c_man"] select _ext;
		
		if ((_ext == 4) && (isclass (configfile/"CfgVehicles"/"C_CUPTAKCIVS_Civ_1_01"))) then
			{
			_civstring = "CUPTAKCIVS";
			};
		
		[_civstring] call tpw_core_fnc_grabciv;
	
		// Screen out non-Greeks (Greeks will stand in for MidEastern if no external Civ packs)
		if (_civstring == "c_man") then
			{
			for "_i" from 0 to (count tpw_core_civs - 1) do	
				{	
				_civ = tpw_core_civs select _i;
				if ((["unarmed",str _civ] call BIS_fnc_inString)|| (["euro",str _civ] call BIS_fnc_inString) || (["asia",str _civ] call BIS_fnc_inString)||(["afro",str _civ] call BIS_fnc_inString)) then
					{
					tpw_core_civs set [_i, -1];
					};
				};
			tpw_core_civs = tpw_core_civs - [-1];	
			};
		};

	// Default - ethnic mix
	if (_ethnicity == "default") then 
		{
		_civstring = "c_man";
		[_civstring] call tpw_core_fnc_grabciv;
	
		// Screen out unarmed combatants only
		if (_civstring == "c_man") then
			{
			for "_i" from 0 to (count tpw_core_civs - 1) do	
				{	
				_civ = tpw_core_civs select _i;
				if (["unarmed",str _civ] call BIS_fnc_inString) then
					{
					tpw_core_civs set [_i, -1];
					};
				};
			tpw_core_civs = tpw_core_civs - [-1];	
			};
		};		
	
	// Prespawn to reduce stuttering later
		{
		_temp = _x createvehicle [0,0,1000]; 
		sleep 0.1;
		deletevehicle _temp;
		} count tpw_core_civs;
	};	

// HABITABLE HOUSES
tpw_core_habitable = [ 
// Habitable Greek houses and shops with white walls, red roofs, intact doors and windows
"Land_i_House_Small_01_V1_F",
"Land_i_House_Small_01_V2_F",
"Land_i_House_Small_01_V3_F",
"Land_i_House_Small_02_V1_F",
"Land_i_House_Small_02_V2_F",
"Land_i_House_Small_02_V3_F",
"Land_i_House_Small_03_V1_F",
"Land_i_House_Big_01_V1_F",
"Land_i_House_Big_01_V2_F",
"Land_i_House_Big_01_V3_F",
"Land_i_House_Big_02_V1_F",
"Land_i_House_Big_02_V2_F",
"Land_i_House_Big_02_V3_F",
"Land_i_Shop_01_V1_F",
"Land_i_Shop_01_V2_F",
"Land_i_Shop_01_V3_F",
"Land_i_Shop_02_V1_F",
"Land_i_Shop_02_V2_F",
"Land_i_Shop_02_V3_F",
"Land_i_Addon_01_V1_F",
"Land_i_Addon_01_V2_F",
"Land_i_Addon_01_V3_F",
"Land_i_Addon_02_V1_F",
"Land_i_Addon_02_V2_F",
"Land_i_Addon_02_V3_F",
"Land_i_Addon_03_V1_F",
"Land_i_Addon_03_V2_F",
"Land_i_Addon_03_V3_F",

// OA classes - thanks Spliffz
"Land_House_L_1_EP1", 
"Land_House_L_3_EP1",
"Land_House_L_4_EP1",
"Land_House_L_6_EP1",
"Land_House_L_7_EP1",
"Land_House_L_8_EP1",
"Land_House_L_9_EP1",
"Land_House_K_1_EP1",
"Land_House_K_3_EP1", 
"Land_House_K_5_EP1", 
"Land_House_K_6_EP1", 
"Land_House_K_7_EP1", 
"Land_House_K_8_EP1", 
"Land_Terrace_K_1_EP1",
"Land_House_C_1_EP1",
"Land_House_C_1_v2_EP1", 
"Land_House_C_2_EP1", 
"Land_House_C_3_EP1",
"Land_House_C_4_EP1", 
"Land_House_C_5_EP1", 
"Land_House_C_5_V1_EP1", 
"Land_House_C_5_V2_EP1", 
"Land_House_C_5_V3_EP1", 
"Land_House_C_9_EP1", 
"Land_House_C_10_EP1", 
"Land_House_C_11_EP1", 
"Land_House_C_12_EP1", 
"Land_A_Villa_EP1",
"Land_A_Mosque_small_1_EP1",
"Land_A_Mosque_small_2_EP1",

//"Land_Ind_FuelStation_Feed_EP1",
"Land_Ind_FuelStation_Build_EP1",
"Land_Ind_FuelStation_Shed_EP1",
"Land_Ind_Garage01_EP1",
"Land_A_Mosque_big_minaret_1_EP1",
"Land_A_Mosque_big_hq_EP1",

// A2 classes - thanks Reserve
"Land_HouseV_1I1",  
"Land_HouseV_1I2",
"Land_HouseV_1I3",
"Land_HouseV_1I4",
"Land_HouseV_1L1",
"Land_HouseV_1L2",
"Land_HouseV_1T",
"Land_HouseV_2I",
"Land_HouseV_2L",
"Land_HouseV_2T1",
"Land_HouseV_2T2",
"Land_HouseV_3I1",
"Land_HouseV_3I2",
"Land_HouseV_3I3",
"Land_HouseV_3I4",
"Land_HouseV2_01A",
"Land_HouseV2_01B",
"Land_HouseV2_02",
"Land_HouseV2_03",
"Land_HouseV2_03B",
"Land_HouseV2_04",
"Land_HouseV2_05",
"Land_HouseBlock_A1",
"Land_HouseBlock_A2",
"Land_HouseBlock_A3",
"Land_HouseBlock_B1",
"Land_HouseBlock_B2",
"Land_HouseBlock_B3",
"Land_HouseBlock_C2",
"Land_HouseBlock_C3",
"Land_HouseBlock_C4",
"Land_HouseBlock_C5",
"Land_Church_02",
"Land_Church_02A",
"Land_Church_03",
//"Land_A_FuelStation_Feed",
"Land_A_FuelStation_Build",
"Land_A_FuelStation_Shed",

// Fallujah
"Land_dum_istan2",
"Land_dum_istan2b",
"Land_dum_istan2_01",
"Land_dum_istan2_02",
"Land_dum_istan2_03",
"Land_dum_istan2_03a",
"Land_dum_istan2_04a",
"Land_dum_istan3",
"Land_dum_istan3_hromada",
"Land_dum_istan4",
"Land_dum_istan4_big",
"Land_dum_istan4_big_inverse",
"Land_dum_istan4_detaily1",
"Land_dum_istan4_inverse",
"Land_dum_mesto3_istan",
"Land_hotel",
"Land_stanek_1",
"Land_stanek_1b",
"Land_stanek_1c",
"Land_stanek_2",
"Land_stanek_2b",
"Land_stanek_2c",
"Land_stanek_3",
"Land_stanek_3b",
"Land_stanek_3c",

// JBAD buildings
"Land_jbad_house1", 
"Land_jbad_house3",
"Land_jbad_house5",
"Land_jbad_house6",
"Land_jbad_house7",
"Land_jbad_house8",
"Land_jbad_house1",
"Land_jbad_House_c_1_v2",
"Land_jbad_House_c_2",
"Land_jbad_House_c_3",
"Land_jbad_House_c_4",
"Land_jbad_House_c_5",
"Land_jbad_House_c_9",
"Land_jbad_House_c_10",
"Land_jbad_House_c_11",
"Land_jbad_House_c_12",
"Land_Jbad_Ind_FuelStation_Build",
"Land_jbad_A_GeneralStore_01",
"Land_jbad_A_GeneralStore_01a",
"Land_Jbad_A_Mosque_small_1",
"Land_Jbad_A_Mosque_small_2",
"Land_Jbad_A_Stationhouse",
"Land_Jbad_A_Villa",
"Land_Jbad_Ind_Garage01",
"Land_jbad_House_1_old",
"Land_jbad_House_3_old",
"Land_jbad_House_4_old",
"Land_jbad_House_6_old",
"Land_jbad_House_7_old",
"Land_jbad_House_8_old",
"Land_jbad_House_9_old",

// TANOA
"Land_house_small_01_F", 
"Land_house_small_02_F",
"Land_house_small_03_F",
"Land_house_small_04_F",
"Land_house_small_05_F",
"Land_house_small_06_F",
"Land_house_big_01_F",
"Land_house_big_02_F",
"Land_house_big_03_F",
"Land_house_big_04_F",
"Land_house_big_05_F",
/*
"Land_shed_01_F",
"Land_shed_02_F",
"Land_shed_03_F",
"Land_shed_04_F",
"Land_shed_05_F",
"Land_shed_06_F",
"Land_shed_07_F",
*/
"Land_slum_01_F",
"Land_slum_02_F",
"Land_slum_03_F",
"Land_slum_04_F",
"Land_slum_05_F",
"Land_slum_house_01_F",
"Land_slum_house_02_F",
"Land_slum_house_03_F",
"Land_slum_house_04_F",
"Land_slum_house_05_F",
"Land_house_native_01_F",
"Land_house_native_02_F",
"Land_hotel_01_F",
"Land_hotel_02_F",
"Land_shop_city_01_F",
"Land_shop_city_02_F",
"Land_shop_city_03_F",
"Land_shop_city_04_F",
"Land_shop_city_05_F",
"Land_shop_city_06_F",
"Land_shop_city_07_F",
"Land_shop_town_01_F",
"Land_shop_town_02_F",
"Land_shop_town_03_F",
"Land_shop_town_04_F",
"Land_shop_town_05_F",
"Land_Warehouse_01_F",
"Land_Warehouse_02_F",
"Land_Warehouse_03_F",
"Land_Temple_Native_01_F",
"Land_Temple_Native_02_F",
"Land_GarageShelter_01_F",
"Land_School_01_F",
"Land_FuelStation_02_workshop_F",
"Land_FuelStation_01_shop_F",
"Land_Multistoreybuilding_01_F",
"Land_Multistoreybuilding_03_F",
"Land_Multistoreybuilding_04_F",

// Malden
"Land_i_House_Small_01_b_blue_F",
"Land_i_House_Small_01_b_pink_F",
"Land_i_House_Small_01_b_yellow_F",
"Land_i_House_Small_01_b_brown_F",
"Land_i_House_Small_01_b_white_F",
"Land_i_House_Small_01_b_whiteblue_F",

"Land_i_House_Small_02_b_blue_F",
"Land_i_House_Small_02_b_pink_F",
"Land_i_House_Small_02_b_yellow_F",
"Land_i_House_Small_02_b_brown_F",
"Land_i_House_Small_02_b_white_F",
"Land_i_House_Small_02_b_whiteblue_F",

"Land_i_House_Small_02_c_blue_F",
"Land_i_House_Small_02_c_pink_F",
"Land_i_House_Small_02_c_yellow_F",
"Land_i_House_Small_02_c_brown_F",
"Land_i_House_Small_02_c_white_F",
"Land_i_House_Small_02_c_whiteblue_F",

"Land_i_House_Big_01_b_blue_F",
"Land_i_House_Big_01_b_pink_F",
"Land_i_House_Big_01_b_yellow_F",
"Land_i_House_Big_01_b_brown_F",
"Land_i_House_Big_01_b_white_F",
"Land_i_House_Big_01_b_whiteblue_F",

"Land_i_House_Big_02_b_blue_F",
"Land_i_House_Big_02_b_pink_F",
"Land_i_House_Big_02_b_yellow_F",
"Land_i_House_Big_02_b_brown_F",
"Land_i_House_Big_02_b_white_F",
"Land_i_House_Big_02_b_whiteblue_F",

"Land_i_Shop_01_b_blue_F",
"Land_i_Shop_01_b_pink_F",
"Land_i_Shop_01_b_yellow_F",
"Land_i_Shop_01_b_brown_F",
"Land_i_Shop_01_b_white_F",
"Land_i_Shop_01_b_whiteblue_F",

"Land_i_Shop_02_b_blue_F",
"Land_i_Shop_02_b_pink_F",
"Land_i_Shop_02_b_yellow_F",
"Land_i_Shop_02_b_brown_F",
"Land_i_Shop_02_b_white_F",
"Land_i_Shop_02_b_whiteblue_F"
];

tpw_core_fnc_houses =
	{
	private ["_radius","_housearray","_return","_housestring","_uninhab"];
	_housearray = [];
	if (tpw_core_housescanflag == 0) then
		{
		tpw_core_housescanflag = 1;
		_radius = _this select 0;
		_housearray = nearestObjects [position vehicle player,tpw_core_habitable,_radius]; 
		for "_i" from 0 to (count _housearray - 1) do
			{
			_house = _housearray select _i;
			_housestring = str (typeof _house);
			_uninhab = ["_u_", _housestring] call BIS_fnc_inString; // uninhabited houses
			if (_uninhab) then 
				{
				_housearray set [_i, -1];
				};
			};
		_housearray = _housearray - [-1];
		tpw_core_housescanflag = 0;
		};
	_return =  [_housearray,[],{player distance _x},"ASCEND"] call BIS_fnc_sortBy;	// sort by distance from player, select 0 is closest
	_return
	};
	
// SUN ANGLE - ORIGINAL CODE BY CARLGUSTAFFA
tpw_core_fnc_sunangle =
	{
	private ["_lat","_day","_hour"];
	while {true} do 
		{
		_lat = -1 * getNumber(configFile >> "CfgWorlds" >> worldName >> "latitude");
		_day = 360 * (dateToNumber date);
		_hour = (daytime / 24) * 360;
		tpw_core_sunangle = ((12 * cos(_day) - 78) * cos(_lat) * cos(_hour)) - (24 * sin(_lat) * cos(_day));  
		sleep 33.33; 
		};
	};	
	
// DETERMINE UNIT'S WEAPON TYPE 
tpw_core_fnc_weptype =
	{
	private["_unit","_weptype","_cw","_hw","_pw","_sw"];
	_unit = _this select 0;	
	
	// Weapon type
	_cw = currentweapon _unit;
	_hw = handgunweapon _unit;
	_pw = primaryweapon _unit;
	_sw = secondaryweapon _unit;
	 switch _cw do
		{
		case "": 
			{
			_weptype = 0;
			};
		case _hw: 
			{
			_weptype = 1;
			};
		case _pw: 
			{
			_weptype = 2;
			};
		case _sw: 
			{
			_weptype = 3;
			};
		default
			{
			_weptype = 0;
			};	
		};
	_unit setvariable ["tpw_core_weptype",_weptype];
	};
	
// DISABLE UNIT ON GROUND
tpw_core_fnc_disable = 
	{
	private ["_unit"];
	_unit = _this select 0;
	_unit setunitpos "DOWN";
	_unit switchmove "acts_InjuredLyingRifle02_180";
	{_unit disableai _x} count ["anim","move","fsm","target","autotarget"];
	_unit setvariable ["tpw_core_disabled",1];
	};

// RE-ENABLE UNIT
tpw_core_fnc_enable = 
	{
	private ["_unit"];
	_unit = _this select 0;
	sleep random 5;
	{_unit enableai _x} count ["anim","move","fsm","target","autotarget"];
	if (asltoagl (eyepos _unit) select 2 < 0.5) then
		{
		_unit setunitpos "UP";
		[_unit] call tpw_core_fnc_weptype;
		_unit switchmove "AinjPpneMstpSnonWnonDnon_rolltofront";
		_unit playmove (["AmovPercMstpSrasWnonDnon","AmovPercMstpSrasWpstDnon","AmovPercMstpSrasWrflDnon","AmovPercMstpSrasWlnrDnon"] select (_unit getvariable "tpw_core_weptype"));
		};
	_unit setvariable ["tpw_core_disabled",0];
	_unit setcaptive false;
	};		
		
// CALL OR SPAWN APPROPRIATE FUNCTIONS
tpw_core_housescanflag = 0;
[] call tpw_core_fnc_civs;	
0 = [] spawn tpw_core_fnc_sunangle;	

// DUMMY LOOP SO SCRIPT DOESN'T TERMINATE
while {true} do
	{
	sleep 10;
	};	