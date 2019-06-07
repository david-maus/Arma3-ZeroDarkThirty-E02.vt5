params ["_object","_target"];

if (typeName _target == "STRING") then {

    if (_target == 'allPlayers') then {
        // Vehicle and allPlayers
        if (count (allPlayers select {_x in _object}) isEqualTo count allPlayers) then {
            true
        } else {
            false
        };
    } else {
        // Vehicle and anyPlayer
        if ({_x in _object } count allPlayers > 0) then {
            true
        } else {
            false
        };
    };

} else {

    // Vehicle and playerName
    if (_target in _object) then {
        true
    } else {
        false
    };

};
