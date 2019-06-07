params [["_opcomName","OPCOM"],"_text",["_filter","west"],["_briefingName","OPCOM LOG"],["_showImage",true]];

_imageCode = '';

if (_showImage) then {
    _imageCode = '<img size="5" image="media\images\opcom.paa" />';
};
//_text = _text splitString toString [9,13,10] joinString "";
//_text = _imageCode + '<t align="left" color="#ff0000">' + _opcomName + ':</t><br /><t align="left" color="#ff0000">------</t><br /><t align="left" color="#d7ae52">' + _text + '</t><t align="left" color="#ff0000"><br />------<br /><br />ENDE</t>';

"radioBeepSound_DM" remoteExec ["playSound",[0,-2] select isDedicated];

[_text,_imageCode,_opcomName] remoteExec ["GEF_fnc_showOpcomLocal",[0,-2] select isDedicated];
[_filter, _briefingName, _text] call GEF_fnc_serverAddBriefing;
