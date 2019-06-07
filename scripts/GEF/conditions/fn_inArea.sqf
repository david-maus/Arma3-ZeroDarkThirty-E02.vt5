params ["_area","_target"];

if (typeName _area == "STRING") then {
    if (typeName _target == "STRING") then {

        if (_target == 'allPlayers') then {
            // marker and allPlayers
            if (count (allPlayers select {(vehicle _x) inArea _area}) isEqualTo count allPlayers) then {
                true
            } else {
                false
            };
        } else {
            // marker and anyPlayer
            if ({(vehicle _x) inArea _area} count allPlayers > 0) then {
                true
            } else {
                false
            };
        };

    } else {

        // marker and playerName
        if ((vehicle _target) inArea _area) then {
            true
        } else {
            false
        };

    };
} else {
    if (typeName _target == "STRING") then {

        if (_target == 'allPlayers') then {
            // trigger and allPlayers
            if (count (allPlayers select {(vehicle _x) inArea _area}) isEqualTo count allPlayers) then {
                true
            } else {
                false
            };
        } else {
            // trigger and anyPlayer
            if ({(vehicle _x) inArea _area} count allPlayers > 0) then {
                true
            } else {
                false
            };
        };

    } else {
        // trigger and playerName
        if ((vehicle _target) inArea _area) then {
            true
        } else {
            false
        };
    };
};
