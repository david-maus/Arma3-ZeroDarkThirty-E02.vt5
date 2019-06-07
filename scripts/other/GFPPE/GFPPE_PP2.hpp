class GFPPE_2
{
	idd = 77002;
	movingenable = true;
	//chrom
	onLoad = "openPP = 2;GFPPE_debug1 = 2;null = [_this] execvm 'scripts\other\GFPPE\GFPPE_open.sqf'";
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
	onButtonClick = "closeDialog 77002;openPP = 1;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	x = 2 * GUI_GRID_W + GUI_GRID_X;
	y = 7 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	sizeEx = 0.8 * GUI_GRID_H;
	colorBackground[] = COLOR_HIGHORANGE;
	colorFocused[] = COLOR_HIGHORANGE;
};
class GFPPE_openPP3: RscButton
{
	idc = 1603;
	text = "WetDistortion"; 
	onButtonClick = "closeDialog 77002;openPP = 3;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	onButtonClick = "closeDialog 77002;openPP = 4;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	onButtonClick = "closeDialog 77002;openPP = 5;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	onButtonClick = "closeDialog 77002;openPP = 6;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	onButtonClick = "closeDialog 77002;openPP = 7;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	onButtonClick = "closeDialog 77002;openPP = 8;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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

class GFPPE_PP0Tit: RscText
{
	idc = 1000;
	text = "Strength X"; 
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP1Tit: RscText
{
	idc = 1001;
	text = "Strength Y"; 
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP2Tit: RscText
{
	idc = 1002;
	text = "Aspect Rel."; 
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 4 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP0Slider: RscSlider
{
	idc = 1900;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 9.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP1Slider: RscSlider
{
	idc = 1901;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 9.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP0EB: RscEdit
{
	idc = 1400;
	x = 26.5 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP1EB: RscEdit
{
	idc = 1401;
	x = 26.5 * GUI_GRID_W + GUI_GRID_X;
	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};

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
class GFPPE_PP2Bool: RscCheckbox
{
	idc = 2800;
	//onCheckedChanged = "PP";
	onCheckedChanged = "null = [_this] call GFPPE_updateParEB";
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 4 * GUI_GRID_H + GUI_GRID_Y;
	w = 1 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
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

class GFFPE_defaults: GFFPE_defaultsRscButton
{
	text = "Defaults"; 
	tooltip = "Set Chromatic Aberration parameters to default values.";
	onButtonClick = "null = [_this] spawn GFPPE_setdefaults;";
	};
class ImportRscButton1: ImportRscButton
{};	

};
};