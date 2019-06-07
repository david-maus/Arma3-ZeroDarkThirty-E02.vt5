#define GUI_GRID_X	(0.4)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)
#define COLOR_HIGHORANGE {1,0.7,0.2,1}
///////////////////////////////////////////////////////////////////////////
/// Styles
///////////////////////////////////////////////////////////////////////////

// Control types
#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_SHORTCUTBUTTON   16
#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define CT_LISTNBOX         102
#define CT_CHECKBOX         77

// Static styles
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0C

#define ST_TYPE           0xF0
#define ST_SINGLE         0x00
#define ST_MULTI          0x10
#define ST_TITLE_BAR      0x20
#define ST_PICTURE        0x30
#define ST_FRAME          0x40
#define ST_BACKGROUND     0x50
#define ST_GROUP_BOX      0x60
#define ST_GROUP_BOX2     0x70
#define ST_HUD_BACKGROUND 0x80
#define ST_TILE_PICTURE   0x90
#define ST_WITH_RECT      0xA0
#define ST_LINE           0xB0

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800

#define ST_TITLE          ST_TITLE_BAR + ST_CENTER

// Slider styles
#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400

#define SL_TEXTURES       0x10

// progress bar 
#define ST_VERTICAL       0x01
#define ST_HORIZONTAL     0

// Listbox styles
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

// Tree styles
#define TR_SHOWROOT       1
#define TR_AUTOCOLLAPSE   2

// MessageBox styles
#define MB_BUTTON_OK      1
#define MB_BUTTON_CANCEL  2
#define MB_BUTTON_USER    4


///////////////////////////////////////////////////////////////////////////
/// Base Classes
///////////////////////////////////////////////////////////////////////////

class RscText
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 0;
	idc = -1;
	colorBackground[] = 
	{
		0, 0, 0, 0
	};
	colorText[] = 
	{
		1, 1, 1, 1
	};
	text = "";
	fixedWidth = 0;
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0;
	shadow = 1;
	colorShadow[] = 
	{
		0, 0, 0, 0.5
	};
	font = "PuristaMedium";
	SizeEx = "(((((safezoneW / safezoneH) min 0.9) / 1.2) / 25) * 1)";
	//SizeEx = 0.028;
	linespacing = 1;
	tooltipColorText[] = 
	{
		1, 1, 1, 1
	};
	tooltipColorBox[] = 
	{
		1, 1, 1, 1
	};
	tooltipColorShade[] = 
	{
		0, 0, 0, 0.65
	};
};

class RscEdit
{
	onKeyDown = "null = [false] call GFPPE_updateParEB";
	deletable = 0;
	fade = 0;
	access = 0;
	type = 2;
	x = 0;
	y = 0;
	h = 0.04;
	w = 0.2;
	colorBackground[] = 
	{
		0, 0, 0, 0.6
	};
	colorText[] = 
	{
		0.95,
		0.95,
		0.95,
		1
	};
	colorDisabled[] = 
	{
		1, 1, 1, 0.25
	};
	colorSelection[] = 
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",
		1
	};
	autocomplete = "";
	text = "";
	size = 0.2;
	style = "0x00 + 0x40";
	font = "PuristaMedium";
	shadow = 2;
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	canModify = 1;
	tooltipColorText[] = 
	{
		1, 1, 1, 1
	};
	tooltipColorBox[] = 
	{
		0, 0, 0, 0.6
	};
	tooltipColorShade[] = 
	{
		0, 0, 0, 0.65
	};
};

