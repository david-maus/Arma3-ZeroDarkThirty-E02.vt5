/* //////////////////////////////////////////////
Author: J.Shock

File: SFS_init.sqf

Description: Passes arguments and initializes flare functions.

Parameters: 
		1- Position for flare: (string(marker name)/position array/object) (default: objNull)
		2- Type of flare ("AERIAL", "GROUND"): (string) (default: "AERIAL")
		3- Height of flare (for AERIAL type only): (scalar) (default: 100)
		4- Endless flare(s) (-1: infinite, 0: none, >0: defined number): (scalar) (default: 1)
		5- Color of flare ("white", "red", "yellow", "green", "ir"): (string) (default: "white")

Return: None

**DISCLAIMER**
Do not remove the header from this file. Any reproduced portions of this code
must include credits to the author (J.Shock).

*///////////////////////////////////////////////

//null = [player,"ground",0,0,"white"] execVM "SFS\SFS_init.sqf";
//null = ["flareMarker","aerial",150,1,"yellow"] execVM "SFS\SFS_init.sqf";
//null = [[1770,5540,5.5],"aerial",150,-1,"red"] execVM "SFS\SFS_init.sqf";


_pos = [_this, 0, objNull, [[], "", objNull], [3]] call BIS_fnc_param;
_typeFlare = toLower([_this, 1, "aerial", [""]] call BIS_fnc_param);
_height = [_this, 2, 100, [0]] call BIS_fnc_param;
_continuous = [_this, 3, 1, [0]] call BIS_fnc_param;
_color = [_this, 4, "white", [""]] call BIS_fnc_param;


if (_typeFlare isEqualTo "aerial") then 
{
	[0,_height,_continuous,_color,_pos] call JSHK_fnc_flare;
}
else
{
	if (_typeFlare isEqualTo "ground") then
	{
		[1,0,_continuous,_color,_pos] call JSHK_fnc_flare;
	}
	else
	{
		diag_log "Undefined or unknown variable: _typeFlare >> 'SFS\SFS_init.sqf'";
	};
};