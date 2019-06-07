params ["_distance","_object","_target"];

if (typeName _target == "STRING") then {

    if (_target == 'allPlayers') then {
        // Distance and allPlayers
        if (count (allPlayers select {(vehicle _x) distance getPos _object < _distance }) isEqualTo count allPlayers) then {
            true
        } else {
            false
        };
    } else {
        // Distance and anyPlayer
        if ({(vehicle _x) distance getPos _object < _distance } count allPlayers > 0) then {
            true
        } else {
            false
        };
    };

} else {

    // Distance and playerName
    if ((vehicle _target) distance getPos _object < _distance) then {
        true
    } else {
        false
    };

};
