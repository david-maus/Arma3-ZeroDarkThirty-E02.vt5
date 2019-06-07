params ["_height","_target"];

if (typeName _target == "STRING") then {

    if (_target == 'allPlayers') then {
        // height and allPlayers
        if (count (allPlayers select {(getPosATL (vehicle _x) select 2) > _height }) isEqualTo count allPlayers) then {
            true
        } else {
            false
        };
    } else {
        // height and anyPlayer
        if ({(getPosATL (vehicle _x) select 2) > _height } count allPlayers > 0) then {
            true
        } else {
            false
        };
    };

} else {

    // height and playerName
    if ((getPosATL (vehicle _target) select 2) > _height) then {
        true
    } else {
        false
    };

};
