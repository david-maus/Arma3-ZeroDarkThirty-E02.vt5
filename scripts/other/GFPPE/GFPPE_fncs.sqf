GFPPE_updateParEB = 
{
private "_slidersource";
_slidersource = _this select 0;
if (typeName _slidersource != "BOOL") then {_slidersource = false;};

switch openPP do {
	case 1: {
	GFPPE_0EBVal = parseNumber ctrlText 1400;
	GFPPE_1EBVal = parseNumber ctrlText 1401;
	GFPPE_2EBVal = parseNumber ctrlText 1402;
	GFPPE_3EBVal = parseNumber ctrlText 1403;
	
	if (!_slidersource) then {
		sliderSetPosition [1900, GFPPE_0EBVal];
		sliderSetPosition [1901, GFPPE_1EBVal];
		sliderSetPosition [1902, GFPPE_2EBVal];
		sliderSetPosition [1903, GFPPE_3EBVal];
		};
	
	PP_radialP set [0,GFPPE_0EBVal];
	PP_radialP set [1,GFPPE_1EBVal];
	PP_radialP set [2,GFPPE_2EBVal];
	PP_radialP set [3,GFPPE_3EBVal];
	
	};
	case 2: {
	GFPPE_0EBVal = parseNumber ctrlText 1400;
	GFPPE_1EBVal = parseNumber ctrlText 1401;
	
	if (!_slidersource) then {
		sliderSetPosition [1900, GFPPE_0EBVal];
		sliderSetPosition [1901, GFPPE_1EBVal];
		};
	
	PP_chromP set [0,GFPPE_0EBVal];
	PP_chromP set [1,GFPPE_1EBVal];
	PP_chromP set [2,(cbChecked ((findDisplay 77002) displayCtrl 2800))];
		
	};
	case 3: {
	GFPPE_0EBVal = parseNumber ctrlText 1400;
	GFPPE_1EBVal = parseNumber ctrlText 1401;
	GFPPE_2EBVal = parseNumber ctrlText 1402;
	GFPPE_3EBVal = parseNumber ctrlText 1403;
	GFPPE_4EBVal = parseNumber ctrlText 1404;
	GFPPE_5EBVal = parseNumber ctrlText 1405;
	GFPPE_6EBVal = parseNumber ctrlText 1406;
	GFPPE_7EBVal = parseNumber ctrlText 1407;
	GFPPE_8EBVal = parseNumber ctrlText 1408;
	GFPPE_9EBVal = parseNumber ctrlText 1409;
	GFPPE_10EBVal = parseNumber ctrlText 1410;
	GFPPE_11EBVal = parseNumber ctrlText 1411;
	GFPPE_12EBVal = parseNumber ctrlText 1412;
	GFPPE_13EBVal = parseNumber ctrlText 1413;
	GFPPE_14EBVal = parseNumber ctrlText 1414;
	
	if (!_slidersource) then {
		sliderSetPosition [1900, GFPPE_0EBVal];
		sliderSetPosition [1901, GFPPE_1EBVal];
		sliderSetPosition [1902, GFPPE_2EBVal];
		sliderSetPosition [1903, GFPPE_3EBVal];
		sliderSetPosition [1904, GFPPE_4EBVal];
		sliderSetPosition [1905, GFPPE_5EBVal];
		sliderSetPosition [1906, GFPPE_6EBVal];
		sliderSetPosition [1907, GFPPE_7EBVal];
		sliderSetPosition [1908, GFPPE_8EBVal];
		sliderSetPosition [1909, GFPPE_9EBVal];
		sliderSetPosition [1910, GFPPE_10EBVal];
		sliderSetPosition [1911, GFPPE_11EBVal];
		sliderSetPosition [1912, GFPPE_12EBVal];
		sliderSetPosition [1913, GFPPE_13EBVal];
		sliderSetPosition [1914, GFPPE_14EBVal];
		};
	
	PP_wetDP set [0,GFPPE_0EBVal];
	PP_wetDP set [1,GFPPE_1EBVal];
	PP_wetDP set [2,GFPPE_2EBVal];
	PP_wetDP set [3,GFPPE_3EBVal];
	PP_wetDP set [4,GFPPE_4EBVal];
	PP_wetDP set [5,GFPPE_5EBVal];
	PP_wetDP set [6,GFPPE_6EBVal];
	PP_wetDP set [7,GFPPE_7EBVal];
	PP_wetDP set [8,GFPPE_8EBVal];
	PP_wetDP set [9,GFPPE_9EBVal];
	PP_wetDP set [10,GFPPE_10EBVal];
	PP_wetDP set [11,GFPPE_11EBVal];
	PP_wetDP set [12,GFPPE_12EBVal];
	PP_wetDP set [13,GFPPE_13EBVal];
	PP_wetDP set [14,GFPPE_14EBVal];
	
	};
	case 4: {
	GFPPE_0EBVal = parseNumber ctrlText 1400;
	GFPPE_1EBVal = parseNumber ctrlText 1401;
	GFPPE_2EBVal = parseNumber ctrlText 1402;
	GFPPE_3EBVal = parseNumber ctrlText 1403;
	GFPPE_4EBVal = parseNumber ctrlText 1404;
	GFPPE_5EBVal = parseNumber ctrlText 1405;
	GFPPE_6EBVal = parseNumber ctrlText 1406;
	GFPPE_7EBVal = parseNumber ctrlText 1407;
	GFPPE_8EBVal = parseNumber ctrlText 1408;
	GFPPE_9EBVal = parseNumber ctrlText 1409;
	GFPPE_10EBVal = parseNumber ctrlText 1410;
	GFPPE_11EBVal = parseNumber ctrlText 1411;
	GFPPE_12EBVal = parseNumber ctrlText 1412;
	GFPPE_13EBVal = parseNumber ctrlText 1413;
	GFPPE_14EBVal = parseNumber ctrlText 1414;
	
	GFPPE_15EBVal = parseNumber ctrlText 1415;
	GFPPE_16EBVal = parseNumber ctrlText 1416;
	GFPPE_17EBVal = parseNumber ctrlText 1417;
	GFPPE_18EBVal = parseNumber ctrlText 1418;
	GFPPE_19EBVal = parseNumber ctrlText 1419;
	GFPPE_20EBVal = parseNumber ctrlText 1420;
	GFPPE_21EBVal = parseNumber ctrlText 1421;
	
	if (!_slidersource) then {
		sliderSetPosition [1900, GFPPE_0EBVal];
		sliderSetPosition [1901, GFPPE_1EBVal];
		sliderSetPosition [1902, GFPPE_2EBVal];
		sliderSetPosition [1903, GFPPE_3EBVal];
		sliderSetPosition [1904, GFPPE_4EBVal];
		sliderSetPosition [1905, GFPPE_5EBVal];
		sliderSetPosition [1906, GFPPE_6EBVal];
		sliderSetPosition [1907, GFPPE_7EBVal];
		sliderSetPosition [1908, GFPPE_8EBVal];
		sliderSetPosition [1909, GFPPE_9EBVal];
		sliderSetPosition [1910, GFPPE_10EBVal];
		sliderSetPosition [1911, GFPPE_11EBVal];
		sliderSetPosition [1912, GFPPE_12EBVal];
		sliderSetPosition [1913, GFPPE_13EBVal];
		sliderSetPosition [1914, GFPPE_14EBVal];
		
		sliderSetPosition [1915, GFPPE_15EBVal];
		sliderSetPosition [1916, GFPPE_16EBVal];
		sliderSetPosition [1917, GFPPE_17EBVal];
		sliderSetPosition [1918, GFPPE_18EBVal];
		sliderSetPosition [1919, GFPPE_19EBVal];
		sliderSetPosition [1920, GFPPE_20EBVal];
		sliderSetPosition [1921, GFPPE_21EBVal];
		};

	PP_colorCP set [0,GFPPE_0EBVal];
	PP_colorCP set [1,GFPPE_1EBVal];
	PP_colorCP set [2,GFPPE_2EBVal];
	PP_colorCP select 3 set [0,GFPPE_3EBVal];
	PP_colorCP select 3 set [1,GFPPE_4EBVal];
	PP_colorCP select 3 set [2,GFPPE_5EBVal];
	PP_colorCP select 3 set [3,GFPPE_6EBVal];
	PP_colorCP select 4 set [0,GFPPE_7EBVal];
	PP_colorCP select 4 set [1,GFPPE_8EBVal];
	PP_colorCP select 4 set [2,GFPPE_9EBVal];
	PP_colorCP select 4 set [3,GFPPE_10EBVal];
	PP_colorCP select 5 set [0,GFPPE_11EBVal];
	PP_colorCP select 5 set [1,GFPPE_12EBVal];
	PP_colorCP select 5 set [2,GFPPE_13EBVal];
	PP_colorCP select 5 set [3,GFPPE_14EBVal];
	
	PP_colorCP select 6 set [0,GFPPE_15EBVal];
	PP_colorCP select 6 set [1,GFPPE_16EBVal];
	PP_colorCP select 6 set [2,GFPPE_17EBVal];
	PP_colorCP select 6 set [3,GFPPE_18EBVal];
	PP_colorCP select 6 set [4,GFPPE_19EBVal];
	PP_colorCP select 6 set [5,GFPPE_20EBVal];
	PP_colorCP select 6 set [6,GFPPE_21EBVal];
	
	};
	case 5: {
	GFPPE_0EBVal = parseNumber ctrlText 1400;
	if (!_slidersource) then {
		sliderSetPosition [1900, GFPPE_0EBVal];
		};
	PP_dynamicP set [0,GFPPE_0EBVal];
	};
	case 6: {
	GFPPE_0EBVal = parseNumber ctrlText 1400;
	GFPPE_1EBVal = parseNumber ctrlText 1401;
	GFPPE_2EBVal = parseNumber ctrlText 1402;
	GFPPE_3EBVal = parseNumber ctrlText 1403;
	GFPPE_4EBVal = parseNumber ctrlText 1404;
	
	if (!_slidersource) then {
		sliderSetPosition [1900, GFPPE_0EBVal];
		sliderSetPosition [1901, GFPPE_1EBVal];
		sliderSetPosition [1902, GFPPE_2EBVal];
		sliderSetPosition [1903, GFPPE_3EBVal];
		sliderSetPosition [1904, GFPPE_4EBVal];
		};

	PP_filmP set [0,GFPPE_0EBVal];
	PP_filmP set [1,GFPPE_1EBVal];
	PP_filmP set [2,GFPPE_2EBVal];
	PP_filmP set [3,GFPPE_3EBVal];
	PP_filmP set [4,GFPPE_4EBVal];
	PP_filmP set [5,(cbChecked ((findDisplay 77006) displayCtrl 2800))];
	
	};
	case 7: {
	GFPPE_0EBVal = parseNumber ctrlText 1400;
	GFPPE_1EBVal = parseNumber ctrlText 1401;
	GFPPE_2EBVal = parseNumber ctrlText 1402;
	
	if (!_slidersource) then {
		sliderSetPosition [1900, GFPPE_0EBVal];
		sliderSetPosition [1901, GFPPE_1EBVal];
		sliderSetPosition [1902, GFPPE_2EBVal];
		};

	PP_colorIP set [0,GFPPE_0EBVal];
	PP_colorIP set [1,GFPPE_1EBVal];
	PP_colorIP set [2,GFPPE_2EBVal];

	};
	case 8: {
	GFPPE_0EBVal = parseNumber ctrlText 1400;
	GFPPE_1EBVal = parseNumber ctrlText 1401;
	GFPPE_2EBVal = parseNumber ctrlText 1402;
	GFPPE_3EBVal = parseNumber ctrlText 1403;
	
	if (!_slidersource) then {
		sliderSetPosition [1900, GFPPE_0EBVal];
		sliderSetPosition [1901, GFPPE_1EBVal];
		sliderSetPosition [1902, GFPPE_2EBVal];
		sliderSetPosition [1903, GFPPE_3EBVal];
		};

		
	PP_lightsP set [0,GFPPE_0EBVal];
	PP_lightsP set [1,GFPPE_1EBVal];
	PP_lightsP set [2,GFPPE_2EBVal];
	PP_lightsP set [3,GFPPE_3EBVal];

	};
	};
};

