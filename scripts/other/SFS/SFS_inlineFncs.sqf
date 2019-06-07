/* //////////////////////////////////////////////
Author: J.Shock

File: SFS_inlineFncs.sqf

Description: Contains all the functions used in the Simple Flare Script.

Parameters: None.

Return: None

**DISCLAIMER**
Do not remove the header from this file. Any reproduced portions of this code
must include credits to the author (J.Shock).

*///////////////////////////////////////////////




////////////////
//JSHK_fnc_flare
////////////////

JSHK_fnc_flare =
{
	private ["_type","_height","_cont","_color","_pos"];
	_type = (_this select 0);
	_height = (_this select 1);
	_cont = (_this select 2);
	_color = [(_this select 3)] call JSHK_fnc_color;


	if ((_height < 100) && {_type != 1}) then
	{
		_height = 100;
		diag_log "User Defined variable: _height >> 'SFS\SFS_init.sqf' must be greater than 100m";
	};

	_pos = [(_this select 4),_height] call JSHK_fnc_typeInput;

	if (_type isEqualTo 0) then
	{
		[_height,_cont,_color,_pos] call JSHK_fnc_aerial;
	}
	else
	{
		[_cont,_color,_pos] call JSHK_fnc_ground;
	};

};


////////////////
//JSHK_fnc_aerial
////////////////

JSHK_fnc_aerial =
{
	private ["_height", "_color", "_pos","_numFlares"];
	_height = (_this select 0);
	_numFlares = (_this select 1);
	_color = (_this select 2);
	_pos = (_this select 3);

	if (_numFlares isEqualTo -1) then
	{
		_flareForever = [_height,_color,_pos] spawn
		{
				private ["_height", "_color", "_pos"];
				_height = (_this select 0);
				_color = (_this select 1);
				_pos = (_this select 2);

				_JSHK_flare = _color createVehicle _pos;
				_JSHK_flare setVelocity [0,0,-1];

				while {true} do
				{
					waitUntil {isNull _JSHK_flare || !alive _JSHK_flare};
					_JSHK_flare = _color createVehicle _pos;
					_JSHK_flare setVelocity [0,0,-1];
				};

		};
	}
	else
	{
		if (_numFlares > 0) then
		{
			_flareLimited = [_height,_color,_pos,_numFlares] spawn
			{
					private ["_height","_color","_pos","_numFlares"];
					_height = (_this select 0);
					_color = (_this select 1);
					_pos = (_this select 2);
					_numFlares = (_this select 3);

					for "_i" from 1 to _numFlares step 1 do
					{
						_JSHK_flare = _color createVehicle _pos;
						_JSHK_flare setVelocity [0,0,-1];
						waitUntil {isNull _JSHK_flare || !alive _JSHK_flare};
					};

			};
		}
		else
		{
			diag_log "Variable _numFlares <= 0 >> JSHK_fnc_aerial, no flares spawned.";
		};
	};
};


////////////////
//JSHK_fnc_ground
////////////////

JSHK_fnc_ground =
{
	private ["_color","_pos"];
	_color = (_this select 1);
	_pos = (_this select 2);

	if ((_this select 0) isEqualTo -1) then
	{
		_flareForever = [_color,_pos] spawn
		{
			_color = (_this select 0);
			_pos = (_this select 1);

			while {true} do
			{
				_JSHK_flare = _color createVehicle _pos;
				sleep 10;
				_JSHK_flare = _color createVehicle _pos;
			};
		};
	}
	else
	{
		_JSHK_flare = _color createVehicle _pos;
	};


};


////////////////
//JSHK_fnc_color
////////////////

JSHK_fnc_color =
{
	private "_color";
	_color = toLower(_this select 0);

	switch (_color) do
	{
		case ("white"): { _color = "F_40mm_white"; };
		case ("red"): { _color = "F_40mm_red"; };
		case ("green"): { _color = "F_40mm_green"; };
		case ("yellow"): { _color = "F_40mm_yellow"; };
		case ("ir"): { _color = "F_40mm_CIR"; };
		default { diag_log "Undefined or unknown variable: _color >> JSHK_fnc_color"; };
	};

_color;

};


////////////////
//JSHK_fnc_typeInput
////////////////

JSHK_fnc_typeInput =
{
	private ["_input","_height"];
	_input = (_this select 0);
	_height = (_this select 1);

	switch (typeName _input) do
	{
		case "ARRAY": { _input = [_input,_height] call JSHK_fnc_modelPos; };
		case "OBJECT": { _input = [getPosATL _input,_height] call JSHK_fnc_modelPos; };
		case "STRING": { _input = [getMarkerPos _input,_height] call JSHK_fnc_modelPos; };
		default { diag_log "Undefined or unknown variable: _input >> JSHK_fnc_typeInput"; };
	};
_input;
};


////////////////
//JSHK_fnc_modelPos
////////////////

JSHK_fnc_modelPos =
{
	private ["_input","_pos","_height","_finalPos"];
	_input = (_this select 0);
	_height = (_this select 1);

	if (_height isEqualTo 0) exitWith { _input; };

	_addHeight =
	{
		private ["_input","_newHeight","_return"];
		_input = (_this select 0);
		_height = (_this select 1);

		_newHeight = ((_input select 2) + _height);

		_return = [[(_input select 0),(_input select 1),_newHeight]] call _placeHolderObject;

		_return;
	};

	_placeHolderObject =
	{
		private ["_obj","_pos"];
		_pos = (_this select 0);
		_obj = "UserTexture1m_F" createVehicle _pos;

		_obj;
	};
	_finalPos = [_input,_height] call _addHeight modelToWorld [0,0,_height];

_finalPos;
};
