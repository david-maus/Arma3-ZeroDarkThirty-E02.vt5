/*
[
    object,
    [
        ['David','Maus'],
        ['Oldenburg','Wynham-Nord 19B'],
        'media\images\IDCARD\faces\white\1.jpg'
    ]
] call GEF_fnc_idSystemCreateID;
*/

params ["_unit",'_details'];
_details params ["_name","_other","_unitPicture"];
_name params ["_unitName","_unitSurName"];
_other params ["_unitBirthplace","_unitAdress"];


_unit setVariable ["idName", _unitName, true];
_unit setVariable ["idSurName", _unitSurName, true];
_unit setVariable ["idBirthplace", _unitBirthplace, true];
_unit setVariable ["idAdress", _unitAdress, true];
_unit setVariable ["idPicture", _unitPicture, true];

_unit setVariable ["idChecked", false, true];
_unit setVariable ["isChecked", false, true];
_unit setVariable ["isSpecial", true, true];
