
if (!isServer) exitWith {};

_nvgofflightson=true;

while {_nvgofflightson} do {

{

    if(((side _x == west) || (side _x == independent)) && ((leader group _x) != _x)) then { // if you're a baddie and not your own group leader

        _x unassignItem "NVGoggles";

        _x unassignItem "NVGoggles_OPFOR";

        _x removeItem "NVGoggles";

        _x removeItem "NVGoggles_OPFOR";

        _x removePrimaryWeaponItem "acc_pointer_ir";

        _x removePrimaryWeaponItem "acc_pointer_ir_OPFOR";

		_x addPrimaryWeaponItem "acc_flashlight";

		_x addPrimaryWeaponItem "acc_flashlight_OPFOR";

		_x enableGunLights "ForceOn";

    };

} foreach (allUnits);

sleep 30;

};
