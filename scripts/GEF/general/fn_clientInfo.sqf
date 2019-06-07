params ["_function","_text",["_duration",5],["_fadein",2]];

if (_function == 'showInfo') then {

    //[_text,-1,-1,_duration,_fadein,0,789] remoteExec ["BIS_fnc_dynamicText",[0,-2] select isDedicated];
    [_text,_duration,_fadein] remoteExec ['GEF_fnc_' + _function,[0,-2] select isDedicated];
};

if (_function == 'showHint') then {

    //_text = parseText _text;
    //_text remoteExec ["hint",[0,-2] select isDedicated];
    _text remoteExec ['GEF_fnc_' + _function,[0,-2] select isDedicated];
};
