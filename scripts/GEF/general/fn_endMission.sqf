/*
[{},'win',5,true] call GEF_fnc_endMission;
[{},'fail',5,true] call GEF_fnc_endMission;

[{},'win',true,true] call GEF_fnc_endMission;
[{},'fail',true,true] call GEF_fnc_endMission;
*/
params [["_code", {}],"_end","_fade","_music"];




[[_code,_end,_fade,_music],
{
    params [["_code", {}],"_end","_fade","_music"];

    [_code,_end,_fade,_music] spawn {
        params [["_code", {}],"_end","_fade","_music"];

        _codeExec = [_code] spawn {
            params [["_code", {}]];
            call _code;
        };

        waitUntil { scriptDone _codeExec };


        222 cutRsc ["Default", "PLAIN",5];
        HelmGogglesEFX = 0;

        if (_end find 'win' >= 0 ) then {
            [_end,true,_fade,_music,false] call BIS_fnc_endMission;
        };
        if (_end find 'fail' >= 0 ) then {
            [_end,false,_fade,_music,false] call BIS_fnc_endMission;
        };

    };

}] remoteExecCall ["bis_fnc_call", [0,-2] select isDedicated];
