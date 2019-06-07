_lockName = _this select 0;






GOM_fnc_lockBuildingDoor = {
	params ["_building","_door"];

	if (isClass (configFile >> "CfgPatches" >> "ace_main")) then {

		/* _doorPosRel = _building selectionPosition _door;
		_doorPosAbs = _building modelToWorld _doorPosRel;

		_doorAction = "Sign_Sphere100cm_F" createVehicleLocal (_doorPosAbs);
		_doorAction setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.0,0.6,1.0,0,ca)"];
		_Offset = [-0.4,1,1.5];
		_worldPos = _doorAction modelToWorld _Offset;
		_doorAction setPos _worldPos;

		_action = ["ACE_UnlockDoor","Unlock Door Manually","",{

			_parameter = _this select 2;
			_building = _parameter select 0;
			_door = _parameter select 1;
			[5, [_building,_door], {

				_this params ["_parameter"];
				_parameter params ["_building","_door"];
				_building params ["_building"];
				_door params ["_door"];

				_building setVariable [format ["bis_disabled_%1",_door],0,true];
				playSound "Click";

			}, {}, "Unlocking Door..."] call ace_common_fnc_progressBar;
			deleteVehicle (_this select 0);

			},{true}, {},[_building, _door],[0,0,1.5],50] call ace_interact_menu_fnc_createAction;

		[_doorAction, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject; */


		_building addAction ["<t color='#FF0000'>Unlock door manually</t>",{
			params ["_object","_caller","_ID","_door"];



				    [60, [_object,_door, _ID], {
						_this params ["_parameter"];
	    				_parameter params ["_object","_door", "_ID"];
	    				_object params ["_object"];
						_door params ["_door"];
						_ID params ["_ID"];

						_object setVariable [format ["bis_disabled_%1",_door],0,true];
		            	playSound "Click";
						_object removeAction _ID;
					}, {}, "Unlocking Door..."] call ace_common_fnc_progressBar;

			},_door,6,true,true,"","_this isEqualTo vehicle _this",3,false,_door];

	} else {
		_building addAction ["<t color='#FF0000'>Unlock door manually</t>",{
			params ["_object","_caller","_ID","_door"];

				_object removeAction _ID;

					_DoorUnlockTime = 60;
		            _DoorUnlockTimeCurrent = 0;
		            doorOpen = False;
		            with uiNamespace do {
		            lockDoorsBar = findDisplay 46 ctrlCreate ["RscProgress", -1];
		            lockDoorsBar ctrlSetPosition [ 0.384, 0.384];
		            lockDoorsBar progressSetPosition 1;
		            lockDoorsBar ctrlShow true;
		            lockDoorsBar ctrlCommit 0;

		            lockDoorsText = findDisplay 46 ctrlCreate ["RscStructuredText", -1];
		            lockDoorsText ctrlSetPosition [ 0.384, 0.384 ];
		            lockDoorsText ctrlShow true;
		            lockDoorsText ctrlCommit 0;
		            };
		            [_caller, _DoorUnlockTimeCurrent, _DoorUnlockTime] spawn {
		                    _caller = _this select 0;
		                    while {alive _caller && !doorOpen} do {
		                        _caller switchMove "ainvpknlmstpslaywrfldnon_medic";
		                        sleep 6;
		                    };
		            };

		                while { alive _caller && _DoorUnlockTimeCurrent < _DoorUnlockTime} do {
		                    _DoorUnlockTimeCurrent = _DoorUnlockTimeCurrent + 1;
		                    _progressDoor = linearConversion[ 0, _DoorUnlockTime, _DoorUnlockTimeCurrent, 0, 1 ];
		                    (uiNamespace getVariable "lockDoorsBar") ctrlShow true;
		                    (uiNamespace getVariable "lockDoorsText") ctrlShow true;
		                    (uiNamespace getVariable "lockDoorsBar") progressSetPosition _progressDoor;
		                    (uiNamespace getVariable "lockDoorsText") ctrlSetStructuredText parseText format["<t size='0.6'>UNLOCK... %1%2</t>", round(100*_progressDoor), "%"];
		                    uiSleep 1;
		                    if (_DoorUnlockTimeCurrent == _DoorUnlockTime) then {
		                        doorOpen = True;
		                    };
		                };

		            ctrlDelete (uiNamespace getVariable "lockDoorsBar");
		            ctrlDelete (uiNamespace getVariable "lockDoorsText");
		            _object setVariable [format ["bis_disabled_%1",_door],0,true];
		            playSound "Click";
		            _caller switchMove "amovpknlmstpsraswrfldnon_gear";





			},_door,6,true,true,"","_this isEqualTo vehicle _this",3,false,_door];
	};




};




