call compile preprocessFileLineNumbers ("scripts\other\GFPPE\GFPPE_fncs.sqf");
openPP = 1;
GFPPE_debug1 = 0;
PP_ON = true;

PP_radialP = [0.05,0.05,0.3,0.3];
PP_radialPD = +PP_radialP;
PP_chromP = [0.05,0.05,true];
PP_chromPD = +PP_chromP;
PP_wetDP = [1, 0.2, 0.2, 1, 1, 1, 1, 0.05, 0.01, 0.05, 0.01, 0.1, 0.1, 0.2, 0.2];
PP_wetDPD = +PP_wetDP;
PP_colorCP = [1, 1, 0,[ 0, 0, 0, 0],[ 1, 1, 1, 1],[ 0.33, 0.33, 0.33, 0],[0,0,0,0,0,0,4]];
PP_colorCPD = +PP_colorCP;
PP_dynamicP =  [1];
PP_dynamicPD = +PP_dynamicP;
PP_filmP = [0.2,1,1,0.5,0.5,true];
PP_filmPD = +PP_filmP;
PP_colorIP = [1,1,1];
PP_colorIPD = +PP_colorIP;
PP_lightsP = [1,1,1,1];

PP_committime = 0;
PP_committing = false;
PP_updating = false;

PP_1Enabled = false;
PP_2Enabled = false;
PP_3Enabled = false;
PP_4Enabled = false;
PP_5Enabled = false;
PP_6Enabled = false;
PP_7Enabled = false;
PP_8Enabled = false;

PP_1Prior = 100;
PP_2Prior = 200;
PP_3Prior = 300;
PP_4Prior = 1500;
PP_5Prior = 500;
PP_6Prior = 2000;
PP_7Prior = 2500;
PP_8Prior = 3000;

GFPPE_date = date;
GFPPE_fog = fogParams;

player addaction ["<t color='#ff0000' size='1.3'>Postprocess editor</t>",{null = [_this] execvm "scripts\other\GFPPE\GFPPE.sqf"},[],100];
player addaction ["Open Virtual Arsenal", { ["Open",true] call BIS_fnc_arsenal;},[],99]; 
player addAction ["Splendid camera","0 = [46] spawn BIS_fnc_camera;",[],97];

if (GFPPE_debug1 == 1) then {
	null = [] spawn {
		while {true} do {
			hintsilent format ["radial %1\nchrom %2\nwet %3\ncc %4\ndyn %5\nfilm %6\nci %7\nlight %8\ndebug %9\n%10", str PP_RadialP,str PP_chromP, str PP_wetDP, str PP_colorCP, str PP_dynamicP, str PP_filmP,str PP_colorIP, "test", str GFPPE_debug1,str PP_5Enabled];
			sleep 0.5;
		};
	};
};

PP_radial = ppEffectCreate ["radialBlur",PP_1Prior];
PP_radial ppEffectEnable false;
PP_chrom = ppEffectCreate ["ChromAberration",PP_2Prior];
PP_chrom ppEffectEnable false;
PP_wetD = ppEffectCreate ["WetDistortion",PP_3Prior];
PP_wetD ppEffectEnable false;
PP_colorC = ppEffectCreate ["ColorCorrections",PP_4Prior];
PP_colorC ppEffectEnable false;
PP_dynamic = ppEffectCreate ["DynamicBlur",PP_5Prior];
PP_dynamic ppEffectEnable false;
PP_film = ppEffectCreate ["FilmGrain",PP_6Prior];
PP_film ppEffectEnable false;
PP_colorI = ppEffectCreate ["ColorInversion",PP_7Prior];
PP_colorI ppEffectEnable false;

null = [_this] execvm "scripts\other\GFPPE\GFPPE_commit.sqf"