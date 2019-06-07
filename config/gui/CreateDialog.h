#include "CustomControlClasses.h"
class CreateDialog
{
	idd = -1;
	
	class ControlsBackground
	{
		
	};
	class Controls
	{
		class Control522066114
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.3671875;
			y = safeZoneY + safeZoneH * 0.32291667;
			w = safeZoneW * 0.265625;
			h = safeZoneH * 0.25694445;
			style = 0;
			text = "";
			colorBackground[] = {0.4,0.4,0.4,0.4745};
			colorText[] = {0.5888,0.5888,0.5888,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.9);
			
		};
		class Control850076140
		{
			type = 0;
			idc = 15616;
			x = safeZoneX + safeZoneW * 0.3671875;
			y = safeZoneY + safeZoneH * 0.32291667;
			w = safeZoneW * 0.265625;
			h = safeZoneH * 0.01736112;
			style = 2;
			text = "Gespräch";
			colorBackground[] = {0,0,0.102,0.4};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.7);
			access = 0;
			shadow = 0;
			
		};
		class Control1796178401
		{
			type = 0;
			idc = 25823;
			x = safeZoneX + safeZoneW * 0.3671875;
			y = safeZoneY + safeZoneH * 0.46527778;
			w = safeZoneW * 0.265625;
			h = safeZoneH * 0.01909723;
			style = 0;
			text = "Ich:";
			colorBackground[] = {0.9843,1,1,0.1534};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.7);
			
		};
		class Control1796178401_copy1
		{
			type = 0;
			idc = 267132;
			x = safeZoneX + safeZoneW * 0.39160157;
			y = safeZoneY + safeZoneH * 0.49305556;
			w = safeZoneW * 0.21679688;
			h = safeZoneH * 0.03819445;
			style = 16+512;
			text = "Ganz ruhig, beruhigen Sie sich. Wir können Sie nicht mitnehmen aber unsere Leute werden Sie abholen.";
			colorBackground[] = {0.9843,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.6);
			access = 0;
			lineSpacing = 1;
			shadow = 0;
			
		};
		class Control1796178401_copy2
		{
			type = 0;
			idc = 3423;
			x = safeZoneX + safeZoneW * 0.3671875;
			y = safeZoneY + safeZoneH * 0.35416667;
			w = safeZoneW * 0.265625;
			h = safeZoneH * 0.01909723;
			style = 0;
			text = "Verwundeter Zivilist:";
			colorBackground[] = {0.9843,1,1,0.1534};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.7);
			
		};
		class Control1796178401_copy1_copy1
		{
			type = 0;
			idc = 7458;
			x = safeZoneX + safeZoneW * 0.39160157;
			y = safeZoneY + safeZoneH * 0.38194445;
			w = safeZoneW * 0.21679688;
			h = safeZoneH * 0.03819445;
			style = 16+512;
			text = "Bitte helfen Sie mir! Die haben völlig den Verstand verloren! In dem Flugzeug sind zwei Männer, einer ist verletzt. Die schießen auf alles was sich bewegt!";
			colorBackground[] = {0.9843,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.6);
			access = 0;
			lineSpacing = 1;
			shadow = 0;
			
		};
		class Control206824805
		{
			type = 1;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.61132813;
			y = safeZoneY + safeZoneH * 0.32291667;
			w = safeZoneW * 0.02148438;
			h = safeZoneH * 0.01736112;
			style = 0+2;
			text = "X";
			borderSize = 0;
			colorBackground[] = {0.9137,0,0,0.5767};
			colorBackgroundActive[] = {1,0,0,0.5767};
			colorBackgroundDisabled[] = {1,0,0,0.5767};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {1,0,0,0.5767};
			colorFocused[] = {1,0,0,0.5767};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			onButtonClick = "closeDialog 2;";
			shadow = 0;
			
		};
		class Control166182448_copy1
		{
			type = 0;
			idc = 0;
			x = safeZoneX + safeZoneW * 0.3671875;
			y = safeZoneY + safeZoneH * 0.45138889;
			w = safeZoneW * 0.265625;
			h = safeZoneH * 0.00173612;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0.2169};
			colorText[] = {0.3373,0.1608,0.4314,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Control850076140_copy1
		{
			type = 0;
			idc = 0;
			x = safeZoneX + safeZoneW * 0.3671875;
			y = safeZoneY + safeZoneH * 0.57638889;
			w = safeZoneW * 0.265625;
			h = safeZoneH * 0.00347223;
			style = 2;
			text = "";
			colorBackground[] = {0,0,0.102,0.4};
			colorText[] = {0.949,0.949,0.949,1};
			font = "PuristaBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.12);
			access = 0;
			shadow = 0;
			
		};
		
	};
	
};