class RscButton
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 1;
	text = "";
	colorText[] = 
	{1,	1,1,1};
	colorDisabled[] = 
	{1,	1,	1,	0.25};
	colorBackground[] = 
	{	0,	0,	0,	0.5	};
	colorBackgroundDisabled[] = 
	{	0,	0,	0,	0.5
	};
	colorBackgroundActive[] = 
	{	0,	0,	0,	1
	};
	colorFocused[] = 
	{	0,	0,	0,	1
	};
	colorShadow[] = 
	{	0,	0,	0,	0
	};
	colorBorder[] = 
	{	0,	0,	0,	1
	};
	//colorBackground[] = {0.2,0.2,0.2,1}; // Fill color
	//colorBackgroundDisabled[] = {0,0,0,0.5}; // Disabled fill color
	//colorBackgroundActive[] = {0,0,0,1}; // Mouse hover fill color
	//colorFocused[] = {1,0.5,0,1}; // Selected fill color (oscillates between this and colorBackground)
	
	soundEnter[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundEnter",
		0.09,
		1
	};
	soundPush[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundPush",
		0.09,
		1
	};
	soundClick[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundClick",
		0.09,
		1
	};
	soundEscape[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundEscape",
		0.09,
		1
	};
	style = 2;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	shadow = 2;
	font = "PuristaMedium";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	offsetX = 0;
	offsetY = 0;
	offsetPressedX = 0;
	offsetPressedY = 0;
	borderSize = 0;
	blinkingPeriod = 0;
};