GOM_fnc_initBuildingDoors = {
		params ["_building"];

		//grabbing all valid doors
		_selectionNames = selectionNames _building;
		_doors = _selectionNames select {toUpper _x find "DOOR" >= 0 AND toUpper _x find "HANDLE" == -1};
	{
		//lock all doors and add the actions
		_building setVariable [format ["bis_disabled_%1",_x],1,true];
		_lock = [_building,_x] call GOM_fnc_lockBuildingDoor;

	} forEach _doors;
};







{
    private "_a";
  _a = toArray _x;


      if (toString _a find _lockName >= 0 ) then {

         _markerSize = getMarkerSize _x select 0;
         _x setMarkerAlpha 0;


         {
            _building = _x;
            [_building] call GOM_fnc_initBuildingDoors;
         } forEach ( nearestTerrainObjects [getMarkerPos _x, ["house","building"], _markerSize] );

    };

} forEach allMapMarkers;
















/*

if (isServer) then
{


    AddUnlocker = {
        _building = _this select 0;
        _doors = _this select 1;

        {
            _door = _x;
            _doorPosRel = _building selectionPosition _door;
            _doorPosAbs = _building modelToWorld _doorPosRel;
            _buildingPos = getPos _building;

            _doorAction = "Sign_Sphere100cm_Geometry_F" createVehicle (_doorPosAbs);
            _Offset = [-0.4,1,1.5];
            _worldPos = _doorAction modelToWorld _Offset;
            _doorAction setPos _worldPos;
            _doorAction setObjectTextureGlobal [0, "#(rgb,8,8,3)color(0,0,1,0)"];

            _forEachIndex = _forEachIndex + 1;

            [
            	_doorAction,							// Object the action is attached to
            	"Schloss Knacken",							// Title of the action
            	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unbind_ca.paa",	// Idle icon shown on screen
            	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unbind_ca.paa",	// Progress icon shown on screen
                "_this distance _target < 5",					// Condition for the action to be shown
            	"_caller distance _target < 5",					// Condition for the action to progress
            	{},								// Code executed when action starts
            	{},								// Code executed on every progress tick
            	{
                    _args = _this select 3;
                    _forEachIndex = _args select 0;
                    _building = _args select 1;
                    _var = format ["bis_disabled_Door_%1", _forEachIndex, true];
                    _building setVariable [_var,0];
                    deleteVehicle _target;
                },				// Code executed on completion
            	{},								// Code executed on interrupted
            	[_forEachIndex, _building],								// Arguments passed to the scripts as _this select 3
            	10,								// Action duration [s]
            	1,								// Priority
            	true,								// Remove on completion
            	false								// Show in unconscious state
            ] remoteExec ["BIS_fnc_holdActionAdd", [0,2] select isDedicated, _doorAction]; // MP compatible implementation

             _building addAction ["Unlock door",{

    			_object removeAction _ID;
    			_object setVariable [format ["bis_disabled_%1",_door],0,true];
    			systemchat "Door unlocked.";
    			playSound "Click";
    			_unlockAction = [_object,_door,_caller] call GOM_fnc_unlockBuildingDoor;

    		    systemchat "This door is locked!";//your code here
    		    playSound "Click";

		   },_door,6,true,true,"","_this isEqualTo vehicle _this",15,false,_door];
        } forEach _doors;



    };











};

if (!isDedicated && hasInterface) then
{
    {
        private "_a";
      _a = toArray _x;


          if (toString _a find _lockName >= 0 ) then {

             _markerSize = getMarkerSize _x select 0;
             _x setMarkerAlpha 0;


             {
                _building = _x;
                _selectionNames = selectionNames _building;
		        _doors = _selectionNames select {toUpper _x find "DOOR" >= 0 AND toUpper _x find "HANDLE" == -1};

               _nbDoors = getNumber (configfile >> "CfgVehicles" >> typeOf _x >> "numberOfDoors");
               [_building, _doors] call AddUnlocker;
               for "_i" from 0 to _nbDoors - 1 do {
                 _var = format ["bis_disabled_Door_%1", _i, true];
                 _building setVariable [_var,1]

               }
             } forEach ( nearestTerrainObjects [getMarkerPos _x, ["house","building"], _markerSize] );

        };

    } forEach allMapMarkers;
}; */
