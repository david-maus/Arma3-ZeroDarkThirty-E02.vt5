
// All Headgear to use as Gasmask
INS_gasMaskH = [
                "H_CrewHelmetHeli_B",
                "H_CrewHelmetHeli_O",
                "H_CrewHelmetHeli_I",
                "H_PilotHelmetFighter_B",
                "H_PilotHelmetFighter_O",
                "H_PilotHelmetFighter_I"
                ];

// All Goggles to use as Gasmask
//Hidden Identity Pack V.3
INS_gasMaskG = [
                "Mask_M50",
                "Mask_M40",
                "Mask_M40_OD",
                "avon_ct12",
                "avon_ct12_strapless",
                "avon_fm12",
                "avon_fm12_strapless",
                "avon_SF12",
                "avon_SF12_strapless"
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


ACE_ENABLED_CHECK = false;
if (isClass (configFile >> "CfgPatches" >> "ace_main")) then {
    ACE_ENABLED_CHECK = true;
};


params ["_gasZoneName","_gasZoneDynamicName"];




 GasDynamicMarkers = [];
  GasZoneCond = '';
  GasZoneCond_ai = '';
{
    private "_a";
  _a = toArray _x;


      if (toString _a find _gasZoneName >= 0 ) then {

         _markerSize = getMarkerSize _x select 0;
         _x setMarkerAlpha 0;
         if (!isDedicated && hasInterface) then
         {
             null=[_x,_markerSize,GasFog_Mindistance,GasFog_CloudCount,GasFog_CloudMinSize,GasFog_CloudMaxSize,GasFog_CloudHeight,GasFog_CloudRespawn,GasFog_Transparency,GasFog_Color select 0,GasFog_Color select 1,GasFog_Color select 2,GasFog_CloudRemoveSpeed,GasFog_CloudMinLifetime,GasFog_CloudMaxLifetime,GasFog_AffectedByWind,GasFog_WindStrenght,GasFog_RandDirTime,GasFog_RandDirStrenght,GasFog_MoveDirectionSpeed select 0,GasFog_MoveDirectionSpeed select 1,GasFog_MoveDirectionSpeed select 2,0.0,23.9] execFSM "scripts\other\GasMask_DM\Fog.fsm";
         };
        GasZoneCond = GasZoneCond + 'player inArea "' + _x + '" || ';
        GasZoneCond_ai = GasZoneCond_ai + '_x inArea "' + _x + '" || ';

  };

} forEach allMapMarkers;



    {
        private "_a";
      _a = toArray _x;

      if (toString _a find _gasZoneDynamicName >= 0 ) then {
          missionNameSpace setVariable [("Create_" + _x),false];
          missionNameSpace setVariable [("Create_ai_" + _x),false];
         _x setMarkerAlpha 0;
         GasDynamicMarkers pushBack _x;
      }

    } forEach allMapMarkers;






// Server //
if (isServer) then
{

    // AI

        GAS_Damage_ai = {
            _x = _this select 0;
            _x setVariable ["inGas",true];

            private ["_maxtype","_sound"];
            _maxtype = (count Choke_Sounds);

            //While were in smoke
            while { alive _x && [_x] call GAS_inZone_ai } do {
                _sound = Choke_Sounds select (floor random _maxtype);
                playsound3d [_sound, _x, false, getPosasl _x, 10,1,30];

                if (ACE_ENABLED_CHECK) then {
                    [_x, 0.2, "head", "unknown"] call ace_medical_fnc_addDamageToUnit;
                } else {
                    _x setDamage (damage _x + 0.2);
                };

                sleep 3;
            };

            //We are no longer in smoke
            [_x] call GAS_Clear_ai;

        };

        GAS_Clear_ai = {
            _x = _this select 0;
            _x setVariable ["inGas",false];
        };

        GAS_inZone_ai = {
            _x = _this select 0;
            //Are we near a smoke shell
            //Are we not wearing a gas mask
            if ((headgear _x in INS_gasMaskH) || {(goggles _x in INS_gasMaskG)}) then {
                //We are wearing a gas mask. Return false as it does not matter if a smoke shell is near
                false
            } else {
                //If there is a smoke shell
                if (call compile (GasZoneCond_ai)) then {
                    //Is it at rest AND within 10 meters of the player ( will need to experiment with magnitude threshold )
                    true
                } else {
                    //There is no smoke shell so Return false
                    false
                };
            };
        };

        CreateGasZone_ai = {
            _x = _this select 0;
            _GasDynamicZone = _this select 1;
            missionNameSpace setVariable [("Create_ai_" + _GasDynamicZone),false];
           GasZoneCond_ai = GasZoneCond_ai + '_x inArea "' + _GasDynamicZone + '" || ';
        };




        //Check each frame if we are near smoke
            //If we are not already flagged as in smoke AND near a smoke shell
                //Start gas effects
            smokeNearSEHID_ai = [ "smokeNear_ai", "onEachFrame", {



                {
                    _unit = _x;
                    if (!isPlayer _x) then {
                        if (!(_x getVariable ["inGas",false]) && { [_x] call GAS_inZone_ai }) then {
                            _inSmokeThread_ai = [_x] spawn GAS_Damage_ai;
                        };
                        {
                            if (missionNameSpace getVariable ("Create_ai_" + _x)) then {
                                    [_unit,_x] call CreateGasZone_ai;
                            };
                        } forEach GasDynamicMarkers;
                    };


                } forEach allUnits;

            }] call BIS_fnc_addStackedEventHandler;





};
// Client //
if (!isDedicated && hasInterface) then
{
    // Client functions //

    GAS_Damage = {
        player setVariable ["inGas",true];

        private ["_maxtype","_sound"];
        _maxtype = (count Choke_Sounds);

        //Do effects
        "dynamicBlur" ppEffectEnable true;
        "dynamicBlur" ppEffectAdjust [12];
        "dynamicBlur" ppEffectCommit 5;
        enableCamShake true;
        addCamShake [10, 45, 10];
        5 fadeSound 0.1;

        //While were in smoke
        while { alive player && [] call GAS_inZone } do {
            _sound = Choke_Sounds select (floor random _maxtype);
            playsound3d [_sound, player, false, getPosasl player, 10,1,30];

            if (ACE_ENABLED_CHECK) then {
                [player, 0.1, "head", "unknown"] call ace_medical_fnc_addDamageToUnit;
            } else {
                player setDamage (damage player + 0.1);
            };

            uiSleep 3;
        };

        //We are no longer in smoke
        [] call GAS_Clear;

    };

    GAS_Clear = {
        player setVariable ["inGas",false];

        //Clear effects
        "dynamicBlur" ppEffectEnable true;
        "dynamicBlur" ppEffectAdjust [0];
        "dynamicBlur" ppEffectCommit 10;
        resetCamShake;
        20 fadeSound 1;
    };

    GAS_inZone = {
        //Are we near a smoke shell
        //Are we not wearing a gas mask
        if ((headgear player in INS_gasMaskH) || {(goggles player in INS_gasMaskG)}) then {
            //We are wearing a gas mask. Return false as it does not matter if a smoke shell is near
            false
        } else {
            //If there is a smoke shell
            if (call compile (GasZoneCond)) then {
                //Is it at rest AND within 10 meters of the player ( will need to experiment with magnitude threshold )
                true
            } else {
                //There is no smoke shell so Return false
                false
            };
        };
    };

    CreateGasZone = {
        _GasDynamicZone = _this select 0;
        missionNameSpace setVariable [("Create_" + _GasDynamicZone),false];
        _markerSize = getMarkerSize _GasDynamicZone select 0;
       null=[_GasDynamicZone,_markerSize,GasFog_Mindistance,GasFog_CloudCount,GasFog_CloudMinSize,GasFog_CloudMaxSize,GasFog_CloudHeight,GasFog_CloudRespawn,GasFog_Transparency,GasFog_Color select 0,GasFog_Color select 1,GasFog_Color select 2,GasFog_CloudRemoveSpeed,GasFog_CloudMinLifetime,GasFog_CloudMaxLifetime,GasFog_AffectedByWind,GasFog_WindStrenght,GasFog_RandDirTime,GasFog_RandDirStrenght,GasFog_MoveDirectionSpeed select 0,GasFog_MoveDirectionSpeed select 1,GasFog_MoveDirectionSpeed select 2,0.0,23.9] execFSM "scripts\other\GasMask_DM\Fog.fsm";
       GasZoneCond = GasZoneCond + 'player inArea "' + _GasDynamicZone + '" || ';
    };


    //Check each frame if we are near smoke
        //If we are not already flagged as in smoke AND near a smoke shell
            //Start gas effects
        smokeNearSEHID = [ "smokeNear", "onEachFrame", {
            if (!(player getVariable ["inGas",false]) && { [] call GAS_inZone }) then {
                _inSmokeThread = [] spawn GAS_Damage;
            };
            {
                if (missionNameSpace getVariable ("Create_" + _x)) then {
                        [_x] call CreateGasZone;
                };
            } forEach GasDynamicMarkers;

        }] call BIS_fnc_addStackedEventHandler;


};
