params ["_text","_duration","_fadein"];

if (hasInterface) then {
    [(_text call BIS_fnc_localize),-1,-1,_duration,_fadein,0,789] spawn BIS_fnc_dynamicText;
};