GFPPE_updateParSlider = 
{
_slider = _this select 0 select 0;
_sliderpos = _this select 0 select 1;
_sliderpos = (round (_sliderpos * 100))/100;
switch openPP do {
	case 1: {
	switch _slider do {
		case ((finddisplay 77001) displayctrl 1900): {		ctrlSetText [1400,str _sliderpos];
		};
		case ((finddisplay 77001) displayctrl 1901): {		ctrlSetText [1401,str _sliderpos];
		};
		case ((finddisplay 77001) displayctrl 1902): {		ctrlSetText [1402,str _sliderpos];
		};
		case ((finddisplay 77001) displayctrl 1903): {		ctrlSetText [1403,str _sliderpos];
		};
		};
	};
	case 2: {
	switch _slider do {
		case ((finddisplay 77002) displayctrl 1900): {		ctrlSetText [1400,str _sliderpos];
		};
		case ((finddisplay 77002) displayctrl 1901): {		ctrlSetText [1401,str _sliderpos];
		};
		};
	};
	case 3: {
	switch _slider do {
		case ((finddisplay 77003) displayctrl 1900): {		ctrlSetText [1400,str _sliderpos];		
		};
		case ((finddisplay 77003) displayctrl 1901): {		ctrlSetText [1401,str _sliderpos];		
		};
		case ((finddisplay 77003) displayctrl 1902): {		ctrlSetText [1402,str _sliderpos];		
		};
		case ((finddisplay 77003) displayctrl 1903): {		ctrlSetText [1403,str _sliderpos];		
		};
		case ((finddisplay 77003) displayctrl 1904): {		ctrlSetText [1404,str _sliderpos];		
		};
		case ((finddisplay 77003) displayctrl 1905): {		ctrlSetText [1405,str _sliderpos];		
		};
		case ((finddisplay 77003) displayctrl 1906): {		ctrlSetText [1406,str _sliderpos];		
		};
		case ((finddisplay 77003) displayctrl 1907): {		ctrlSetText [1407,str _sliderpos];		
		};
		case ((finddisplay 77003) displayctrl 1908): {		ctrlSetText [1408,str _sliderpos];		
		};
		case ((finddisplay 77003) displayctrl 1909): {		ctrlSetText [1409,str _sliderpos];		
		};
		case ((finddisplay 77003) displayctrl 1910): {		ctrlSetText [1410,str _sliderpos];		
		};
		case ((finddisplay 77003) displayctrl 1911): {		ctrlSetText [1411,str _sliderpos];		
		};
		case ((finddisplay 77003) displayctrl 1912): {		ctrlSetText [1412,str _sliderpos];		
		};
		case ((finddisplay 77003) displayctrl 1913): {		ctrlSetText [1413,str _sliderpos];		
		};
		case ((finddisplay 77003) displayctrl 1914): {		ctrlSetText [1414,str _sliderpos];		
		};
		};
		
	};
	case 4: {

	switch _slider do {
		case ((finddisplay 77004) displayctrl 1900): {		ctrlSetText [1400,str _sliderpos];		
		};
		case ((finddisplay 77004) displayctrl 1901): {		ctrlSetText [1401,str _sliderpos];		
		};
		case ((finddisplay 77004) displayctrl 1902): {		ctrlSetText [1402,str _sliderpos];		
		};
		case ((finddisplay 77004) displayctrl 1903): {		ctrlSetText [1403,str _sliderpos];		
		};
		case ((finddisplay 77004) displayctrl 1904): {		ctrlSetText [1404,str _sliderpos];		
		};
		case ((finddisplay 77004) displayctrl 1905): {		ctrlSetText [1405,str _sliderpos];		
		};
		case ((finddisplay 77004) displayctrl 1906): {		ctrlSetText [1406,str _sliderpos];		
		};
		case ((finddisplay 77004) displayctrl 1907): {		ctrlSetText [1407,str _sliderpos];		
		};
		case ((finddisplay 77004) displayctrl 1908): {		ctrlSetText [1408,str _sliderpos];		
		};
		case ((finddisplay 77004) displayctrl 1909): {		ctrlSetText [1409,str _sliderpos];		
		};
		case ((finddisplay 77004) displayctrl 1910): {		ctrlSetText [1410,str _sliderpos];		
		};
		case ((finddisplay 77004) displayctrl 1911): {		ctrlSetText [1411,str _sliderpos];		
		};
		case ((finddisplay 77004) displayctrl 1912): {		ctrlSetText [1412,str _sliderpos];		
		};
		case ((finddisplay 77004) displayctrl 1913): {		ctrlSetText [1413,str _sliderpos];		
		};
		case ((finddisplay 77004) displayctrl 1914): {		ctrlSetText [1414,str _sliderpos];
		};
		case ((finddisplay 77004) displayctrl 1915): {		ctrlSetText [1415,str _sliderpos];
		};
		case ((finddisplay 77004) displayctrl 1916): {		ctrlSetText [1416,str _sliderpos];
		};
		case ((finddisplay 77004) displayctrl 1917): {		ctrlSetText [1417,str _sliderpos];
		};
		case ((finddisplay 77004) displayctrl 1918): {		ctrlSetText [1418,str _sliderpos];
		};
		case ((finddisplay 77004) displayctrl 1919): {		ctrlSetText [1419,str _sliderpos];
		};
		case ((finddisplay 77004) displayctrl 1920): {		ctrlSetText [1420,str _sliderpos];
		};
		case ((finddisplay 77004) displayctrl 1921): {		ctrlSetText [1421,str _sliderpos];
		};
		
		};
	
	};
	case 5: {
	switch _slider do {
		case ((finddisplay 77005) displayctrl 1900): {		ctrlSetText [1400,str _sliderpos];
		};
		};

	};
	case 6: {
	switch _slider do {
		case ((finddisplay 77006) displayctrl 1900): {		ctrlSetText [1400,str _sliderpos];
		};
		case ((finddisplay 77006) displayctrl 1901): {		ctrlSetText [1401,str _sliderpos];
		};
		case ((finddisplay 77006) displayctrl 1902): {		ctrlSetText [1402,str _sliderpos];
		};
		case ((finddisplay 77006) displayctrl 1903): {		ctrlSetText [1403,str _sliderpos];
		};
		case ((finddisplay 77006) displayctrl 1904): {		ctrlSetText [1404,str _sliderpos];
		};
		};
	};
	case 7: {
	switch _slider do {
		case ((finddisplay 77007) displayctrl 1900): {
		ctrlSetText [1400,str _sliderpos];
		};
		case ((finddisplay 77007) displayctrl 1901): {
		ctrlSetText [1401,str _sliderpos];
		};
		case ((finddisplay 77007) displayctrl 1902): {
		ctrlSetText [1402,str _sliderpos];
		};
		case ((finddisplay 77007) displayctrl 1903): {
		ctrlSetText [1403,str _sliderpos];
		};
		case ((finddisplay 77007) displayctrl 1904): {
		ctrlSetText [1404,str _sliderpos];
		};
		};
	};
	case 8: {
	switch _slider do {
		case ((finddisplay 77008) displayctrl 1900): {
		ctrlSetText [1400,str _sliderpos];
		};
		case ((finddisplay 77008) displayctrl 1901): {
		ctrlSetText [1401,str _sliderpos];
		};
		case ((finddisplay 77008) displayctrl 1902): {
		ctrlSetText [1402,str _sliderpos];
		};
		case ((finddisplay 77008) displayctrl 1903): {
		ctrlSetText [1403,str _sliderpos];
		};
		};
	};
}; 
0 = [true] call GFPPE_updateParEB;
};

