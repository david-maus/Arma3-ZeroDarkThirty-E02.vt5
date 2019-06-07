params ["_filter","_taskId","_taskParent","_description","_title","_shortTitle","_target","_initial","_type"];

if (_taskParent == "") then {
    [
    _filter,

        [
        _taskId,
        _description,
        _title,
        _shortTitle,
        _target,
        _initial,
        _type
        ]

    ] call FHQ_fnc_ttAddTasks;
} else {
    [
    _filter,

        [
        [_taskId, _taskParent],
        _description,
        _title,
        _shortTitle,
        _target,
        _initial,
        _type
        ]

    ] call FHQ_fnc_ttAddTasks;
};
