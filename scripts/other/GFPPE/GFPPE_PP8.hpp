class GFPPE_8
{
	idd = 77008;
	movingenable = true;
	//lights
	onLoad = "openPP = 8;GFPPE_debug1 = 8;null = [_this] execvm 'scripts\other\GFPPE\GFPPE_open.sqf'";
	class controlsBackground
	{
		class IGUIBack_2200: IGUIBack
		{
		idc = 2200;
		x = 0 * GUI_GRID_W + GUI_GRID_X;
		y = 0 * GUI_GRID_H + GUI_GRID_Y;
		w = 31 * GUI_GRID_W;
		h = 27.5 * GUI_GRID_H;
		moving = 1;
		};
	};
	
	class Controls
	{

class GFPPE_openPP1: RscButton
{
	idc = 1601;
	text = "RadialBlur"; 
	onButtonClick = "closeDialog 77008;openPP = 1;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
	x = 2 * GUI_GRID_W + GUI_GRID_X;
	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	sizeEx = 0.8 * GUI_GRID_H;
};
class GFPPE_openPP2: RscButton
{
	idc = 1602;
	text = "ChromAberration"; 
	onButtonClick = "closeDialog 77008;openPP = 2;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
	x = 2 * GUI_GRID_W + GUI_GRID_X;
	y = 7 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	sizeEx = 0.8 * GUI_GRID_H;
};
class GFPPE_openPP3: RscButton
{
	idc = 1603;
	text = "WetDistortion"; 
	onButtonClick = "closeDialog 77008;openPP = 3;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
	x = 2 * GUI_GRID_W + GUI_GRID_X;
	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	sizeEx = 0.8 * GUI_GRID_H;
};
class GFPPE_openPP4: RscButton
{
	idc = 1604;
	text = "ColorCorrections"; 
	onButtonClick = "closeDialog 77008;openPP = 4;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
	x = 2 * GUI_GRID_W + GUI_GRID_X;
	y = 10 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	sizeEx = 0.8 * GUI_GRID_H;
};
class GFPPE_openPP5: RscButton
{
	idc = 1605;
	text = "DynamicBlur"; 
	onButtonClick = "closeDialog 77008;openPP = 5;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
	x = 2 * GUI_GRID_W + GUI_GRID_X;
	y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	sizeEx = 0.8 * GUI_GRID_H;
};
class GFPPE_openPP6: RscButton
{
	idc = 1606;
	text = "FilmGrain"; 
	onButtonClick = "closeDialog 77008;openPP = 6;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
	x = 2 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	sizeEx = 0.8 * GUI_GRID_H;
};
class GFPPE_openPP7: RscButton
{
	idc = 1607;
	text = "ColorInversion"; 
	onButtonClick = "closeDialog 77008;openPP = 7;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
	x = 2 * GUI_GRID_W + GUI_GRID_X;
	y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	sizeEx = 0.8 * GUI_GRID_H;
};
class GFPPE_openPP8: RscButton
{
	idc = 1608;
	text = "Settings"; 
	colorBackground[] = COLOR_HIGHORANGE;
	colorFocused[] = COLOR_HIGHORANGE;
	x = 2 * GUI_GRID_W + GUI_GRID_X;
	y = 16 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	sizeEx = 0.8 * GUI_GRID_H;
};
class GFPPE_PP1Sel: RscCheckbox
{
	idc = 2801;
	onCheckedChanged = "PP_1Enabled = !PP_1Enabled;";
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 1 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP2Sel: RscCheckbox
{
	idc = 2802;
	onCheckedChanged = "PP_2Enabled = !PP_2Enabled;";
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 7 * GUI_GRID_H + GUI_GRID_Y;
	w = 1 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP3Sel: RscCheckbox
{
	idc = 2803;
	onCheckedChanged = "PP_3Enabled = !PP_3Enabled;";
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 1 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP4Sel: RscCheckbox
{
	idc = 2804;
	onCheckedChanged = "PP_4Enabled = !PP_4Enabled;";
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 10 * GUI_GRID_H + GUI_GRID_Y;
	w = 1 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP5Sel: RscCheckbox
{
	idc = 2805;
	onCheckedChanged = "PP_5Enabled = !PP_5Enabled;";
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 1 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP6Sel: RscCheckbox
{
	idc = 2806;
	onCheckedChanged = "PP_6Enabled = !PP_6Enabled;";
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 1 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP7Sel: RscCheckbox
{
	idc = 2807;
	onCheckedChanged = "PP_7Enabled = !PP_7Enabled;";
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 1 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
// settings +
class PP_priorTitle: RscText
{
	idc = 1007;
	text = "Effect priorities"; 
	x = 9.5 * GUI_GRID_W + GUI_GRID_X;
	y = 2 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 0.5 * GUI_GRID_H;
	SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	tooltip = "Use different values on each."; 
};
class GFPPE_PP0Tit: RscText
{
	idc = 1000;
	text = "Radial Blur"; 
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 3.1 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 0.5 * GUI_GRID_H;
	SizeEx = "(((((safezoneW / safezoneH) min 1.0) / 1.2) / 25) * 1)";
};
class GFPPE_PP1Tit: RscText
{
	idc = 1001;
	text = "ChromaticAberration"; 
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 4.6 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 0.5 * GUI_GRID_H;
	SizeEx = "(((((safezoneW / safezoneH) min 1.0) / 1.2) / 25) * 1)";
};
class GFPPE_PP2Tit: RscText
{
	idc = 1002;
	text = "Wetdistortion"; 
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 6.1 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 0.5 * GUI_GRID_H;
	SizeEx = "(((((safezoneW / safezoneH) min 1.0) / 1.2) / 25) * 1)";
};
class GFPPE_PP3Tit: RscText
{
	idc = 1004;
	text = "ColorCorrections"; 
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 7.6 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 0.5 * GUI_GRID_H;
	SizeEx = "(((((safezoneW / safezoneH) min 1.0) / 1.2) / 25) * 1)";
};
class GFPPE_PP4Tit: RscText
{
	idc = 1003;
	text = "DynamicBlur"; 
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 9.1 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 0.5 * GUI_GRID_H;
	SizeEx = "(((((safezoneW / safezoneH) min 1.0) / 1.2) / 25) * 1)";
};
class GFPPE_PP5Tit: RscText
{
	idc = 1005;
	text = "FilmGrain"; 
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 10.6 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 0.5 * GUI_GRID_H;
	SizeEx = "(((((safezoneW / safezoneH) min 1.0) / 1.2) / 25) * 1)";
};
class GFPPE_PP6Tit: RscText
{
	idc = 1006;
	text = "ColorInversion"; 
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 12.1 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 0.5 * GUI_GRID_H;
	SizeEx = "(((((safezoneW / safezoneH) min 1.0) / 1.2) / 25) * 1)";
};
class GFPPE_PP0EB: RscEdit
{
	idc = 1400;
	onKeyDown = "";
	x = 18 * GUI_GRID_W + GUI_GRID_X;
	y = 3 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP1EB: RscEdit
{
	idc = 1401;
	onKeyDown = "";
	x = 18 * GUI_GRID_W + GUI_GRID_X;
	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP2EB: RscEdit
{
	idc = 1402;
	onKeyDown = "";
	x = 18 * GUI_GRID_W + GUI_GRID_X;
	y = 6 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP3EB: RscEdit
{
	idc = 1403;
	onKeyDown = "";
	x = 18 * GUI_GRID_W + GUI_GRID_X;
	y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};

class RscEdit_1404: RscEdit
{
	idc = 1404;
	onKeyDown = "";
	x = 18 * GUI_GRID_W + GUI_GRID_X;
	y = 9 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};

class RscEdit_1405: RscEdit
{
	idc = 1405;
	onKeyDown = "";
	x = 18 * GUI_GRID_W + GUI_GRID_X;
	y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};

class RscEdit_1406: RscEdit
{
	idc = 1406;
	onKeyDown = "";
	x = 18 * GUI_GRID_W + GUI_GRID_X;
	y = 12 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};

class PP_UpdatePriorB: RscButton
{
	idc = 1609;
	onButtonClick = "null = [_this] spawn GFPPE_updatePriority;";
	text = "Update"; 
	SizeEx = "(((((safezoneW / safezoneH) min 1.0) / 1.2) / 25) * 1)";
	x = 17 * GUI_GRID_W + GUI_GRID_X;
	y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};

class GFFPE_defaults: GFFPE_defaultsRscButton
{
	text = "Defaults"; 
	tooltip = "Set priorities to default values.";
	onButtonClick = "null = [_this] spawn GFPPE_setdefaults;";
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	SizeEx = "(((((safezoneW / safezoneH) min 1.0) / 1.2) / 25) * 1)";
};

// ///////////////////////////////// WEATHER
class PP_weatherTitle: RscText
{
	idc = 1008;
	text = "Weather & time"; 
	x = 9.5 * GUI_GRID_W + GUI_GRID_X;
	y = 16.0 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 0.5 * GUI_GRID_H;
	SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	//tooltip = ""; 
};

class GFPPE_W0Tit: RscText
{
	idc = 1009;
	text = "Daytime"; 
	//tooltip = "Set time time of day";
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 17.0 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
	SizeEx = "(((((safezoneW / safezoneH) min 1.0) / 1.2) / 25) * 1)";
};

class GFPPE_W2Tit: RscText
{
	idc = 1011;
	text = "Year"; 
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
	
};

class EditYear: RscEdit 
{
	idc = 1410;
	onKeyDown = "null = [_this,2] call GFPPE_ChangeTime";
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};

class GFPPE_W3Tit: RscText
{
	idc = 1012;
	text = "Month"; 
	x = 13.3 * GUI_GRID_W + GUI_GRID_X;
	y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};

class EditMonth: RscEdit 
{
	idc = 1411;
	onKeyDown = "null = [_this,2] call GFPPE_ChangeTime";
	x = 13.5 * GUI_GRID_W + GUI_GRID_X;
	y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.0 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};

class GFPPE_W4Tit: RscText
{
	idc = 1013;
	text = "Day"; 
	x = 16.5 * GUI_GRID_W + GUI_GRID_X;
	y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};

class EditDay: RscEdit 
{
	idc = 1412;
	onKeyDown = "null = [_this,2] call GFPPE_ChangeTime";
	x = 16.5 * GUI_GRID_W + GUI_GRID_X;
	y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.0 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};

class GFPPE_W5Tit: RscText
{
	idc = 1014;
	text = "Hour"; 
	x = 19.5 * GUI_GRID_W + GUI_GRID_X;
	y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};

class EditHour: RscEdit 
{
	idc = 1413;
	onKeyDown = "null = [_this,2] call GFPPE_ChangeTime";
	x = 19.5 * GUI_GRID_W + GUI_GRID_X;
	y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.0 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};

class GFPPE_W6Tit: RscText
{
	idc = 1015;
	text = "Min"; 
	x = 22.5 * GUI_GRID_W + GUI_GRID_X;
	y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};

class EditMin: RscEdit 
{
	idc = 1414;
	onKeyDown = "null = [_this,2] call GFPPE_ChangeTime";
	x = 22.5 * GUI_GRID_W + GUI_GRID_X;
	y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.0 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};


class GFPPE_PP0Slider: RscSlider
{
	idc = 1900;
	x = 15.5 * GUI_GRID_W + GUI_GRID_X;
	y = 17.0 * GUI_GRID_H + GUI_GRID_Y;
	w = 13.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	onSliderPosChanged = "[_this,1] spawn GFPPE_ChangeTime;";
};

class GFPPE_W1Tit: RscText
{
	idc = 1010;
	text = "Overcast"; 
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
	SizeEx = "(((((safezoneW / safezoneH) min 1.0) / 1.2) / 25) * 1)";
};

class GFPPE_PP1Slider: RscSlider
{
	idc = 1901;
	x = 15.5 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 9.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	onSliderPosChanged = "null = [_this] spawn GFPPE_ChangeOvercast;";
};

class GFPPE_FogTitle1: RscText
{
	idc = 1010;
	text = "Fog"; 
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 23.0 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
	SizeEx = "(((((safezoneW / safezoneH) min 1.0) / 1.2) / 25) * 1)";
};

class GFPPE_FogSlider1: RscSlider
{
	idc = 1902;
	x = 15.5 * GUI_GRID_W + GUI_GRID_X;
	y = 23 * GUI_GRID_H + GUI_GRID_Y;
	w = 9.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	onSliderPosChanged = "null = _this spawn GFPPE_ChangeFog;";
};

class GFPPE_Fogtitle2: RscText
{
	idc = 1020;
	text = "Fog decay"; 
	tooltip = "Decay of fog density with altitude. Range 0..1";
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 24.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
	SizeEx = "(((((safezoneW / safezoneH) min 1.0) / 1.2) / 25) * 1)";
};
class GFPPE_fogdecay: RscEdit 
{
	idc = 1420;
	onKeyDown = "null = _this call GFPPE_ChangeFog";
	tooltip = "Decay of fog density with altitude. Range 0..1";
	x = 14.5 * GUI_GRID_W + GUI_GRID_X;
	y = 24.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};

class GFPPE_Fogtitle3: RscText
{
	idc = 1021;
	text = "Fog base"; 
	tooltip = "Base altitude of fog (in meters)";
	x = 18.5 * GUI_GRID_W + GUI_GRID_X;
	y = 24.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
	SizeEx = "(((((safezoneW / safezoneH) min 1.0) / 1.2) / 25) * 1)";
};

class GFPPE_fogbase: RscEdit 
{
	idc = 1421;
	onKeyDown = "null = _this call GFPPE_ChangeFog";
	tooltip = "Base altitude of fog (in meters)";
	x = 22.5 * GUI_GRID_W + GUI_GRID_X;
	y = 24.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};

// settings -
class GFPPE_Debug: RscButton
{
	idc = 1600;
	text = "Copy to clipboard"; 
	onButtonClick = "null = [_this] call GFPPE_copy";	
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	sizeEx = 0.9 * GUI_GRID_H;
};
class GFPPE_committime: RscEdit
{
	idc = 1499;
	OnKeyDown = "PP_committime = parsenumber ctrltext 1499;";
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 2 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	tooltip = "Seconds to commit changes. Use zero for constant updates."; 
};
class GFPPE_CommitTitle: RscText
{
	idc = 1099;
	text = "Commit time"; 
	x = 2 * GUI_GRID_W + GUI_GRID_X;
	y = 17.7 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 0.5 * GUI_GRID_H;
};
class GFPPE_Commit1: RscButton
{
	idc = 1610;
	text = "Commit"; 
	onButtonClick = "PP_committing = !PP_committing";
	SizeEx = 0.04;
	x = 3.5 * GUI_GRID_W + GUI_GRID_X;
	y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

class ImportRscButton1: ImportRscButton
{	};

};
};