
showInfo = {
    params ["_text","_duration","_fadein"];

    if (hasInterface) then {
        [(_text call BIS_fnc_localize),-1,-1,_duration,_fadein,0,789] spawn BIS_fnc_dynamicText;
	};
};

showHint = {
    params ["_text"];

    if (hasInterface) then {
		hintSilent parseText (_text call BIS_fnc_localize);
	};
};

GEF_fnc_clientInfo = {
    _function = _this select 0;
    if (_function == 'showInfo') then {
        _text = _this select 1;
        _duration = _this select 2;
        _fadein = _this select 3;
        [_text, _duration, _fadein] call (call compile _function);
    };

    if (_function == 'showHint') then {
        _text = _this select 1;
        [_text] call (call compile _function);
    };

};

GEF_fnc_serverCallTask = {
    _task = _this select 0;
    [] remoteExecCall [_task, 2];
};

GEF_fnc_serverCompleteTask = {
        _task = _this select 0;
        [_task, "Succeeded"] remoteExecCall ['FHQ_fnc_ttSetTaskState', 2];
};

GEF_fnc_serverAddBriefing = {
    _briefingReceive = _this select 0;
    _briefingTopic = _this select 1;
    _briefingText = _this select 2;
    _briefingText = [str _briefingText, '<img size="5" image="media\images\opcom.paa" />', ''] call CBA_fnc_replace;

    [call compile _briefingReceive,[_briefingTopic,_briefingText]] remoteExecCall ['FHQ_fnc_ttAddBriefing', 2];
};

GEF_fnc_addRespawn = {
    params ["_markerName","_respawnName"];

    [west, _markerName, _respawnName] call BIS_fnc_addRespawnPosition;
    _markerName setMarkerAlpha 0;
};

GEF_fnc_showOpcom = {
        _text = _this select 0;
        _text = _text splitString toString [9,13,10] joinString "";
        _text = '<img size="5" image="media\images\opcom.paa" /><t align="left" color="#ff0000">OPCOM:</t><br /><t align="left" color="#ff0000">------</t><br /><t align="left" color="#d7ae52">' + _text + '</t><t align="left" color="#ff0000"><br />------<br /><br />ENDE</t>';

        "radioBeepSound_DM" remoteExec ["playSound",[0,-2] select isDedicated];

        ['showHint', _text] call GEF_fnc_clientInfo;
        ['group p1', 'OPCOM Log', _text] call GEF_fnc_serverAddBriefing;

};
