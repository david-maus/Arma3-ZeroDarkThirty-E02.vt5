if (!isServer) exitWith {};

playAI = {



_unit = _this select 0;
_moveData = _unit + '_move';
_fireData = _unit + '_fire';
_animData = _unit + '_anim';



if (isnil {call compile _fireData} && isnil {call compile _animData}) then {
    [call compile _unit, call compile _moveData] spawn BIS_fnc_UnitPlay;
}
else {

    {call compile _unit disableAI _x;} forEach ["ANIM","MOVE","FSM","TARGET","AUTOTARGET"];
    [call compile _unit, call compile _moveData] spawn BIS_fnc_UnitPlay;
    if (!isnil {call compile _fireData}) then {
        [call compile _unit, call compile _fireData, true] spawn HLF_fnc_infUnitPlayFiring;
    };

    [call compile _unit, call compile _animData, true] spawn HLF_fnc_infUnitPlayAnim;
};

};
