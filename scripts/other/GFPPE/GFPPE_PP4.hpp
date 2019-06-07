class GFPPE_4
{
	idd = 77004;
	movingenable = true;
	//colorc
	onLoad = "openPP = 4;null = [_this] execvm 'scripts\other\GFPPE\GFPPE_open.sqf'";
	class controlsBackground
	{
		class IGUIBack_2200: IGUIBack
		{
		idc = 2200;
		x = 0 * GUI_GRID_W + GUI_GRID_X;
		y = 0 * GUI_GRID_H + GUI_GRID_Y;
		w = 40.5 * GUI_GRID_W;
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
	onButtonClick = "closeDialog 77004;openPP = 1;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	onButtonClick = "closeDialog 77004;openPP = 2;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	onButtonClick = "closeDialog 77004;openPP = 3;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	colorBackground[] = COLOR_HIGHORANGE;
	colorFocused[] = COLOR_HIGHORANGE;
	blinkingPeriod = 0;
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
	onButtonClick = "closeDialog 77004;openPP = 5;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	onButtonClick = "closeDialog 77004;openPP = 6;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	onButtonClick = "closeDialog 77004;openPP = 7;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	onButtonClick = "closeDialog 77004;openPP = 8;null = [_this] execvm 'scripts\other\GFPPE\GFPPE.sqf'";
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
	text = "Brightness"; 
	tooltip = "Default 1";
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP1Tit: RscText
{
	idc = 1001;
	text = "Contrast"; 
	tooltip = "Default 1";
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP2Tit: RscText
{
	idc = 1002;
	text = "Offset"; 
	tooltip = "Defaul 0";
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 4 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PPATit: RscText
{
	idc = 1003;
	text = "Blend color"; 
	tooltip = "Color overlay.";
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 11 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP3Tit: RscText
{
	idc = 1004;
	text = "Red"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP4Tit: RscText
{
	idc = 1005;
	text = "Green"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP5Tit: RscText
{
	idc = 1006;
	text = "Blue"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class RscText_1007: RscText
{
	idc = 1007;
	text = "Colorize 1"; 
	tooltip = "Adjust along with colorize 2.";
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 12 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP7Tit: RscText
{
	idc = 1008;
	text = "Red"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP8Tit: RscText
{
	idc = 1009;
	text = "Green"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP9Tit: RscText
{
	idc = 1010;
	text = "Blue"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 16 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP10Tit: RscText
{
	idc = 1011;
	text = "Alpha"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class RscText_1012: RscText
{
	idc = 1012;
	text = "Colorize 2"; 
	tooltip = "Luminosity of each channel. Adjust along with colorize 1.";
	x = 10 * GUI_GRID_W + GUI_GRID_X;
	y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP11Tit: RscText
{
	idc = 1013;
	text = "Red"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP12Tit: RscText
{
	idc = 1014;
	text = "Green"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 21 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP6Tit: RscText
{
	idc = 1015;
	text = "Alpha"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 11 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP13Tit: RscText
{
	idc = 1016;
	text = "Blue"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 22.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP14Tit: RscText
{
	idc = 1017;
	text = "Alpha"; 
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 24 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP0Slider: RscSlider
{
	idc = 1900;
	//onSliderPosChanged = "systemChat str ['slider 0',_this select 0]; false";
	x = 15 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP1Slider: RscSlider
{
	idc = 1901;
	x = 15 * GUI_GRID_W + GUI_GRID_X;
	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP2Slider: RscSlider
{
	idc = 1902;
	x = 15 * GUI_GRID_W + GUI_GRID_X;
	y = 4 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP3Slider: RscSlider
{
	idc = 1903;
	x = 15 * GUI_GRID_W + GUI_GRID_X;
	y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP4Slider: RscSlider
{
	idc = 1904;
	x = 15 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP5Slider: RscSlider
{
	idc = 1905;
	x = 15 * GUI_GRID_W + GUI_GRID_X;
	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP6Slider: RscSlider
{
	idc = 1906;
	x = 15 * GUI_GRID_W + GUI_GRID_X;
	y = 11 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP7Slider: RscSlider
{
	idc = 1907;
	x = 15 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP8Slider: RscSlider
{
	idc = 1908;
	x = 15 * GUI_GRID_W + GUI_GRID_X;
	y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP9Slider: RscSlider
{
	idc = 1909;
	x = 15 * GUI_GRID_W + GUI_GRID_X;
	y = 16 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP10Slider: RscSlider
{
	idc = 1910;
	x = 15 * GUI_GRID_W + GUI_GRID_X;
	y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP11Slider: RscSlider
{
	idc = 1911;
	x = 15 * GUI_GRID_W + GUI_GRID_X;
	y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP12Slider: RscSlider
{
	idc = 1912;
	x = 15 * GUI_GRID_W + GUI_GRID_X;
	y = 21 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP13Slider: RscSlider
{
	idc = 1913;
	x = 15 * GUI_GRID_W + GUI_GRID_X;
	y = 22.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP14Slider: RscSlider
{
	idc = 1914;
	x = 15 * GUI_GRID_W + GUI_GRID_X;
	y = 24 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP0EB: RscEdit
{
	idc = 1400;
	x = 26.0 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	
};
class GFPPE_PP1EB: RscEdit
{
	idc = 1401;
	
	x = 26.0 * GUI_GRID_W + GUI_GRID_X;
	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP2EB: RscEdit
{
	idc = 1402;
	
	x = 26.0 * GUI_GRID_W + GUI_GRID_X;
	y = 4 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP3EB: RscEdit
{
	idc = 1403;
	
	x = 26.0 * GUI_GRID_W + GUI_GRID_X;
	y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP4EB: RscEdit
{
	idc = 1404;
	
	x = 26.0 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP5EB: RscEdit
{
	idc = 1405;
	
	x = 26.0 * GUI_GRID_W + GUI_GRID_X;
	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP6EB: RscEdit
{
	idc = 1406;
	
	x = 26.0 * GUI_GRID_W + GUI_GRID_X;
	y = 11 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP7EB: RscEdit
{
	idc = 1407;
	
	x = 26.0 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP8EB: RscEdit
{
	idc = 1408;
	
	x = 26.0 * GUI_GRID_W + GUI_GRID_X;
	y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP9EB: RscEdit
{
	idc = 1409;
	
	x = 26.0 * GUI_GRID_W + GUI_GRID_X;
	y = 16 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP10EB: RscEdit
{
	idc = 1410;
	
	x = 26.0 * GUI_GRID_W + GUI_GRID_X;
	y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP11EB: RscEdit
{
	idc = 1411;
	
	x = 26.0 * GUI_GRID_W + GUI_GRID_X;
	y = 19.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP12EB: RscEdit
{
	idc = 1412;
	
	x = 26.0 * GUI_GRID_W + GUI_GRID_X;
	y = 21 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP13EB: RscEdit
{
	idc = 1413;
	
	x = 26.0 * GUI_GRID_W + GUI_GRID_X;
	y = 22.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP14EB: RscEdit
{
	idc = 1414;
	
	x = 26.0 * GUI_GRID_W + GUI_GRID_X;
	y = 24 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
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

////////////////////////////////////////////////////////
// NEW PARAMETERS
////////////////////////////////////////////////////////
class GFPPE_PP15Tit: RscText
{
	idc = 1025;
	text = "Hole Width"; 
	tooltip = "Default 0";
	x = 30.5 * GUI_GRID_W + GUI_GRID_X;
	y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP15Slider: RscSlider
{
	idc = 1915;
	x = 30 * GUI_GRID_W + GUI_GRID_X;
	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 7 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP15EB: RscEdit
{
	idc = 1415;
	x = 37.3 * GUI_GRID_W + GUI_GRID_X;
	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	
};
class GFPPE_PP16Tit: RscText
{
	idc = 1026;
	text = "Hole height"; 
	tooltip = "Default 0";
	x = 30.5 * GUI_GRID_W + GUI_GRID_X;
	y = 4.0 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP16Slider: RscSlider
{
	idc = 1916;
	x = 30 * GUI_GRID_W + GUI_GRID_X;
	y = 5.0 * GUI_GRID_H + GUI_GRID_Y;
	w = 7 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP16EB: RscEdit
{
	idc = 1416;
	x = 37.3 * GUI_GRID_W + GUI_GRID_X;
	y = 5.0 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP17Tit: RscText
{
	idc = 1027;
	text = "Rotation"; 
	tooltip = "Default 0";
	x = 30.5 * GUI_GRID_W + GUI_GRID_X;
	y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP17Slider: RscSlider
{
	idc = 1917;
	x = 30 * GUI_GRID_W + GUI_GRID_X;
	y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 7 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP17EB: RscEdit
{
	idc = 1417;
	
	x = 37.3 * GUI_GRID_W + GUI_GRID_X;
	y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};

class GFPPE_PP18Tit: RscText
{
	idc = 1029;
	text = "Position x"; 
	x = 30.5 * GUI_GRID_W + GUI_GRID_X;
	y = 9.0 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP18Slider: RscSlider
{
	idc = 1918;
	x = 30 * GUI_GRID_W + GUI_GRID_X;
	y = 10.0 * GUI_GRID_H + GUI_GRID_Y;
	w = 7 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP18EB: RscEdit
{
	idc = 1418;
	
	x = 37.3 * GUI_GRID_W + GUI_GRID_X;
	y = 10.0 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP19Tit: RscText
{
	idc = 1030;
	text = "Position y"; 
	x = 30.5 * GUI_GRID_W + GUI_GRID_X;
	y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP19Slider: RscSlider
{
	idc = 1919;
	x = 30 * GUI_GRID_W + GUI_GRID_X;
	y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 7 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP19EB: RscEdit
{
	idc = 1419;
	
	x = 37.3 * GUI_GRID_W + GUI_GRID_X;
	y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP20Tit: RscText
{
	idc = 1031;
	text = "Edge thickness"; 
	x = 30.5 * GUI_GRID_W + GUI_GRID_X;
	y = 14.0 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};

class GFPPE_PP20Slider: RscSlider
{
	idc = 1920;
	x = 30 * GUI_GRID_W + GUI_GRID_X;
	y = 15.0 * GUI_GRID_H + GUI_GRID_Y;
	w = 7 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP20EB: RscEdit
{
	idc = 1420;
	
	x = 37.3 * GUI_GRID_W + GUI_GRID_X;
	y = 15.0 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP21Tit: RscText
{
	idc = 1050;
	text = "Edge interpol."; 
	x = 30.5 * GUI_GRID_W + GUI_GRID_X;
	y = 16.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 0.6 * GUI_GRID_H;
};
class GFPPE_PP21Slider: RscSlider
{
	idc = 1921;
	x = 30 * GUI_GRID_W + GUI_GRID_X;
	y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 7 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class GFPPE_PP21EB: RscEdit
{
	idc = 1421;
	
	x = 37.3 * GUI_GRID_W + GUI_GRID_X;
	y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 2.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};

class GFFPE_defaults: GFFPE_defaultsRscButton
{
	text = "Defaults"; 
	tooltip = "Set Color Corrections parameters to default values.";
	onButtonClick = "null = [_this] spawn GFPPE_setdefaults;";
	};
class ImportRscButton1: ImportRscButton
{};	

};
};