GFPPE_updateCommit = {
//player sidechat "update commit";
PP_committime = parseNumber ctrlText 1499;
};

GFPPE_copy = 
{
hintsilent "Copied to clipboard";

cbstring = "";
if (PP_1Enabled) then {
	_CRLF = toString [0x0D, 0x0A];
	cbstring = format ["PP_radial = ppEffectCreate [""radialBlur"",%1];%2PP_radial ppEffectEnable true;%3PP_radial ppEffectAdjust %4;%5PP_radial ppEffectCommit %6;%7",
	str PP_1Prior,
	_CRLF,_CRLF,
	str PP_radialP,_CRLF,
	str PP_committime,_CRLF];
	};
if (PP_2Enabled) then {
	_CRLF = toString [0x0D, 0x0A];
	cbstring = cbstring + format ["PP_chrom = ppEffectCreate [""ChromAberration"",%1];%2PP_chrom ppEffectEnable true;%3PP_chrom ppEffectAdjust %4;%5PP_chrom ppEffectCommit %6;%7",
	str PP_2Prior,
	_CRLF,_CRLF,
	str PP_chromP,_CRLF,
	str PP_committime,_CRLF];
	};
if (PP_3Enabled) then {
	_CRLF = toString [0x0D, 0x0A];
	cbstring = cbstring + format ["PP_wetD = ppEffectCreate [""WetDistortion"",%1];%2PP_wetD ppEffectEnable true;%3PP_wetD ppEffectAdjust %4;%5PP_wetD ppEffectCommit %6;%7",
	str PP_3Prior,
	_CRLF,_CRLF,
	str PP_wetDP,_CRLF,
	str PP_committime,_CRLF];
	};
if (PP_4Enabled) then {
	_CRLF = toString [0x0D, 0x0A];
	cbstring = cbstring + format ["PP_colorC = ppEffectCreate [""ColorCorrections"",%1];%2PP_colorC ppEffectEnable true;%3PP_colorC ppEffectAdjust %4;%5PP_colorC ppEffectCommit %6;%7",
	str PP_4Prior,
	_CRLF,_CRLF,
	str PP_colorCP,_CRLF,
	str PP_committime,_CRLF];
	};
if (PP_5Enabled) then {
	_CRLF = toString [0x0D, 0x0A];
	cbstring = cbstring + format ["PP_dynamic = ppEffectCreate [""DynamicBlur"",%1];%2PP_dynamic ppEffectEnable true;%3PP_dynamic ppEffectAdjust %4;%5PP_dynamic ppEffectCommit %6;%7",
	str PP_5Prior,
	_CRLF,_CRLF,
	str PP_dynamicP,_CRLF,
	str PP_committime,_CRLF];
	};
if (PP_6Enabled) then {
	_CRLF = toString [0x0D, 0x0A];
	cbstring = cbstring + format ["PP_film = ppEffectCreate [""FilmGrain"",%1];%2PP_film ppEffectEnable true;%3PP_film ppEffectAdjust %4;%5PP_film ppEffectCommit %6;%7",
	str PP_6Prior,
	_CRLF,_CRLF,
	str PP_filmP,_CRLF,
	str PP_committime,_CRLF];
	};
if (PP_7Enabled) then {
	_CRLF = toString [0x0D, 0x0A];
	cbstring = cbstring + format ["PP_colorI = ppEffectCreate [""ColorInversion"",%1];%2PP_colorI ppEffectEnable true;%3PP_colorI ppEffectAdjust %4;%5PP_colorI ppEffectCommit %6;%7",
	str PP_7Prior,
	_CRLF,_CRLF,
	str PP_colorIP,_CRLF,
	str PP_committime,_CRLF];
	};

_CRLF = toString [0x0D, 0x0A];
conditionsInfo = format ["// Date YYYY-MM-DD-HH-MM: %1. Overcast: %2. Fog: %3. Fog params: %4 %5",GFPPE_date,overcast,fog,GFPPE_fog,_CRLF];
cbstring = cbstring + conditionsInfo;

// save editor format	
_CRLF = toString [0x0D, 0x0A];
cbstring = cbstring + format ["// GF PostProcess Editor parameters: Copy the following line to clipboard and click Import in the editor.%1",_CRLF];
cbstring = cbstring + format ["//[[%1,%2,%3],[%4,%5,%6],[%7,%8,%9],[%10,%11,%12],[%13,%14,%15],[%16,%17,%18],[%19,%20,%21]]",
	str PP_1Enabled, str PP_1Prior,	str PP_radialP,
	str PP_2Enabled, str PP_2Prior,	str PP_chromP,
	str PP_3Enabled, str PP_3Prior,	str PP_wetDP,
	str PP_4Enabled, str PP_4Prior,	str PP_colorCP,
	str PP_5Enabled, str PP_5Prior,	str PP_dynamicP,
	str PP_6Enabled, str PP_6Prior,	str PP_filmP,
	str PP_7Enabled, str PP_7Prior,	str PP_colorIP,
	_CRLF];	

 	
copyToClipboard cbstring;
};

