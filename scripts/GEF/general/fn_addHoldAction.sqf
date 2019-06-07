/*
connect
forceRespawn
hack
revive
reviveMedic
search
takeOff1
takeOff2
unbind
*/
params ["_textName","_code","_object","_duration","_symbol","_delete","_deleteAction"];

_object = _object;
_condition = "true";
_deleteCode = "";

if (typeName _object == 'STRING') then {
    _condition = "_target == _this || _target == vehicle _this";
    _object = player;
} else {
    _condition = "_this distance _target < 4";
    _object = _object;
};

if (_delete) then {
    _deleteCode = "deleteVehicle _target;";
} else {
    _deleteCode = "";
};

_symbol = "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_" + _symbol + "_ca.paa";



[
	_object,							// Object the action is attached to
	_textName,							// Title of the action
	_symbol,	// Idle icon shown on screen
	_symbol,	// Progress icon shown on screen
    _condition,					// Condition for the action to be shown
	"_caller distance _target < 4",					// Condition for the action to progress
	{},								// Code executed when action starts
	{},								// Code executed on every progress tick
	{
        params ["_target","_caller","_ID","_params"];
        _params params ["_code","_deleteCode"];
        call _code;
        call compile _deleteCode;

    },				// Code executed on completion
	{},								// Code executed on interrupted
	[_code,_deleteCode],								// Arguments passed to the scripts as _this select 3
	_duration,								// Action duration [s]
	0,								// Priority
	_deleteAction,								// Remove on completion
	false								// Show in unconscious state
] remoteExec ["BIS_fnc_holdActionAdd", [0,-2] select isDedicated, _object]; // MP compatible implementation
