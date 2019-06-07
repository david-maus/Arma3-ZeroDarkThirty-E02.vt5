params ["_textName","_text"];

[_textName,_text] spawn
{
    params ["_textName","_text"];
   _dialog = [_text, _textName, true, false] call BIS_fnc_guiMessage;

}
