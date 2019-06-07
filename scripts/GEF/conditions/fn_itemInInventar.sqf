params ["_objectClass","_target"];

if (typeName _target == "STRING") then {

    if (_target == 'allPlayers') then {
        // IteminInventar on allPlayers
        if (count (allPlayers select {(_objectClass in ( (vestItems _x) + (uniformItems _x) + (backpackItems _x) + (headgear _x) + (goggles _x) + (assignedItems _x) + (primaryWeaponItems _x) + (handgunItems _x) + (secondaryWeaponItems _x) + (items _x) ) ) }) isEqualTo count allPlayers) then {
            true
        } else {
            false
        };
    } else {
        // IteminInventar on anyPlayer
        if ({(_objectClass in ( (vestItems _x) + (uniformItems _x) + (backpackItems _x) + (headgear _x) + (goggles _x) + (assignedItems _x) + (primaryWeaponItems _x) + (handgunItems _x) + (secondaryWeaponItems _x) + (items _x) ) )  } count allPlayers > 0) then {
            true
        } else {
            false
        };
    };

} else {

    // IteminInventar on playerName
    if ((_objectClass in ( (vestItems _target) + (uniformItems _target) + (backpackItems _target) + (headgear _target) + (goggles _target) + (assignedItems _target) + (primaryWeaponItems _target) + (handgunItems _target) + (secondaryWeaponItems _target) + (items _target) ) ) ) then {
        true
    } else {
        false
    };

};
