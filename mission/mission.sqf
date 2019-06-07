/////////////////////////////////////////////////////////////////////////////////////////
///////////                   GEF MissionCreate Framework 1.0
///////////                            David Maus
/////////////////////////////////////////////////////////////////////////////////////////
// Hier jeglichen Code für die Mission eingeben. Tasks etc. z.b.
call compile preprocessFile "mission\aiPathes.sqf";

#include "tasks.sqf"
#include "sounds.sqf"
#include "actions.sqf"
if (!isServer) exitWith {};


/////////////////////////////////////////////////////////////////////////////////////////
////////////////// Code on Start
"task_landing" setMarkerAlpha 0;

[west,'checkpoint_1', 'Checkpoint LZ'] call GEF_fnc_addRespawn;

////////////////// Tasks on Start
call task_landing;
call task_global;
call task_searchplane;
call task_searchhouse;







// ['extraction','RHS_UH60M','extractHeli','READY! GO GO GO'] call GEF_fnc_spawnExtract;
// ['object'] call GEF_fnc_playAI;
// ['markername'] call GEF_fnc_gasZoneCreate;
// ['OPCOM','text','west','OPCOMLOG',true] call GEF_fnc_showOpcom;
/* p1
    ["AMP_Breaching_Charge_Mag",3],"ACE_Clacker","rhs_weap_mk18_m320","rhsusf_weap_glock17g4",
    "rhsusf_acc_omega9k","acc_flashlight_pistol","rhsusf_acc_nt4_black","rhsusf_acc_anpeq15_bk",
    "sma_spitfire_03_rds_black","TRYK_H_woolhat","avon_ct12_strapless","ACE_Vector","ItemGPS",
    "tf_anprc152","ItemCompass","ACE_wirecutter","ACE_A3_GPNVG18_BLK_F", ["ACE_fieldDressing",3],
    ["ACE_packingBandage",3],["ACE_morphine",3],["ACE_epinephrine",3],["ACE_microDAGR",1],
    ["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["HandGrenade",3,1],["SmokeShellRed",1,1],
    ["SmokeShell",3,1]
*/

/* p2
    ["AMP_Breaching_Charge_Mag",3],"ACE_Clacker","rhs_weap_mk18_m320","rhsusf_weap_glock17g4",
    "rhsusf_acc_omega9k","acc_flashlight_pistol","rhsusf_acc_nt4_black","rhsusf_acc_anpeq15_bk",
    "sma_spitfire_03_rds_black","TRYK_ESS_CAP","avon_ct12_strapless","ACE_Vector","ItemGPS",
    "tf_anprc152","ItemCompass","ACE_wirecutter","ACE_NVG_Gen2", ["ACE_fieldDressing",3],
    ["ACE_packingBandage",3],["ACE_morphine",3],["ACE_epinephrine",3],["ACE_microDAGR",1],
    ["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["HandGrenade",3,1],["SmokeShellRed",1,1],
    ["SmokeShell",3,1]
*/

/* p3
    ["AMP_Breaching_Charge_Mag",3],"ACE_Clacker","rhs_weap_mk18_m320","rhsusf_weap_glock17g4",
    "rhsusf_acc_omega9k","acc_flashlight_pistol","rhsusf_acc_nt4_black","rhsusf_acc_anpeq15_bk",
    "sma_spitfire_03_rds_black","CUP_H_PMC_Cap_Black_PRR_Grey","avon_ct12_strapless","ACE_Vector","ItemGPS",
    "tf_anprc152","ItemCompass","ACE_wirecutter","ACE_NVG_Gen2", ["ACE_fieldDressing",3],
    ["ACE_packingBandage",3],["ACE_morphine",3],["ACE_epinephrine",3],["ACE_microDAGR",1],
    ["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["HandGrenade",3,1],["SmokeShellRed",1,1],
    ["SmokeShell",3,1]
*/

// ["capturedCiv"] call GEF_fnc_playAI;

// Client Functions
// ['west', 'OPCOM Log', 'text'] call GEF_fnc_serverAddBriefing;
// ['taskID'] call GEF_fnc_serverCompleteTask;
// [task] call GEF_fnc_serverCallTask;

// ['GasZoneDynamic_3'] call GEF_fnc_gzCreate;