GFPPE_updatePriority = {
PP_updating = true;
PP_1Prior = parseNumber ctrlText 1400;
PP_2Prior = parseNumber ctrlText 1401;
PP_3Prior = parseNumber ctrlText 1402;
PP_4Prior = parseNumber ctrlText 1403;
PP_5Prior = parseNumber ctrlText 1404;
PP_6Prior = parseNumber ctrlText 1405;
PP_7Prior = parseNumber ctrlText 1406;

ppEffectDestroy PP_radial;
sleep 0.2;
PP_radial = ppEffectCreate ["radialBlur",PP_1Prior];
PP_radial ppEffectAdjust PP_radialP;

ppEffectDestroy PP_chrom;
sleep 0.2;
PP_chrom = ppEffectCreate ["ChromAberration",PP_2Prior];
PP_chrom ppEffectAdjust PP_chromP;

ppEffectDestroy PP_wetD;
sleep 0.2;
PP_wetD = ppEffectCreate ["WetDistortion",PP_3Prior];
PP_wetD ppEffectAdjust PP_wetDP;

ppEffectDestroy PP_colorC;
sleep 0.2;
PP_colorC = ppEffectCreate ["ColorCorrections",PP_4Prior];
PP_colorC ppEffectAdjust PP_colorCP;
//PP_colorC ppEffectForceInNVG true;

ppEffectDestroy PP_dynamic;
sleep 0.2;
PP_dynamic = ppEffectCreate ["DynamicBlur",PP_5Prior];
PP_dynamic ppEffectAdjust PP_dynamicP;

ppEffectDestroy PP_film;
sleep 0.2;
PP_film = ppEffectCreate ["FilmGrain",PP_6Prior];
PP_film ppEffectAdjust PP_filmP;

ppEffectDestroy PP_colorI;
sleep 0.2;
PP_colorI = ppEffectCreate ["ColorInversion",PP_7Prior];
PP_colorI ppEffectAdjust PP_colorIP;

PP_radial ppEffectCommit 0;
PP_chrom ppEffectCommit 0;
PP_wetD ppEffectCommit 0;
PP_colorC ppEffectCommit 0;
PP_dynamic ppEffectCommit 0;
PP_film ppEffectCommit 0;
PP_colorI ppEffectCommit 0;
sleep 0.3;
PP_updating = false;
};

