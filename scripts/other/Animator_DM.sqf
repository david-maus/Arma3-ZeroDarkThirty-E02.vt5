if !(isServer) exitWith {};
/*
    STAND1
    STAND2
    STAND_U1
    STAND_U2
    STAND_U3
    WATCH
    WATCH2
    GUARD
    LISTEN_BRIEFING
    LEAN_ON_TABLE
    LEAN
    SIT_AT_TABLE
    SIT1
    SIT
    SIT3
    SIT_U1
    SIT_U2
    SIT_U3
    SIT_HIGH1
    SIT_HIGH
    SIT_LOW
    SIT_LOW_U
    SIT_SAD1
    SIT_SAD2
    KNEEL
    REPAIR_VEH_PRONE
    REPAIR_VEH_KNEEL
    REPAIR_VEH_STAND
    PRONE_INJURED_U1
    PRONE_INJURED_U2
    PRONE_INJURED
    KNEEL_TREAT
    KNEEL_TREAT2
    BRIEFING
    BRIEFING_POINT_LEFT
    BRIEFING_POINT_RIGHT
    BRIEFING_POINT_TABLE

    [this, "WATCH", "ASIS"] execVM "scripts\other\Animator_DM.sqf"
*/

_unit = _this select 0;
_anim = _this select 1;
_gear = _this select 2;



[[_unit,_anim,_gear],BIS_fnc_ambientAnim ] remoteExec ["call"];

[_unit, _anim] spawn {
    _unit = _this select 0;
    _anim = _this select 1;
    if (_anim find 'INJURED' >= 0 ) then {
        waitUntil {!alive _unit};
        _unit call BIS_fnc_ambientAnim__terminate;
    } else {
        waitUntil {behaviour _unit == "combat"};
        _unit call BIS_fnc_ambientAnim__terminate;
    };

};
