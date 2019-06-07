// [object,'soundclass',10] call GEF_fnc_playSound3D;
params ["_object","_sound","_sleep"];

[_object, _sound, _sleep] spawn {
    params ["_object","_sound","_sleep"];

    while {alive _object} do {
        [_object, _sound] remoteExec ["say3D", [0,-2] select isDedicated, false];
        sleep _sleep;
    };
};