/*
[nuke_me,200,true,true,true,true] execvm "scripts\other\AlNuke\alias_nuke.sqf";

([west,'markername', 'respawnname'] call GEF_fnc_addRespawn;)
(['showInfo', 'text', 18, 6] call GEF_fnc_clientInfo;)
(['showHint', 'text'] call GEF_fnc_clientInfo;)




(['markerName', 'allPlayers'] call GEF_fnc_inArea)
(['markerName', 'anyPlayer'] call GEF_fnc_inArea)
(['markerName', UnitName] call GEF_fnc_inArea)

([triggerName, 'allPlayers'] call GEF_fnc_inArea)
([triggerName, 'anyPlayer'] call GEF_fnc_inArea)
([triggerName, UnitName] call GEF_fnc_inArea)




([Height, 'allPlayers'] call GEF_fnc_underHeight)
([Height, 'anyPlayer'] call GEF_fnc_underHeight)
([Height, UnitName] call GEF_fnc_underHeight)

([Height, 'allPlayers'] call GEF_fnc_overHeight)
([Height, 'anyPlayer'] call GEF_fnc_overHeight)
([Height, UnitName] call GEF_fnc_overHeight)



([Radius, object, 'allPlayers'] call GEF_fnc_inRadius)
([Radius, object, 'anyPlayer'] call GEF_fnc_inRadius)
([Radius, object, UnitName] call GEF_fnc_inRadius)


(['objectClass', 'allPlayers'] call GEF_fnc_itemInInventar)
(['objectClass', 'anyPlayer'] call GEF_fnc_itemInInventar)
(['objectClass', UnitName] call GEF_fnc_itemInInventar)

(['objectClass', 'allPlayers'] call GEF_fnc_itemEquipped)
(['objectClass', 'anyPlayer'] call GEF_fnc_itemEquipped)
(['objectClass', UnitName] call GEF_fnc_itemEquipped)

([Vehicle, 'allPlayers'] call GEF_fnc_inVehicle)
([Vehicle, 'anyPlayer'] call GEF_fnc_inVehicle)
([Vehicle, UnitName] call GEF_fnc_inVehicle)

(['allPlayers'] call GEF_fnc_inAnyVehicle)
(['anyPlayer'] call GEF_fnc_inAnyVehicle)
([UnitName] call GEF_fnc_inAnyVehicle)

(['allPlayers'] call GEF_fnc_isNotHostage)
(['anyPlayer'] call GEF_fnc_isNotHostage)
([UnitName] call GEF_fnc_isNotHostage)


(['allPlayers'] call GEF_fnc_isAlive)
(['anyPlayer'] call GEF_fnc_isAlive)
([UnitName] call GEF_fnc_isAlive)
*/






