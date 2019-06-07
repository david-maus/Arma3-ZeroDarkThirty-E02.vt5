params ["_text","_imageCode","_opcomName"];
_text = (_text call BIS_fnc_localize);
_text = _imageCode + '<t align="left" color="#ff0000">' + _opcomName + ':</t><br /><t align="left" color="#ff0000">------</t><br /><t align="left" color="#d7ae52">' + _text + '</t><t align="left" color="#ff0000"><br />------<br /><br />ENDE</t>';

if (hasInterface) then {
    hintSilent parseText _text;
};
