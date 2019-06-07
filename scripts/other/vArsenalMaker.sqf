

if (!isServer) exitWith {};

_arsenalName = _this select 0;





{
  _unitName = vehicleVarName _x;

  if (_unitName find _arsenalName >= 0 ) then {

      // _x addaction ["Open Virtual Arsenal", { ["Open",true] call BIS_fnc_arsenal; }];
      [_x, true] call ace_arsenal_fnc_initBox;


  };

} forEach (allMissionObjects "");
