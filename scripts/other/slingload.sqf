


if (!isServer) exitWith {};

scriptIsActive = false;

if (scriptIsActive) then
	{
	"Deine letzte Anforderung wird gerade bereitgestellt. Das angeforderte Vehikel wurde mit deiner aktuellen Anforderung geupdated. Bitte warte kurz nach einem Request." remoteExec ["hint"];
	}
	else
	{
	scriptIsActive = true;
	// pull class names from arguments passed through execVM
_heli_class = _this select 0; 


// marker positions
_spawn =  _this select 1;
_spawn = getMarkerPos _spawn;

_destinationMarker = _this select 2;
_destination = getMarkerPos _destinationMarker;

_despawn = _this select 3;
_despawn = getMarkerPos _despawn;



_cargo = _this select 4;
qwe = _cargo;
_cargo setFuel 0.1;
_cargo setVehicleAmmo 0;
_mass = getMass _cargo;




sleep 1;


// spawn invisble helipad object for heli to target
_helipad_obj = "Land_HelipadEmpty_F" createVehicle _destination;

	// spawn heli
	_heli_spawn = [_spawn, 0, _heli_class, West] call BIS_fnc_spawnVehicle;
	_heli = _heli_spawn select 0;
	

	_slingable = _heli canSlingLoad _cargo;


	if (_slingable) then
	{
	
	// safeguard it
	_heli setCaptive True;

	_heli allowDamage false;
	_cargo allowDamage false;
	// get heli's crew and assign waypoints	
	_heli_grp = group (driver _heli);
	_heli disableAI "AUTOCOMBAT";
	_heli_grp setVariable ["NOAI",1,false];
	_heli_grp setVariable ["VCOM_NOPATHING_Unit",1,false];
			
	_heli_grp setFormation "WEDGE";
    _heli_grp setBehaviour "CARELESS";
    _heli_grp setSpeedMode "NORMAL";
    _heli_grp setCombatMode "BLUE";
	_heli disableAI "FSM";
	_heli disableAI "TARGET";
	_heli disableAI "AUTOTARGET";
	_heli disableAI "AUTOCOMBAT";

	// delete all of heli crews' waypoints
	while {(count (wayPoints (_heli_grp) )) > 0} do {
		deleteWaypoint ((wayPoints (_heli_grp)) select 0);
		sleep 0.5;
	};
	

	_mvWP = _heli_grp addWaypoint [_spawn,1];
	_mvWP setWaypointType "HOOK";
	
	sleep 2;
	"Roger! BIGBIRD 2-1 inbound with your vehicle, ETA 8 minutes" remoteExec ["hint"];
	
	// tell heli to move to and attempt to land at the destination
	_mvWP = _heli_grp addWaypoint [_destination,2];




	_mvWP setWaypointType "UNHOOK";



	sleep 2;



	// tell heli to move to and attempt to land at the destination


	_mvWP = _heli_grp addWaypoint [_despawn,3];
	_mvWP setWaypointType "MOVE";

	waitUntil {((_heli distance _spawn) >= 200)};
	scriptIsActive = false;

	
	waitUntil {((_heli distance _despawn) <= 500)};
	_cargo allowDamage true;

    {deleteVehicle _x;}forEach crew _heli;deleteVehicle _heli;




	}
	else
	{
		"Das Vehicle ist nicht per Helikopter lieferbar. Paradrop! Achtung!" remoteExec ["hint"];
		{deleteVehicle _x;}forEach crew _heli;deleteVehicle _heli;
		_cargo allowDamage false;
		sleep 10;
		






_cargo setPos
[
	getMarkerPos "vehicleDelivery_Para" select 0,
	getMarkerPos "vehicleDelivery_Para" select 1,
	200
];

_chute= "B_Parachute_02_F" createVehicle (getPos _cargo);

_chute setPos (getPos _cargo);

_chute attachTo [_cargo, [0,0,0]];
sleep 1;
detach _chute;
_cargo attachTo [_chute, [0,0,0]];
_chute SetVelocity [0,0,0];
_cargo SetVelocity [0,0,0];
if (surfaceIsWater (getPos _cargo)) then {
	waitUntil 
	{
		((getPosASL _cargo) select 2) < 3
	};
	detach _cargo;
	sleep 2;
	_cargo setVectorUp [0,0,1];
} else {
	waitUntil 
	{
		((getPos _cargo) select 2) < 3
	};
	detach _cargo;
	waitUntil {isTouchingGround _cargo};
	_cargo SetVelocity [0,0,0]; 
	sleep 2;
	_cargo setVectorUp [0,0,1];
	_cargo allowDamage true;
};
















		scriptIsActive = false;
	};
	};











	