/////////////////////////////////////////////////////////////////////////////////////////
///////////                   GEF MissionCreate Framework 1.0
///////////                            David Maus
/////////////////////////////////////////////////////////////////////////////////////////
// initPlayerLocal.sqf - Wird beim Start der Mission und beim nachjoinen von Client ausgeführt




#include "config\missionConfig.sqf"


/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
// -------------------------------------- Scriptausführung
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////



/////////////////////////////////////////////////////////////////////////////////////////
/////////// Dummy Big Load Screen
if (BigLoadscreen == 1) then
{
    [] spawn {
        disableSerialization;
        waitUntil {!isNull (findDisplay 46)};
        _display = findDisplay 46;
        _control = _display ctrlCreate ["RscPicture", 22505];
        _control ctrlSetPosition [safezoneX, safezoneY, safezoneW, safezoneH];
        _control ctrlCommit 0;
        _control ctrlSetText "media\images\loadScreenBig.jpg";
        sleep BigLoadscreenTime;
        ctrlDelete _control;
    };
};
/////////////////////////////////////////////////////////////////////////////////////////





/////////////////////////////////////////////////////////////////////////////////////////
/////////// Restore Loadout nach Respawn
if (restoreLoadOut == 1) then
{
    // Save loadout
    player addEventHandler ["Killed", {
            [player, [missionNamespace, getPlayerUID player]] call BIS_fnc_saveInventory;
        }
    ];


    // Load saved loadout on respawn
    player addEventHandler ["Respawn", {
            [player, [missionNamespace, getPlayerUID player]] call BIS_fnc_loadInventory;

        }
    ];
};
/////////////////////////////////////////////////////////////////////////////////////////





/////////////////////////////////////////////////////////////////////////////////////////
/////////// Fuel Script - Mehr Verbrauch
if (fuelSystem == 1) then
{
    player addEventHandler ["GetInMan", {[_this select 2, fuelStanding, fuelDriving, fuelDrivingMax] execVM "scripts\other\kp_fuel_consumption.sqf";}];
};
/////////////////////////////////////////////////////////////////////////////////////////





/////////////////////////////////////////////////////////////////////////////////////////
/////////// Respawn auf Gruppenmitglieder
if (respawnOnGroup == 1) then
{

    player addEventHandler ["Killed", {
            {

                while {!alive player} do {
                    _myRespawn = [player, _x, name _x] call BIS_fnc_addRespawnPosition;


                    _myRespawn call BIS_fnc_removeRespawnPosition;
                };

            }forEach units group player;
        }
    ];

};
/////////////////////////////////////////////////////////////////////////////////////////







/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
// Hier unten anderen Code und andere Scripte ausführen
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
