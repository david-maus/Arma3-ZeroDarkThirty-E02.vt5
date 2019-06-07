params ["_target"];

if (typeName _target == "STRING") then {

    if (_target == 'allPlayers') then {
        // Vehicle and allPlayers
        if (count (allPlayers select {!(isNull objectParent _x)}) isEqualTo count allPlayers) then {
            true
        } else {
            false
        };
    } else {
        // Vehicle and anyPlayer
        if ({!(isNull objectParent _x) } count allPlayers > 0) then {
            true
        } else {
            false
        };
    };

} else {

    // Vehicle and playerName
    if (!(isNull objectParent _target)) then {
        true
    } else {
        false
    };

};
