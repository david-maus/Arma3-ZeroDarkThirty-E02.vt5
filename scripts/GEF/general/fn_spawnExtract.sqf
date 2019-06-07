params ["_marker","_class","_object","_menu"];

object = _class createVehicle getMarkerPos _marker;
createVehicleCrew _object;
_object engineOn true;

[
    "<t color='#FF0000'>"+_menu+"</t>",
    {
        // "_target","_caller","_ID"
        [str _target] call GEF_fnc_playAI;
    },
    _object,
    false,
    true,
    true
] call GEF_fnc_addAction;
