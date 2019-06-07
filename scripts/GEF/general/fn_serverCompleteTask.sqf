params ["_task"];

[_task, "Succeeded"] remoteExecCall ['FHQ_fnc_ttSetTaskState', 2];