////////////////// MissionFlow
/////////////////////////////////////////////////////////////////////////////////////////
// Wenn alle gelandet sind und sich in der LZ befinden
[
    [

        // Condition
        "
        (['allPlayers'] call GEF_fnc_isAlive) && (['task_landing', 'allPlayers'] call GEF_fnc_inArea) && ([2, 'allPlayers'] call GEF_fnc_underHeight)
        ",

        // Condition - Task der erfüllt sein muss
        ""
    ],

    [
        // Task der erfüllt werden soll
        "task_landing",

        // Nächster Task der gecalled wird aus der Tasklist
        "",

        // Task der assigned/aktiviert werden soll
        "task_searchplane",

        // Code
        "
        sleep 5;
        ['showInfo', 'Werfen Sie den Fallschirm ab, rüsten Sie sich aus und sammeln Sie das Team...', 10, 6] call GEF_fnc_clientInfo;
        sleep 10;
        ['TOC',
        'str_gef_opcomLand','group p1','TOC LOG',true] call GEF_fnc_showOpcom;
        "
    ]

] call GEF_fnc_waitUntilAndExecute;
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
// Wenn einer nicht in der LZ gelandet ist - FAIL
[
    [

        // Condition
        "
        !(['task_landing_fail', 'anyPlayer'] call GEF_fnc_inArea) && ([80, 'anyPlayer'] call GEF_fnc_underHeight) && !(['task_landing'] call FHQ_fnc_ttIsTaskCompleted)
        ",

        // Condition - Task der erfüllt sein muss
        ""
    ],

    [
        // Task der erfüllt werden soll
        "",

        // Nächster Task der gecalled wird aus der Tasklist
        "",

        // Task der assigned/aktiviert werden soll
        "",

        // Code
        "
        [{},'fail2',true,true] call GEF_fnc_endMission;
        "
    ]

] call GEF_fnc_waitUntilAndExecute;
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
// Wenn mindestens 1 Player in der nähe des Verwundeten ist
[
    [

        // Condition
        "
        ([5, forestWound_1, 'anyPlayer'] call GEF_fnc_inRadius)
        ",

        // Condition - Task der erfüllt sein muss
        ""
    ],

    [
        // Task der erfüllt werden soll
        "task_landing",

        // Nächster Task der gecalled wird aus der Tasklist
        "",

        // Task der assigned/aktiviert werden soll
        "",

        // Code
        "
        sleep 4;
        ['TOC',
        '
Ihr könnt Ihm jetzt leider nicht helfen.
<br /><br />
Die Mission hat höchste Priorität. Rücken Sie weiter vor wie geplant.
<br /><br />
Wenn alles gut verläuft holen unsere Leute Ihn später raus.
        ','group p1','TOC LOG',true] call GEF_fnc_showOpcom;
        "
    ]

] call GEF_fnc_waitUntilAndExecute;
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
// Wenn mindestens 1 player vor dem Zaun ist
[
    [

        // Condition
        "
        ([fenceTrigger, 'anyPlayer'] call GEF_fnc_inArea)
        ",

        // Condition - Task der erfüllt sein muss
        ""
    ],

    [
        // Task der erfüllt werden soll
        "task_landing",

        // Nächster Task der gecalled wird aus der Tasklist
        "",

        // Task der assigned/aktiviert werden soll
        "",

        // Code
        "
        ['showInfo', 'Findet einen Weg durch den Zaun oder schneidet euch durch', 5, 3] call GEF_fnc_clientInfo;
        "
    ]

] call GEF_fnc_waitUntilAndExecute;
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
// Wenn alle player kurz vorm haus sind
[
    [

        // Condition
        "
        ([triggerHouse, 'allPlayers'] call GEF_fnc_inArea)
        ",

        // Condition - Task der erfüllt sein muss
        "task_searchplane"
    ],

    [
        // Task der erfüllt werden soll
        "",

        // Nächster Task der gecalled wird aus der Tasklist
        "",

        // Task der assigned/aktiviert werden soll
        "",

        // Code
        "
        [west,'checkpoint_2', 'Checkpoint House'] call GEF_fnc_addRespawn;
        ['showInfo', 'Checkpoint...', 5, 3] call GEF_fnc_clientInfo;
        "
    ]

] call GEF_fnc_waitUntilAndExecute;
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
// Wenn mindestens 1 Player vor dem Flugzeug ist
[
    [

        // Condition
        "
        ([triggerPlane, 'anyPlayer'] call GEF_fnc_inArea)
        ",

        // Condition - Task der erfüllt sein muss
        "task_landing"
    ],

    [
        // Task der erfüllt werden soll
        "",

        // Nächster Task der gecalled wird aus der Tasklist
        "",

        // Task der assigned/aktiviert werden soll
        "",

        // Code
        "
        ['showInfo', 'Durchsuchen Sie das Flugzeug...', 5, 3] call GEF_fnc_clientInfo;
        "
    ]

] call GEF_fnc_waitUntilAndExecute;
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
// Wenn mindestens 1 Player im Flugzeug ist
[
    [

        // Condition
        "
        ([triggerPlane02, 'anyPlayer'] call GEF_fnc_inArea)
        ",

        // Condition - Task der erfüllt sein muss
        "task_landing"
    ],

    [
        // Task der erfüllt werden soll
        "",

        // Nächster Task der gecalled wird aus der Tasklist
        "",

        // Task der assigned/aktiviert werden soll
        "",

        // Code
        "
        ['TOC',
        '
Bei dem sehen wir weg.
<br />
Suchen Sie aber alles ab.
        ','group p1','TOC LOG',true] call GEF_fnc_showOpcom;
        "
    ]

] call GEF_fnc_waitUntilAndExecute;
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
// Wenn Frachtpapiere aufgesammelt sind
[
    [

        // Condition
        "
        (['allPlayers'] call GEF_fnc_isAlive) && !([planeDocs] call GEF_fnc_isAlive)
        ",

        // Condition - Task der erfüllt sein muss
        "task_landing"
    ],

    [
        // Task der erfüllt werden soll
        "task_searchplane",

        // Nächster Task der gecalled wird aus der Tasklist
        "",

        // Task der assigned/aktiviert werden soll
        "task_searchhouse",

        // Code
        "

        "
    ]

] call GEF_fnc_waitUntilAndExecute;
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
// Wenn Frachtpapiere aufgesammelt und weitergegangen
[
    [

        // Condition
        "
        (['anyPlayer'] call GEF_fnc_isAlive) && ([triggerPlane03, 'anyPlayer'] call GEF_fnc_inArea)
        ",

        // Condition - Task der erfüllt sein muss
        "task_searchplane"
    ],

    [
        // Task der erfüllt werden soll
        "",

        // Nächster Task der gecalled wird aus der Tasklist
        "",

        // Task der assigned/aktiviert werden soll
        "",

        // Code
        "
        ['TOC',
        '
Ok,
<br /><br />
die Frachtpapiere bestätigen die Behälter und deren Verschwinden.
<br /><br />
Das ist verdammt schlecht aber wir gehen davon aus das Sie größere Pläne und / oder Forderungen haben.
<br /><br />
Solange das der Fall ist haben wir noch eine Chance das VX wieder zu bekommen. Fahren Sie mit dem ursprünglichen Plan fort und sichern Sie das Anwesen.
<br /><br />
Mit ein bischen Glück werdet Ihr da fündig. Auch Doctor Brown ist nach unserem Kenntnisstand immer noch vor Ort.
        ','group p1','TOC LOG',true] call GEF_fnc_showOpcom;
        "
    ]

] call GEF_fnc_waitUntilAndExecute;
/////////////////////////////////////////////////////////////////////////////////////////






/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