GFPPE_ChangeTime = {
	GFPPE_date params ["_y","_m","_d","_h","_min"];
	if (_this select 1 == 1) then {
		_sliderpos = _this select 0 select 1;
		_hours = (floor _sliderpos);
		_minutes = round ((_sliderpos - _hours)*60);
		ctrlSetText [1413, str _hours];
		ctrlSetText [1414, str _minutes];
		GFPPE_date = [_y, _m, _d, _hours,_minutes];
		setdate GFPPE_date;
		sleep 0.2;
		sliderSetPosition [1979,fog];
	} else {
		_y = parseNumber ctrlText 1410;
		_m = parseNumber ctrlText 1411;
		_d = parseNumber ctrlText 1412;
		_h = parseNumber ctrlText 1413;
		_min = parseNumber ctrlText 1414;
		if (_y == 0 || _m == 0 || _d == 0) exitWith {};
		GFPPE_date = [_y,_m,_d,_h,_min] call BIS_fnc_fixDate;
		
		if !(GFPPE_date isEqualTo date) then {setdate GFPPE_date};
		sliderSetPosition [1900,_h + (_min /60)];
	};
};

GFPPE_ChangeOvercast = {
	if (!PP_updating) then {
		PP_updating = true;
		_sliderpos = _this select 0 select 1;
		[_sliderpos] call BIS_fnc_setOvercast;
		sleep 0.5;
		sleep 0.5;
		sliderSetPosition [1979,fog];
		PP_updating = false;
	};
};

