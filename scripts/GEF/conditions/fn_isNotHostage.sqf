params ["_target"];

if (typeName _target == "STRING") then {

    if (_target == 'allPlayers') then {
        // Vehicle and allPlayers
        if (count (allPlayers select {!(_x getVariable "Enh_isHostage") && (_x getVariable ["ace_captives_isHandcuffed",false])}) isEqualTo count allPlayers) then {
            true
        } else {
            false
        };
    } else {
        // Vehicle and anyPlayer
        if ({!(_x getVariable "Enh_isHostage") && (_x getVariable ["ace_captives_isHandcuffed",false]) } count allPlayers > 0) then {
            true
        } else {
            false
        };
    };

} else {

    // Vehicle and playerName
    if (!(_target getVariable "Enh_isHostage") && (_target getVariable ["ace_captives_isHandcuffed",false])) then {
        true
    } else {
        false
    };

};