class RscFrame
{
	type = 0;
	idc = -1;
	style = 64;
	shadow = 2;
	colorBackground[] = 
	{
		0, 0, 0, 0
	};
	colorText[] = 
	{
		1, 1, 1, 1
	};
	font = "PuristaMedium";
	sizeEx = 0.02;
	text = "";
};
class RscSlider
{
	style = "0x400	+ 0x10";
	type = 43;
	shadow = 0;
	x = 0;
	y = 0;
	h = 0.03;
	w = 0.4;
	color[] = {1,1,1,0.4};
	colorActive[] = {1,1,1,1};
	colorDisabled[] = {0.5,0.5,0.5,0.2};
	arrowEmpty = "\A3\ui_f\data\gui\cfg\slider\arrowEmpty_ca.paa";
	arrowFull = "\A3\ui_f\data\gui\cfg\slider\arrowFull_ca.paa";
	border = "\A3\ui_f\data\gui\cfg\slider\border_ca.paa";
	thumb = "\A3\ui_f\data\gui\cfg\slider\thumb_ca.paa";
	tooltipColorText[] = {1,1,1,1};
	tooltipColorBox[] = {0,0,0,0.8};
	tooltipColorShade[] = {0,0,0,0.65};
	onSliderPosChanged = "[_this] call GFPPE_updateParSlider;";
};
class IGUIBack
{
	type = 0;
	fade = 0;
	idc = 124;
	style = 128;
	text = "";
	colorText[] = 
	{
		0, 0, 0, 0
	};
	font = "PuristaMedium";
	sizeEx = 0;
	shadow = 0;
	x = 0.1;
	y = 0.1;
	w = 0.1;
	h = 0.1;
	colorbackground[] = {0.0,0.0,0.0,0.6};
	/*
	colorbackground[] = 
	{
		"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_G',1])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_B',1])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.9])"
	};
	*/
};
class RscCheckBox
{
	idc = -1;
	type = 77;
	style = 0;
	checked = 0;
	x = "0.375 * safezoneW + safezoneX";
	y = "0.36 * safezoneH + safezoneY";
	w = "0.025 * safezoneW";
	h = "0.04 * safezoneH";
	color[] = 
	{
		1, 1, 1, 0.7
	};
	colorFocused[] = 
	{
		1, 1, 1, 1
	};
	colorHover[] = 
	{
		1, 1, 1, 1
	};
	colorPressed[] = 
	{
		1, 1, 1, 1
	};
	colorDisabled[] = 
	{
		1, 1, 1, 0.2
	};
	colorBackground[] = 
	{
		0, 0, 0, 0
	};
	colorBackgroundFocused[] = 
	{
		0, 0, 0, 0
	};
	colorBackgroundHover[] = 
	{
		0, 0, 0, 0
	};
	colorBackgroundPressed[] = 
	{
		0, 0, 0, 0
	};
	colorBackgroundDisabled[] = 
	{
		0, 0, 0, 0
	};
	textureChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureFocusedChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureFocusedUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureHoverChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureHoverUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	texturePressedChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	texturePressedUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureDisabledChecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureDisabledUnchecked = "\A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	tooltipColorText[] = 
	{
		1, 1, 1, 1
	};
	tooltipColorBox[] = 
	{
		1, 1, 1, 1
	};
	tooltipColorShade[] = 
	{
		0, 0, 0, 0.65
	};
	soundEnter[] = 
	{
		"",
		0.1, 1
	};
	soundPush[] = 
	{
		"",
		0.1, 1
	};
	soundClick[] = 
	{
		"",
		0.1, 1
	};
	soundEscape[] = 
	{
		"",
		0.1, 1
	};
};
class RscTextCheckBox
{
	idc = -1;
	type = 7;
	style = 0;
	x = "0.375 * safezoneW + safezoneX";
	y = "0.36 * safezoneH + safezoneY";
	w = "0.025 * safezoneW";
	h = "0.04 * safezoneH";
	colorText[] = 
	{
		1, 0, 0, 1
	};
	color[] = 
	{
		0, 0, 0, 0
	};
	colorBackground[] = 
	{
		0, 0, 1, 1
	};
	colorTextSelect[] = 
	{
		0, 0.8,
		0, 1
	};
	colorSelectedBg[] = 
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",
		1
	};
	colorSelect[] = 
	{
		0, 0, 0, 1
	};
	colorTextDisable[] = 
	{
		0.4,
		0.4,
		0.4,
		1
	};
	colorDisable[] = 
	{
		0.4,
		0.4,
		0.4,
		1
	};
	tooltipColorText[] = 
	{
		1, 1, 1, 1
	};
	tooltipColorBox[] = 
	{
		1, 1, 1, 1
	};
	tooltipColorShade[] = 
	{
		0, 0, 0, 0.65
	};
	font = "PuristaMedium";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
	rows = 1;
	columns = 1;
	strings[] = 
	{
		"UNCHECKED"
	};
	checked_strings[] = 
	{
		"CHECKED"
	};
};
class RscButtonMenu
{
	idc = -1;
	type = 16;
	style = "0x02 + 0xC0";
	default = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,1)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,1)";
	colorBackground[] = 
	{
		0, 0, 0, 0.8
	};
	colorBackgroundFocused[] = 
	{
		1, 1, 1, 1
	};
	colorBackground2[] = 
	{
		0.75,
		0.75,
		0.75,
		1
	};
	color[] = 
	{
		1, 1, 1, 1
	};
	colorFocused[] = 
	{
		0, 0, 0, 1
	};
	color2[] = 
	{
		0, 0, 0, 1
	};
	colorText[] = 
	{
		1, 1, 1, 1
	};
	colorDisabled[] = 
	{
		1, 1, 1, 0.25
	};
	period = 1.2;
	periodFocus = 1.2;
	periodOver = 1.2;
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	tooltipColorText[] = 
	{
		1, 1, 1, 1
	};
	tooltipColorBox[] = 
	{
		1, 1, 1, 1
	};
	tooltipColorShade[] = 
	{
		0, 0, 0, 0.65
	};
	class TextPos
	{
		left = "0.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right = 0.005;
		bottom = 0;
	};
	class Attributes
	{
		font = "PuristaLight";
		color = "#E5E5E5";
		align = "left";
		shadow = "false";
	};
	class ShortcutPos
	{
		left = "(6.25 * (((safezoneW / safezoneH) min 1.2) / 40)) - 0.0225 - 0.005";
		top = 0.005;
		w = 0.0225;
		h = 0.03;
	};
	soundEnter[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",
		0.09,
		1
	};
	soundPush[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundPush",
		0.09,
		1
	};
	soundClick[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundClick",
		0.09,
		1
	};
	soundEscape[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",
		0.09,
		1
	};
};
class RscButtonMenuOK
{
	idc = 1;
	shortcuts[] = 
	{
		"0x00050000 + 0",
		28,
		57,
		156
	};
	default = 1;
	text = "OK";
	soundPush[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenuOK\soundPush",
		0.09,
		1
	};
};
class RscButtonMenuCancel
{
	idc = 2;
	shortcuts[] = 
	{
		"0x00050000 + 1"
	};
	text = "Cancel";
};
class RscControlsGroup
{
	deletable = 0;
	fade = 0;
	class VScrollbar
	{
		color[] = 
		{
			1, 	1, 	1, 	1
		};
		width = 0.021;
		autoScrollEnabled = 1;
	};
	class HScrollbar
	{
		color[] = 
		{
			1, 	1, 	1, 	1
		};
		height = 0.028;
	};
	class Controls
	{
	};
	type = 15;
	idc = -1;
	x = 0;
	y = 0;
	w = 1;
	h = 1;
	shadow = 0;
	style = 16;
};
class GFFPE_defaultsRscButton
{
	idc = 1799;
	