GFPPE_setDefaults = {
	PP_updating = true;
	switch openPP do {
	case 1: {
		closeDialog 77001;
		PP_radiaP = +PP_radiaPD;
		};
	case 2: {
		closeDialog 77002;
		PP_chromP = +PP_chromPD;
		};
	case 3: {
		closeDialog 77003;
		PP_wetDP = +PP_wetDPD;
		};
	case 4: {
		closeDialog 77004;
		PP_colorCP = +PP_colorCPD;
		};
	case 5: {
		closeDialog 77005;
		PP_dynamicP = +PP_dynamicPD;
		};
	case 6: {
		closeDialog 77006;
		PP_filmP = +PP_filmPD;
		};
	case 7: {
		closeDialog 77007;
		PP_colorIP = +PP_colorIPD;
		};
	case 8: {
		PP_1Prior = 100;
		PP_2Prior = 200;
		PP_3Prior = 300;
		PP_4Prior = 1500;
		PP_5Prior = 500;
		PP_6Prior = 2000;
		PP_7Prior = 2500;
		ctrlSetText [1400, str PP_1Prior];
		ctrlSetText [1401, str PP_2Prior];
		ctrlSetText [1402, str PP_3Prior];
		ctrlSetText [1403, str PP_4Prior];
		ctrlSetText [1404, str PP_5Prior];
		ctrlSetText [1405, str PP_6Prior];
		ctrlSetText [1406, str PP_7Prior];
		sleep 0.2;
		0 = [] spawn GFPPE_updatePriority;
		};
	};
	IF (openPP != 8) then {null = [_this] execvm "scripts\other\GFPPE\GFPPE.sqf";};
	sleep 0.4;
	PP_updating = false;
};

