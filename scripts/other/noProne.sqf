if !(isServer) exitWith {};

PreventProne = [
"AmovPercMstpSlowWrflDnon_AmovPpneMstpSrasWrflDnon",
"AmovPercMstpSrasWrflDnon_AmovPpneMstpSrasWrflDnon",
"amovppnemstpsraswrfldnon",
"AmovPknlMstpSrasWrflDnon_AmovPpneMstpSrasWrflDnon",
"amovppnemstpsraswpstdnon"
];

sleep 1;






if ((_this select 0) == 1) then {
    //code


["noProneEH", "oneachframe", {
    {
        _leader = leader _x;


        if (side _leader == EAST || side _leader == independent) then {

            {
                _unit = _x;


                    call {
                    if (stance _unit == "PRONE") exitWith { _unit setUnitPos "MIDDLE"};
                    _unit setUnitPos "AUTO";
                    };
            } forEach units group _leader;
        };
    } count allGroups;
}] call bis_fnc_addStackedEventHandler;


};

if ((_this select 0) == 2) then {

    {
        _leader = leader _x;

        if (side _leader == EAST || side _leader == independent) then {

            {
                _unit = _x;


                    call {
                    _unit setUnitPos "UP";
                    };


            } forEach units group _leader;
        };
    } count allGroups;



};

if ((_this select 0) == 3) then {

    {
        _leader = leader _x;


        if (side _leader == EAST || side _leader == independent) then {

            {
                _unit = _x;

                      _unit addEventHandler ["AnimChanged", {
                        params ["_unit", "_anim"];
                        if ((_anim in PreventProne) OR (stance _unit == "PRONE")) then {
                            _unit setunitPos "middle"
                        };
                      }];
            } forEach units group _leader;
        };
    } forEach allGroups;



};
