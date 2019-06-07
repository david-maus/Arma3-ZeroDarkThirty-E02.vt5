
if (!isServer) exitWith {};


_unitName = _this select 0;
_call = _this select 1;
_type = _this select 2;
_slingload = _this select 3;
_container = _this select 4;
_artyHE = _this select 5;
_artySMOKE = _this select 6;
_artyGUIDED = _this select 7;
_artyROCKETS = _this select 8;



if (_type == "CAS") then

	{


	_unitName setvariable ["CS_TYPE","CAS"];
	_unitName setvariable ["CS_CALLSIGN",_call];
	_unitName setvariable ["CS_HEIGHT",_height];
	_unitName setVariable ["CS_SLINGLOADING", _slingload];



	}

if (_type == "TRANSPORT") then

	{

_unitName setvariable ["CS_TYPE","TRANSPORT"];
_unitName setvariable ["CS_CALLSIGN",_call];
_unitName setvariable ["CS_HEIGHT",_height];
_unitName setVariable ["CS_SLINGLOADING", _slingload];
_unitName setVariable ["CS_CONTAINERS",_container];

	}


if (_type == "HYBRID") then

	{

_unitName setvariable ["CS_TYPE","HYBRID"];
_unitName setvariable ["CS_CALLSIGN",_call];
_unitName setvariable ["CS_HEIGHT",_height];
_unitName setVariable ["CS_SLINGLOADING", _slingload];
_unitName setVariable ["CS_CONTAINERS",_container];

	}



if (_type == "ARTY") then

	{

_unitName setvariable ["CS_TYPE","ARTY"];
_unitName setvariable ["CS_CALLSIGN",_call];
_unitName setvariable ["CS_HEIGHT",_height];
_unitName setvariable ["CS_ARTILLERY_HE",_artyHE];
_unitName setvariable ["CS_ARTILLERY_SMOKE",_artySMOKE];
_unitName setvariable ["CS_ARTILLERY_GUIDED",_artyGUIDED];
_unitName setvariable ["CS_ARTILLERY_ROCKETS",_artyROCKETS];

	}
