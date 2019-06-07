








if (!isServer) exitWith {};

_lightName = _this select 0;





{
  _unitName = vehicleVarName _x;

  if (_unitName find _lightName >= 0 ) then {

      _light = "#lightpoint" createVehicleLocal getPos _x;
      _light setLightBrightness 0.75;
      _light setLightAmbient [0.9, 0.12, 0.0];
      _light setLightColor [0.9, 0.12, 0.0];
      _light lightAttachObject [_x, [0,0,0]];


  };

} forEach (allMissionObjects "");