GFPPE_import = {
para = [];
imtype = "";
importP = [copyFromClipboard,"-0123456789truefals,.[]"]call BIS_fnc_filterString;
para = call compile importP;
imtype = typename para;

if (imtype == "ARRAY") then {
	PP_updating = true;
	sleep 0.5;
	closeDialog 77001;
	closeDialog 77002;
	closeDialog 77003;
	closeDialog 77004;
	closeDialog 77005;
	closeDialog 77006;
	closeDialog 77007;
	closeDialog 77008;
	PP_1Enabled = para select 0 select 0;
	PP_2Enabled = para select 1 select 0;
	PP_3Enabled = para select 2 select 0;
	PP_4Enabled = para select 3 select 0;
	PP_5Enabled = para select 4 select 0;
	PP_6Enabled = para select 5 select 0;
	PP_7Enabled = para select 6 select 0;

	PP_1Prior = para select 0 select 1;
	PP_2Prior = para select 1 select 1;
	PP_3Prior = para select 2 select 1;
	PP_4Prior = para select 3 select 1;
	PP_5Prior = para select 4 select 1;
	PP_6Prior = para select 5 select 1;
	PP_7Prior = para select 6 select 1;

	PP_radialP = para select 0 select 2;
	PP_chromP = para select 1 select 2;
	PP_wetDP = para select 2 select 2;
	PP_colorCP = para select 3 select 2;
	PP_dynamicP = para select 4 select 2;
	PP_filmP = para select 5 select 2;
	PP_colorIP = para select 6 select 2;

	null = [_this] execvm "scripts\other\GFPPE\GFPPE.sqf";
	hint format ["Imported:\n%1",str para];
} else {hint format ["Can't import:\n%1",importp];};

PP_updating = false;
};

GFPPE_ChangeFog = {
_idc = ctrlIDC (_this select 0);

switch (_idc) do {
	case 1902: {		GFPPE_Fog set [0,sliderPosition 1902];
		};	
	case 1420: {		GFPPE_Fog set [1,parseNumber ctrlText 1420];
		};
	case 1421: {		GFPPE_Fog set [2,parseNumber ctrlText 1421];
		};
	default {};
};
0 setfog GFPPE_Fog;
true
};

decimalToString = {
_float = _this select 0; 
_decs = _this select 1; 
_integrs = (floor _float);
_dcmls = str (round ( (_float - _integrs) * (10^_decs) )); 
for "_i" from 1 to (_decs-(count _dcmls)) do {
	_dcmls = "0" + _dcmls;
};
_fpsstring = (str _integrs) + "." + _dcmls;
_fpsstring
};
