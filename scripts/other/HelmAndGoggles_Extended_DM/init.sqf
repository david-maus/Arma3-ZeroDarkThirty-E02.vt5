
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
//Hidden Identity Pack V.2
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


Breath_Sound = "A3\sounds_f\characters\human-sfx\other\diver-breath-2.wss";








// Server //
if (isServer) then
{

    // AI

        {
            if(!isPlayer _x) then {
                [_x] spawn {
                    _x = _this select 0;
                    while { alive _x} do {

                    //if have helmet A
                    if ((headgear _x in INS_gasMaskH) || (goggles _x in INS_gasMaskG)) then {
                        sleep random 2.8;

                        [_x] spawn {
                            _x = _this select 0;

                            while {((headgear _x in INS_gasMaskH) || (goggles _x in INS_gasMaskG)) && alive _x} do {
                                objMasklogicCAI = createCenter sideLogic;
                                objMasklogicGAI = createGroup objMasklogicCAI;
                                objMaskSoundAI = objMasklogicGAI createUnit ["Logic", getPosasl _x, [], 0, "NONE"];
                                objMaskSoundAI attachTo [_x,[0,0,1.5]];

                                [objMaskSoundAI, "gasmask_breath"] remoteExec ["say3D", 0, false];
                                sleep 3;
                                deleteVehicle objMaskSoundAI;
                                deleteGroup objMasklogicGAI;
                                deleteCenter objMasklogicCAI;

                            };
                        };


                    };

                    //wait until player have helmet B
                    waitUntil { sleep 1; !(headgear _x in INS_gasMaskH) && !(goggles _x in INS_gasMaskG)};

                    //if have helmet B
                    if (!(headgear _x in INS_gasMaskH) && !(goggles _x in INS_gasMaskG)) then {

                    };

                    //wait until player have helmet A
                    waitUntil { sleep 1; (headgear _x in INS_gasMaskH) || (goggles _x in INS_gasMaskG) };

                };
             };
            };
        }forEach allUnits;


};
// Client //
if (!isDedicated && hasInterface) then
{
    // Client functions //



    while { alive player && HelmGogglesEFX == 1} do {

        //if jethelm
        if ((headgear player in INS_gasMaskH)) then {
            sleep random 2;
            objMasklogicC = createCenter sideLogic;
            objMasklogicG = createGroup objMasklogicC;
            objMaskSound = objMasklogicG createUnit ["Logic", getPosasl player, [], 0, "NONE"];
            objMaskSound attachTo [player,[0,0,1.5]];
            [] spawn {
                while {(headgear player in INS_gasMaskH) && alive player} do {
                    player action ["nvGogglesOff", player];
                    sleep 0.01;
                };

            };
            [] spawn {

                while {(headgear player in INS_gasMaskH) && alive player && HelmGogglesEFX == 1} do {
                    222 cutRsc ["VQI_HALO_HELMET_CLASSII", "PLAIN", 0, false];

                    // playSound3D [Breath_Sound, player];

                    [objMaskSound, "rebreather_breath"] remoteExec ["say3D", 0, false];
                    uiSleep 3;

                    //sleep 2.7;
                };
            };


        };
        // if gasmask
        if ((goggles player in INS_gasMaskG)) then {
            sleep random 2;
            objMasklogicC = createCenter sideLogic;
            objMasklogicG = createGroup objMasklogicC;
            objMaskSound = objMasklogicG createUnit ["Logic", getPosasl player, [], 0, "NONE"];
            objMaskSound attachTo [player,[0,0,1.5]];
            [] spawn {

                while {(goggles player in INS_gasMaskG) && alive player && HelmGogglesEFX == 1} do {
                    222 cutRsc ["GASMASKOVERLAY_CLASS", "PLAIN", 0, false];

                    // playSound3D [Breath_Sound, player];

                    [objMaskSound, "gasmask_breath"] remoteExec ["say3D", 0, false];
                    uiSleep 15;

                    //sleep 2.7;
                };
            };


        };

        //wait until player have helmet B
        waitUntil { sleep 1; !(headgear player in INS_gasMaskH) && !(goggles player in INS_gasMaskG)};
        if (!isNil {objMaskSound}) then {
            deleteVehicle objMaskSound;
            deleteGroup objMasklogicG;
            deleteCenter objMasklogicC;
        };
        //if have helmet B
        if (!(headgear player in INS_gasMaskH) && !(goggles player in INS_gasMaskG)) then {

            222 cutRsc ["Default", "PLAIN",0];

        };

        //wait until player have helmet A
        waitUntil { sleep 1; (headgear player in INS_gasMaskH) || (goggles player in INS_gasMaskG) };

    };


};
