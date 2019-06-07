params ["_textName","_code","_object","_delete","_deleteAction",["_parameters",[]]];

_object = _object;
_condition = "true";
_deleteCode = "";
_deleteActionCode = "";

if (typeName _object == 'STRING') then {
    _condition = "_target == _this || _target == vehicle _this";
    _object = player;
} else {
    _condition = "true";
    _object = _object;
};

if (_delete) then {
    _deleteCode = "deleteVehicle _target;";
} else {
    _deleteCode = "";
};

if (_deleteAction) then {
    _deleteActionCode = "_target removeAction _ID;";
} else {
    _deleteActionCode = "";
};


[_object,
[_textName,
{
    params ["_target","_caller","_ID","_params"];
    _code = _params select 0;
    _deleteCode = _params select 1;
    _deleteActionCode = _params select 2;
    _parameters = _params select 3;
    call _code;
    call compile _deleteCode;
    call compile _deleteActionCode;
},[_code,_deleteCode,_deleteActionCode,_parameters],1.5,true,true,"",_condition,4,false,"",""
]
] remoteExec ["addAction", [0,-2] select isDedicated, _object];
