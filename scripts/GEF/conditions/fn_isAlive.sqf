params ["_target"];

if (typeName _target == "STRING") then {

    if (_target == 'allPlayers') then {
        // allPlayers
        if (count (allPlayers select {alive _x}) isEqualTo count allPlayers) then {
            true
        } else {
            false
        };
    } else {
        // anyPlayer
        if ({alive _x} count allPlayers > 0) then {
            true
        } else {
            false
        };
    };

} else {

    // playerName
    if (alive _target) then {
        true
    } else {
        false
    };

};