	SizeEx = 0.035;
	x = 9.5 * GUI_GRID_W + GUI_GRID_X;
	y = 25.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 5 * GUI_GRID_W;
	h = 0.9 * GUI_GRID_H;
	
	deletable = 0;
	fade = 0;
	access = 0;
	type = 1;
	//text = "";
	colorText[] = 
	{1,	1,1,1};
	colorDisabled[] = 
	{1,	1,	1,	0.25};
	colorBackground[] = 
	{	0,	0,	0,	0.5	};
	colorBackgroundDisabled[] = 
	{	0,	0,	0,	0.5
	};
	colorBackgroundActive[] = 
	{	0,	0,	0,	1
	};
	colorFocused[] = 
	{	0,	0,	0,	1
	};
	colorShadow[] = 
	{	0,	0,	0,	0
	};
	colorBorder[] = 
	{	0,	0,	0,	1
	};
	//colorBackground[] = {0.2,0.2,0.2,1}; // Fill color
	//colorBackgroundDisabled[] = {0,0,0,0.5}; // Disabled fill color
	//colorBackgroundActive[] = {0,0,0,1}; // Mouse hover fill color
	//colorFocused[] = {1,0.5,0,1}; // Selected fill color (oscillates between this and colorBackground)
	
	soundEnter[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundEnter",
		0.09,
		1
	};
	soundPush[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundPush",
		0.09,
		1
	};
	soundClick[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundClick",
		0.09,
		1
	};
	soundEscape[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundEscape",
		0.09,
		1
	};
	style = 2;
	//x = 0;
	//y = 0;
	//w = 0.095589;
	//h = 0.039216;
	shadow = 2;
	font = "PuristaMedium";
	//sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	offsetX = 0;
	offsetY = 0;
	offsetPressedX = 0;
	offsetPressedY = 0;
	borderSize = 0;
	blinkingPeriod = 0;
};
class ImportRscButton
{
	idc = 1699;
	text = "Import";
	tooltip = "Copy the GFPPE parameter line from your export and click this.";
	onButtonClick = "null = [_this] spawn GFPPE_import;";
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 3.7 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	sizeEx = 0.9 * GUI_GRID_H;
	
	deletable = 0;
	fade = 0;
	access = 0;
	type = 1;
	colorText[] = 	{1,	1,1,1};
	colorDisabled[] = 	{1,	1,	1,	0.25};
	colorBackground[] = 	{	0,	0,	0,	0.5	};
	colorBackgroundDisabled[] = 	{	0,	0,	0,	0.5	};
	colorBackgroundActive[] = 	{	0,	0,	0,	1	};
	colorFocused[] = 
	{	0,	0,	0,	1	};
	colorShadow[] = 
	{	0,	0,	0,	0	};
	colorBorder[] = 
	{	0,	0,	0,	1	};
	//colorBackground[] = {0.2,0.2,0.2,1}; // Fill color
	//colorBackgroundDisabled[] = {0,0,0,0.5}; // Disabled fill color
	//colorBackgroundActive[] = {0,0,0,1}; // Mouse hover fill color
	//colorFocused[] = {1,0.5,0,1}; // Selected fill color (oscillates between this and colorBackground)
	
	soundEnter[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundEnter",
		0.09,
		1
	};
	soundPush[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundPush",
		0.09,
		1
	};
	soundClick[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundClick",
		0.09,
		1
	};
	soundEscape[] = 
	{"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1	};
	style = 2;
	shadow = 2;
	font = "PuristaMedium";
	offsetX = 0;
	offsetY = 0;
	offsetPressedX = 0;
	offsetPressedY = 0;
	borderSize = 0;
	blinkingPeriod = 0;
};

#include "GFPPE_PP1.hpp"
#include "GFPPE_PP2.hpp"
#include "GFPPE_PP3.hpp"
#include "GFPPE_PP4.hpp"
#include "GFPPE_PP5.hpp"
#include "GFPPE_PP6.hpp"
#include "GFPPE_PP7.hpp"
#include "GFPPE_PP8.hpp"