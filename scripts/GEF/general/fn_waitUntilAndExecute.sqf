params ["_conditionAr","_codeAr"];
_conditionAr params ["_condition","_requiredTask"];
_codeAr params ["_taskToComplete","_nextTask","_taskAssign","_codeAfter"];

_codeAfter = _codeAfter splitString toString [9,13,10] joinString "";

_taskToCompleteCode = "['" + _taskToComplete + "', 'Succeeded'] call FHQ_fnc_ttSetTaskState;";
_nextTaskCode = "call " + _nextTask + ";";
_taskAssignCode = "['" + _taskAssign + "', 'assigned'] call FHQ_fnc_ttSetTaskState;";
_codeAfterCode = "[] spawn {" + _codeAfter + "};";
_codeExec = "";

_requiredTaskCode = "['" + _requiredTask + "'] call FHQ_fnc_ttIsTaskCompleted";
_conditionFinal = "";

if (_condition == "" && _requiredTask == "") then {
    // No Condition

} else {

    if (!(_condition == "")) then {
        _conditionFinal = _condition;

        if (!(_requiredTask == "")) then {
            _conditionFinal = _condition + ' && ' + _requiredTaskCode;
        };
    } else {
        _conditionFinal = _requiredTaskCode;
    };

    if (_taskToComplete == "" && _nextTask == "" && _taskAssign == "" && _codeAfter == "") then {
        //No Execute

    } else {

        if (_taskToComplete == "") then {
            _taskToCompleteCode = "";
        };
        if (_nextTask == "") then {
            _nextTaskCode = "";
        };
        if (_taskAssign == "") then {
            _taskAssignCode = "";
        };

        if (_codeAfter == "") then {
            // No Code after

            _codeExec = _taskToCompleteCode + _nextTaskCode + _taskAssignCode;
        } else {
            _codeExec = _taskToCompleteCode + _nextTaskCode + _taskAssignCode + _codeAfterCode;
        };


        [

            {
                params ["_conditionFinal","_codeExec"];
                call compile (_conditionFinal)
            },

            {
                params ["_conditionFinal","_codeExec"];
                call compile _codeExec
            },

            [_conditionFinal,_codeExec]

        ] call CBA_fnc_waitUntilAndExecute;


    };

};
