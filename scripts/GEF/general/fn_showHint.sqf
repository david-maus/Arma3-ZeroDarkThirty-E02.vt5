params ["_text"];

if (hasInterface) then {
    hintSilent parseText (_text call BIS_fnc_localize);
};
