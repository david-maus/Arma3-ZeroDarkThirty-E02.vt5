

if (!isServer) exitWith {};




    DeadAni = [
        "KIA_gunner_standup01",
        "KIA_passenger_boat_holdleft",
        "KIA_gunner_static_low01",
        "KIA_driver_boat01"
    ];




_deadBodyName = _this select 0;






{
  _unitName = vehicleVarName _x;

  if (_unitName find _deadBodyName >= 0 ) then {

      _x setCaptive true;
      _x setFormDir (floor random 360);
      _x setDamage 1;
      _maxtype = (count DeadAni);
      _ani = DeadAni select (floor random _maxtype);
      _x switchMove _ani;
      removeFromRemainsCollector [_x];


  };

} forEach allUnits;
