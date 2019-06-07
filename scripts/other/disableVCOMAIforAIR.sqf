if (!isServer) exitWith {};










[

{
        {
        Driver _x setvariable ["NOAI",true];
        Driver _x setvariable ["VCOM_NOAI",true];
        Driver _x setvariable ["VCOM_NOPATHING_Unit",true];
        } foreach (vehicles select {_x isKindOf 'air'});

}, 1, []

] call CBA_fnc_addPerFrameHandler;
