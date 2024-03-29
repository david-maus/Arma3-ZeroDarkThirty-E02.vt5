
/*
	File: fn_UnitCaptureFiring.sqf
	Author: Martin [Dram] Melicharek

	Description:
	Records weapon fire data of input unit over a specified period of time.
	Pressing the ESC key, the duration ending, or the unit dying ends the
	recording.

	Parameters:
	Unit			- Unit to capture weapon fire data from
	Duration		- Duration to capture for
	OPT:StartTime	- OPTIONAL: Starting time offset for the frame time

	Copies to clipboard:
	Array in format [FrameTime, WeaponType, Target(If AI-controlled)] for each frame

	Input Example:
	a) [BIS_Vehicle, 50, 10] spawn BIS_fnc_UnitCaptureFiring;
			Which would capture data from a unit named BIS_Vehicle, and would capture for 50 seconds.
			Frame time offset would be 10 seconds.

	Output Example:
	a) [[2.135,"GAU8","<NULL-object>"],[2.157,"GAU8","<NULL-object>"]]
			The above output has 2 frames.

	b) [[2.135,"GAU8","<NULL-object>"]]
			The above output has 1 frame.
*/

private ["_unit","_duration","_timeStart","_timeFinal","_timeCur","_unitTarget","_capturedAnimData","_frameTime","_display","_timeOffset"];

_unit = _this select 0;
_duration = _this select 1;
_timeStart = time;
_timeFinal = _timeStart + _duration;
_timeCur = time - _timeStart;

_timeOffset = 0;
if (count _this > 2) then
{
	if ((_this select 2) >= 0) then
	{
		_timeOffset = (_this select 2);
	};
};

BIS_EndCapture = false;
BIS_Capture_AnimChanged = false;
BIS_ClipboardCopy_Anim = false;
BIS_ClipboardCopy_Move = false; // Here for compatibility with the Movement Capture script
BIS_Capture_AnimClass = "";
_unitTarget = objNull;
_capturedAnimData = [];
_frameTime = 0;

_unit addEventHandler ["AnimStateChanged", {BIS_Capture_AnimChanged = true; BIS_Capture_AnimClass = (_this select 1);}];
_unit addEventHandler ["Killed", {(_this select 0) enablesimulation false;}];
{_x addEventHandler ["HandleDamage", {0}];} forEach (crew _unit);

disableSerialization;
_display = findDisplay 46;

// Stops Capture after pressing the ESC key
_display displaySetEventHandler ["KeyDown", "if ((_this select 1) == 1) then {BIS_EndCapture = true};"];

while { ((time <= _timeFinal) && (alive _unit) && !(BIS_EndCapture)) } do
{
	if (BIS_Capture_AnimChanged) then
	{
		BIS_Capture_AnimChanged = false;
		_timeCur = time - _timeStart;
		_capturedAnimData = _capturedAnimData + [[(_timeCur + _timeOffset), BIS_Capture_AnimClass]];
	};
	_frameTime = time;
	waitUntil {_frameTime < time};
};

_unit enablesimulation false; // Freeze the unit

// Copies data to clipboard after pressing the F2 key
_display displaySetEventHandler ["KeyDown", "if ((_this select 1) == 61) then {BIS_ClipboardCopy_Anim = true}; if ((_this select 1) == 60) then {BIS_ClipboardCopy_Fire = true}; if ((_this select 1) == 59) then {BIS_ClipboardCopy_Move = true};"];

waitUntil {BIS_ClipboardCopy_Anim};

copyToClipBoard str _capturedAnimData;

hint format ["Unit's Animation Data copied to clipboard..."];