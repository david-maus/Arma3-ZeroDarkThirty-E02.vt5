call compile preprocessFileLineNumbers "scripts\other\SFS\SFS_inlineFncs.sqf";
// All Headgear to use as Gasmask
INS_jumpMaskH = [
                "H_CrewHelmetHeli_B",
                "H_CrewHelmetHeli_O",
                "H_CrewHelmetHeli_I",
                "H_PilotHelmetFighter_B",
                "H_PilotHelmetFighter_O",
                "H_PilotHelmetFighter_I"
                ];


Choke_Sounds = [
    "A3\Sounds_f\characters\human-sfx\Person0\P0_choke_02.wss",
    "A3\Sounds_f\characters\human-sfx\Person0\P0_choke_03.wss",
    "A3\Sounds_f\characters\human-sfx\Person0\P0_choke_04.wss",
    "A3\Sounds_f\characters\human-sfx\Person1\P1_choke_04.wss",
    "A3\Sounds_f\characters\human-sfx\Person2\P2_choke_04.wss",
    "A3\Sounds_f\characters\human-sfx\Person2\P2_choke_05.wss",
    "A3\Sounds_f\characters\human-sfx\Person3\P3_choke_02.wss",
    "A3\Sounds_f\characters\human-sfx\P06\Soundbreathinjured_Max_2.wss",
    "A3\Sounds_f\characters\human-sfx\P05\Soundbreathinjured_Max_5.wss"
];

Breath_Sounds = [
    "A3\sounds_f\characters\human-sfx\other\diver-breath-2.wss"
];




_haloStartName = _this select 0;
_haloStartHeight = _this select 1;
_haloTarget = _this select 2;
_haloWaitTime = _this select 3;

"HaloFlare_1" setMarkerAlpha 0;
"HaloFlare_2" setMarkerAlpha 0;
"HaloFlare_3" setMarkerAlpha 0;
"HaloFlare_4" setMarkerAlpha 0;

