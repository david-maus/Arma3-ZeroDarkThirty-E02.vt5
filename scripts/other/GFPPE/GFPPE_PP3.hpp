class GFPPE_3
{
	idd = 77003;
	movingenable = true;
	//Wetd
	onLoad = "openPP = 3;GFPPE_debug1 = 3;null = [_this] execvm 'scripts\other\GFPPE\GFPPE_open.sqf'";
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
	onButtonClick = "closeDialog 77003;openPP = 1;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	onButtonClick = "closeDialog 77003;openPP = 2;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	x = 2 * GUI_GRID_W + GUI_GRID_X;
	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	sizeEx = 0.8 * GUI_GRID_H;
	colorBackground[] = COLOR_HIGHORANGE;
	colorFocused[] = COLOR_HIGHORANGE;
};
class GFPPE_openPP4: RscButton
{
	idc = 1604;
	text = "ColorCorrections"; 
	onButtonClick = "closeDialog 77003;openPP = 4;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	onButtonClick = "closeDialog 77003;openPP = 5;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	onButtonClick = "closeDialog 77003;openPP = 6;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	onButtonClick = "closeDialog 77003;openPP = 7;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	onButtonClick = "closeDialog 77003;openPP = 8;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	text = "Blur"; 
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP1Tit: RscText
{
	idc = 1001;
	text = "Strength top"; 
	tooltip = "Affect top half of the screen.";
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP2Tit: RscText
{
	idc = 1002;
	text = "Strength bottom"; 
	tooltip = "Affect bottom half of the screen.";
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 4 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP3Tit1: RscText
{
	idc = 1003;
	text = "Wave Speed"; 
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 11 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP3Tit: RscText
{
	idc = 1004;
	text = "Speed x1"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP4Tit: RscText
{
	idc = 1005;
	text = "Speed x2"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP5Tit: RscText
{
	idc = 1006;
	text = "Speed y1"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP3Tit2: RscText
{
	idc = 1007;
	text = "Wave Amplitude"; 
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 12 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP7Tit: RscText
{
	idc = 1008;
	text = "Ampl. x1"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP8Tit: RscText
{
	idc = 1009;
	text = "Ampl. x2"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP9Tit: RscText
{
	idc = 1010;
	text = "Ampl. y1"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 16 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP10Tit: RscText
{
	idc = 1011;
	text = "Ampl. y2"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP3Tit3: RscText
{
	idc = 1012;
	text = "Phase shift"; 
	tooltip = "Description needed.";
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP11Tit: RscText
{
	idc = 1013;
	text = "Value 1"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP12Tit: RscText
{
	idc = 1014;
	text = "Value 2"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 21 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP6Tit: RscText
{
	idc = 1015;
	text = "Speed y2"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 11 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP13Tit: RscText
{
	idc = 1016;
	text = "Value 3"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 22.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP14Tit: RscText
{
	idc = 1017;
	text = "Value 4"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 24 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
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
class GFPPE_PP2Slider: RscSlider
{
	idc = 1902;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 4 * GUI_GRID_H + GUI_GRID_Y;
	w = 9.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP3Slider: RscSlider
{
	idc = 1903;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 9.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP4Slider: RscSlider
{
	idc = 1904;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 9.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP5Slider: RscSlider
{
	idc = 1905;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 9.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP6Slider: RscSlider
{
	idc = 1906;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 11 * GUI_GRID_H + GUI_GRID_Y;
	w = 9.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP7Slider: RscSlider
{
	idc = 1907;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 9.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP8Slider: RscSlider
{
	idc = 1908;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 9.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP9Slider: RscSlider
{
	idc = 1909;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 16 * GUI_GRID_H + GUI_GRID_Y;
	w = 9.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP10Slider: RscSlider
{
	idc = 1910;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 9.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP11Slider: RscSlider
{
	idc = 1911;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 9.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP12Slider: RscSlider
{
	idc = 1912;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 21 * GUI_GRID_H + GUI_GRID_Y;
	w = 9.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP13Slider: RscSlider
{
	idc = 1913;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 22.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 9.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP14Slider: RscSlider
{
	idc = 1914;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 24 * GUI_GRID_H + GUI_GRID_Y;
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
class GFPPE_PP2EB: RscEdit
{
	idc = 1402;
	x = 26.5 * GUI_GRID_W + GUI_GRID_X;
	y = 4 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP3EB: RscEdit
{
	idc = 1403;
	x = 26.5 * GUI_GRID_W + GUI_GRID_X;
	y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP4EB: RscEdit
{
	idc = 1404;
	x = 26.5 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP5EB: RscEdit
{
	idc = 1405;
	x = 26.5 * GUI_GRID_W + GUI_GRID_X;
	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP6EB: RscEdit
{
	idc = 1406;
	x = 26.5 * GUI_GRID_W + GUI_GRID_X;
	y = 11 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP7EB: RscEdit
{
	idc = 1407;
	x = 26.5 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP8EB: RscEdit
{
	idc = 1408;
	x = 26.5 * GUI_GRID_W + GUI_GRID_X;
	y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP9EB: RscEdit
{
	idc = 1409;
	x = 26.5 * GUI_GRID_W + GUI_GRID_X;
	y = 16 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP10EB: RscEdit
{
	idc = 1410;
	x = 26.5 * GUI_GRID_W + GUI_GRID_X;
	y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP11EB: RscEdit
{
	idc = 1411;
	x = 26.5 * GUI_GRID_W + GUI_GRID_X;
	y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP12EB: RscEdit
{
	idc = 1412;
	x = 26.5 * GUI_GRID_W + GUI_GRID_X;
	y = 21 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP13EB: RscEdit
{
	idc = 1413;
	x = 26.5 * GUI_GRID_W + GUI_GRID_X;
	y = 22.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP14EB: RscEdit
{
	idc = 1414;
	x = 26.5 * GUI_GRID_W + GUI_GRID_X;
	y = 24 * GUI_GRID_H + GUI_GRID_Y;
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
	tooltip = "Set Wet Distortion parameters to default values.";
	onButtonClick = "null = [_this] spawn GFPPE_setdefaults;";
	};
class ImportRscButton1: ImportRscButton
{};

};
};