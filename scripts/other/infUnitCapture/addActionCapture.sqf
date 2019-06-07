if (!isDedicated && hasInterface) then
{
player addAction ["<t color='#FF0000'>Capture Me - Inf</t>", {
    [player, 60, 20, true] spawn HLF_fnc_infUnitCapture;
}];
player addAction ["<t color='#FF0000'>Capture Me - Veh</t>", {
    [(vehicle player), 60] spawn BIS_fnc_UnitCapture;
}];
};