PlayerReady = false;
haloCargoOpen = false;
publicVariable "PlayerReady";
publicVariable "haloCargoOpen";
// Server //
if (isServer) then
{

    {
        private "_a";
      _a = toArray _x;


          if (toString _a find _haloStartName >= 0 ) then {

             _x setMarkerAlpha 0;

             haloStartPos = [getMarkerPos _x select 0, getMarkerPos _x select 1, _haloStartHeight];
             haloStartDir = markerDir _x;
             publicVariable "haloStartDir";

      };
      if (toString _a find _haloTarget >= 0 ) then {

         _x setMarkerAlpha 0;



         haloTarget = [getMarkerPos _x select 0, getMarkerPos _x select 1, getMarkerPos _x select 2];
         haloFlare_1 = [(getMarkerPos _x select 0) + 6, (getMarkerPos _x select 1) + 6, getMarkerPos _x select 2];
         haloFlare_2 = [(getMarkerPos _x select 0) + 6, (getMarkerPos _x select 1) - 6, getMarkerPos _x select 2];
         haloFlare_3 = [(getMarkerPos _x select 0) - 6, (getMarkerPos _x select 1) - 6, getMarkerPos _x select 2];
         haloFlare_4 = [(getMarkerPos _x select 0) - 6, (getMarkerPos _x select 1) + 6, getMarkerPos _x select 2];
         publicVariable "haloTarget";

  };
      } forEach allMapMarkers;


      allHumans = allPlayers - entities "HeadlessClient_F";

      _floorfix1 = "Box_NATO_WpsSpecial_F" createVehicle [0,0,1000]; //HotFix
      _floorfix2 = "Box_NATO_WpsSpecial_F" createVehicle [0,0,1000]; //HotFix
      clearWeaponCargoGlobal _floorfix1;
      clearWeaponCargoGlobal _floorfix2;
      clearMagazineCargoGlobal _floorfix1;
      clearMagazineCargoGlobal _floorfix2;
      clearItemCargoGlobal _floorfix1;
      clearItemCargoGlobal _floorfix2;
      _floorfix1 enableSimulation false;
      _floorfix2 enableSimulation false;



      _logicC = createCenter sideLogic;
      _logicG = createGroup _logicC;
      objHALO = _logicG createUnit ["Logic", haloStartPos, [], 0, "NONE"];
      objHALO setPos (objHALO modelToWorld [0,0,-1]);
      objHALO setVectorUp [0,0,1]; // Sign_Sphere25cm_F
      objHALO setDir haloStartDir - 180;



      haloPlane = "RHS_C130J" createVehicle [0,0,1000];
      haloPlane allowDamage false;

      haloPlane attachTo [objHALO,[0,0,0]];

      haloPlane engineOn true;
      haloPlane setDamage 0;
      haloPlane setVectorUp [0,0,1];


      jumpV = "Land_PenBlack_F" createVehicle (position player); // "Sign_Sphere25cm_F"
      jumpV attachTo [haloPlane,[0,0,0]];
      jumpV setDir -180;

      _floorfix1 attachTo [haloPlane,[ 0.68, 7.8, -4.7]];
      _floorfix2 attachTo [haloPlane,[-0.75, 7.8, -4.7]];

      _planeLightRED_R = "ACE_G_Chemlight_HiRed" createVehicle (position player);
      _planeLightRED_R attachTo [haloPlane,[-1,-2.5,1],"lankle"];
      _planeLightRED_L = "ACE_G_Chemlight_HiRed" createVehicle (position player);
      _planeLightRED_L attachTo [haloPlane,[1,-2.5,1],"lankle"];




      sleep 0.5;
      _players = playableUnits + switchableUnits;
      {
          if (_forEachIndex == 0) then {
              _x setDir haloStartDir;
              _x attachTo [haloPlane,[0, 3.8, 0]];
              detach _x;
              _x setDir haloStartDir;
          };
          if (_forEachIndex == 1) then {
              _x setDir haloStartDir;
              _x attachTo [haloPlane,[-0.8, 6, 0]];
              detach _x;
              _x setDir haloStartDir;
          };
          if (_forEachIndex == 2) then {
              _x setDir haloStartDir;
              _x attachTo [haloPlane,[0.78, 6, 0]];
              detach _x;
              _x setDir haloStartDir;
          };
          if (_forEachIndex == 3) then {
              _x setDir haloStartDir;
              _x attachTo [haloPlane,[0.78, 8, 0]];
              detach _x;
              _x setDir haloStartDir;
          };
          if (_forEachIndex == 4) then {
              _x setDir haloStartDir;
              _x attachTo [haloPlane,[-0.8, 8, 0]];
              detach _x;
              _x setDir haloStartDir;
          };
          if (_forEachIndex == 5) then {
              _x setDir haloStartDir;
              _x attachTo [haloPlane,[-0.8, 2.5, 0]];
              detach _x;
              _x setDir haloStartDir;
          };
          if (_forEachIndex == 6) then {
              _x setDir haloStartDir;
              _x attachTo [haloPlane,[0.78, 2.5, 0]];
              detach _x;
              _x setDir haloStartDir;
          };
          if (_forEachIndex == 7) then {
              _x setDir haloStartDir;
              _x attachTo [haloPlane,[0, 0.5, 0]];
              detach _x;
              _x setDir haloStartDir;
          };

      } forEach _players;

      PlayerReady = true;
      publicVariable "PlayerReady";

      [haloPlane, "radioChatterDM"] remoteExec ["say3D", 0, false];
      [_haloWaitTime, _planeLightRED_L, _planeLightRED_R] spawn {
          sleep (_this select 0);
          haloCargoOpen = true;
          publicVariable "haloCargoOpen";
          haloPlane animate ["ramp_bottom", 1];
      	  haloPlane animate ["ramp_top", 1];
          [haloPlane, "CargoDoor_Open_HALO"] remoteExec ["say3D", 0, false];
          [haloPlane, "CargoDoor_Open_Mech"] remoteExec ["say3D", 0, false];
          [haloPlane, "efx_depress"] remoteExec ["say3D", 0, false];


          sleep 1;
          deleteVehicle (_this select 1);
          deleteVehicle (_this select 2);

          _planeLightGREEN_R = "Chemlight_Green" createVehicle (position player);
          _planeLightGREEN_R attachTo [haloPlane,[-1,-2.5,1],"lankle"];
          _planeLightGREEN_L = "Chemlight_Green" createVehicle (position player);
          _planeLightGREEN_L attachTo [haloPlane,[1,-2.5,1],"lankle"];

          _planeLightGREEN_RB = "Chemlight_Green" createVehicle (position player);
          _planeLightGREEN_RB attachTo [haloPlane,[-1.7,-3.5,2],"lankle"];
          _planeLightGREEN_LB = "Chemlight_Green" createVehicle (position player);
          _planeLightGREEN_LB attachTo [haloPlane,[1.7,-3.5,2],"lankle"];

          sleep 10;
          [haloFlare_1,"aerial",120,5,"red"] execVM "scripts\other\SFS\SFS_init.sqf";

          sleep random 3;
          [haloFlare_2,"aerial",150,5,"red"] execVM "scripts\other\SFS\SFS_init.sqf";
          sleep random 3;
          [haloFlare_3,"aerial",110,5,"red"] execVM "scripts\other\SFS\SFS_init.sqf";
          sleep random 3;
          [haloFlare_4,"aerial",140,5,"red"] execVM "scripts\other\SFS\SFS_init.sqf";

          [haloTarget,"ground",0,5,"red"] execVM "scripts\other\SFS\SFS_init.sqf";
      };





};
// Client //
if (!isDedicated && hasInterface) then
{
    boc_classname = [player] call zade_boc_fnc_chestpack;
    boc_items = [player, false] call zade_boc_fnc_chestpackItems;
    player addEventHandler ["Respawn", {

        if (!(['task_landing'] call FHQ_fnc_ttIsTaskCompleted)) then {
            [player,boc_classname] call zade_boc_fnc_addChestpack;

            {
                [player,_x] call zade_boc_fnc_addItemToChestpack;
            } forEach boc_items;


        };

    }];

    // Client functions //
    [player, "forceWalk", "BackpackOnChest", false] call ace_common_fnc_statusEffect_set;
    publicVariable "PlayerReady";
    publicVariable "haloTarget";
    publicVariable "haloStartDir";
    publicVariable "haloCargoOpen";

    waitUntil {PlayerReady};
    sleep 1;
    player playActionNow "PlayerStand";
    sleep 2;
    player action ["WeaponOnBack", player];
    sleep 1;
    player setDir haloStartDir;

    waitUntil {haloCargoOpen};
    addCamShake [3, 10, 25]; 	//
    ['GREEN GREEN GREEN - JUMP!',-1,-1,5,3,0,789] spawn BIS_fnc_dynamicText;



    _jumpLightRED = "ACE_G_Chemlight_HiRed" createVehicle (position player);
    _jumpLightRED attachTo [vehicle player,[-0.05,-0.09,0.1],"lankle"];

    _iconHandler = [ "_iconHandlerID", "onEachFrame", {
        if ((headgear player in INS_jumpMaskH)) then {
            _distance = player distance haloTarget;
            _targetName = 'LZ - ALTITUDE: ' + str _distance;
            drawIcon3D ["\a3\ui_f\data\map\Markers\NATO\b_inf.paa", [1,1,1,1], haloTarget, 1, 1, 0, _targetName, 0, 0.04];
        };

    }] call BIS_fnc_addStackedEventHandler;
    //waitUntil {((velocity player select 2 < -3))};
    waitUntil {((animationState player == "HaloFreeFall_non") || (animationState player == "HaloFreeFall_F") || (animationState player == "HaloFreeFall_B"))};


    smokeCreate = true;

    [] spawn {
            while {smokeCreate} do {
                _smokeRed = "SmokeShellRed" createVehicle (position player);
                _smokeRed attachTo [vehicle player,[-0.05,-0.09,0.1],"lankle"];
                sleep 22;
            };
    };
    [player, 0.8, 0.0, 0.0, 0.4] execVM "scripts\other\createSmoke.sqf";



    player setVelocity [20 * (sin (getDir jumpV)), 20 * (cos (getDir jumpV)), 5];
    // HIT ATMO - COLD & NO AIR!!!
    addCamShake [75, 5, 5]; 	//
    playSound "grunt1";		//
    playSound "Wind_Ext_HALO"; //
    playSound "HALOExt";		//
    // addCamShake [p, d, f];	//
    33 cutText ["", "BLACK IN", 3];
    "DynamicBlur" ppEffectEnable true;
    "DynamicBlur" ppEffectAdjust [8];
    "DynamicBlur" ppEffectCommit 2;
    addCamShake [20, 40, 5];
    sleep 5;
    "DynamicBlur" ppEffectAdjust [0];
    "DynamicBlur" ppEffectCommit 10;
    sleep 5;
    "RadialBlur" ppEffectEnable true;
    "RadialBlur" ppEffectAdjust [0.1, 0.1, 0.5, 0.5];
    "RadialBlur" ppEffectCommit 10;
    sleep 5;
    "RadialBlur" ppEffectAdjust [0, 0, 0, 0];
    "RadialBlur" ppEffectCommit 30;



    player setCaptive true;


    // Helmet Fogged & Ice EFX -- Need to Fix and Upgrade
    if ((cameraView == "INTERNAL") && ((getposASL player select 2) < 10111)) then { // M not FT, 11111m=36.6K'
      3 cutRsc ["VQI_HALO_HELMET_FOGGED1_EFX", "PLAIN"];
      //addCamShake [10, 20, 12];
    };
    if ((cameraView == "INTERNAL") && ((getposASL player select 2) > 10111)) then { // 33.3K'
      3 cutRsc ["VQI_HALO_HELMET_FOGGED2_EFX", "PLAIN"];
      //addCamShake [10, 20, 12];
    };
    if ((cameraView == "INTERNAL") && ((getposASL player select 2) > 11111)) then { // 36.6K'
      4 cutRsc ["VQI_HALO_HELMET_ICE1_EFX", "PLAIN"];
      //addCamShake [10, 20, 12];
    };


    addCamShake [10, 400, 30];


    [] spawn {
        sleep 3;
        500 cutText ["", "BLACK FADED", 999];
        titleRsc ["introLogo", "PLAIN", 3];
        titleFadeOut 3;
        sleep 12;
        500 cutText ["", "BLACK IN", 8];
        sleep 2;
        titleText ["<t align='left' valign='bottom' size='1.2' font='RobotoCondensedLight'>CREATED WITH<br />GEF-GAMING.DE MISSION FRAMEWORK</t>", "PLAIN", 3, false, true];
        titleFadeOut 3;
        sleep 12;

        titleText ["<t align='right' valign='top' size='1.2' font='RobotoCondensedLight'>INTEGRATED SCRIPTS:<br />GasZone / UnlockDoors / Helmet and Mask FX AND MANY MORE...</t>", "PLAIN", 3, false, true];
        titleFadeOut 3;
        sleep 12;

        titleText ["<t align='left' size='1.2' font='RobotoCondensedLight'>USED MODS:<br />ACE3 / TRYK / TAC / SMA<br />AMP BREACHDOOR / ACTIONBUILDER / PROJECT OPFOR AND MANY MORE...</t>", "PLAIN", 3, false, true];
        titleFadeOut 3;
        sleep 12;
    };



    waitUntil {getPosATL player select 2 < 250 || animationState player == "para_pilot"};
    if (!(animationState player == "para_pilot")) then {
            player action ["openParachute"];
    };



    waitUntil {animationState player == "para_pilot"};
    resetCamShake;
    player allowDamage false;
    [player, "blockDamage", "Pasi_yourUniqueReason", true] call ace_common_fnc_statusEffect_set;

    _damageHandlerHalo = [ "_damageHandlerHaloID", "onEachFrame", {
        player setDamage 0;
    }] call BIS_fnc_addStackedEventHandler;

    // Parachute Opening EFX & Sound
    33 cutText ["", "BLACK IN", 2];
    addCamShake [75, 5, 5];
    playSound "open_chute";
    playSound "grunt1";
    playSound "open_chute2";
    //sleep 5;

    addCamShake [5,  5,  2];


    setAperture 0.05;
    setAperture -1;
    "DynamicBlur" ppEffectEnable true;
    "DynamicBlur" ppEffectAdjust [8.0];
    "DynamicBlur" ppEffectCommit 0.01;
    sleep 1;
    "DynamicBlur" ppEffectAdjust [0.0];
    "DynamicBlur" ppEffectCommit 3;
    sleep 3;
    "DynamicBlur" ppEffectEnable false;
    "RadialBlur" ppEffectAdjust [0.0, 0.0, 0.0, 0.0];
    "RadialBlur" ppEffectCommit 1.0;
    "RadialBlur" ppEffectEnable false;

    playSound "heartbeat";

    //W-I-P
    [] spawn {
        while {(getPos player select 2) > 5} do {
        playSound "para_pilot";
        addCamShake [3, 4, 2];
        sleep 4;
        };
    };


    waitUntil {isTouchingGround (vehicle player) && (getPosATL player select 2) < 2 };
    resetCamShake;
    detach _jumpLightRED;
    deleteVehicle smoke;
    smokeCreate = false;
    sleep 3;
    player allowDamage true;
    [player, "blockDamage", "Pasi_yourUniqueReason", false] call ace_common_fnc_statusEffect_set;
    ["_damageHandlerHalo", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;

    player setCaptive false;
    //[1,2,false] spawn BIS_fnc_cinemaBorder;

    sleep 300;
    deleteVehicle _jumpLightRED;

};
