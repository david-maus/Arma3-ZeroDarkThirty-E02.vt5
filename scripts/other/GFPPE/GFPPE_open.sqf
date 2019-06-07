//((findDisplay 77001) displayCtrl 2801) cbSetChecked PP_1Enabled;

{
((findDisplay (_x select 0)) displayCtrl (_x select 1)) cbSetChecked (_x select 2);
} foreach [
	[77001,2801,PP_1Enabled],
	[77001,2802,PP_2Enabled],
	[77001,2803,PP_3Enabled],
	[77001,2804,PP_4Enabled],
	[77001,2805,PP_5Enabled],
	[77001,2806,PP_6Enabled],
	[77001,2807,PP_7Enabled],
		
	[77002,2801,PP_1Enabled],
	[77002,2802,PP_2Enabled],
	[77002,2803,PP_3Enabled],
	[77002,2804,PP_4Enabled],
	[77002,2805,PP_5Enabled],
	[77002,2806,PP_6Enabled],
	[77002,2807,PP_7Enabled],
		
	[77003,2801,PP_1Enabled],
	[77003,2802,PP_2Enabled],
	[77003,2803,PP_3Enabled],
	[77003,2804,PP_4Enabled],
	[77003,2805,PP_5Enabled],
	[77003,2806,PP_6Enabled],
	[77003,2807,PP_7Enabled],
	
	[77003,2801,PP_1Enabled],
	[77003,2802,PP_2Enabled],
	[77003,2803,PP_3Enabled],
	[77003,2804,PP_4Enabled],
	[77003,2805,PP_5Enabled],
	[77003,2806,PP_6Enabled],
	[77003,2807,PP_7Enabled],
	
	[77004,2801,PP_1Enabled],
	[77004,2802,PP_2Enabled],
	[77004,2803,PP_3Enabled],
	[77004,2804,PP_4Enabled],
	[77004,2805,PP_5Enabled],
	[77004,2806,PP_6Enabled],
	[77004,2807,PP_7Enabled],
	
	[77005,2801,PP_1Enabled],
	[77005,2802,PP_2Enabled],
	[77005,2803,PP_3Enabled],
	[77005,2804,PP_4Enabled],
	[77005,2805,PP_5Enabled],
	[77005,2806,PP_6Enabled],
	[77005,2807,PP_7Enabled],
	
	[77006,2801,PP_1Enabled],
	[77006,2802,PP_2Enabled],
	[77006,2803,PP_3Enabled],
	[77006,2804,PP_4Enabled],
	[77006,2805,PP_5Enabled],
	[77006,2806,PP_6Enabled],
	[77006,2807,PP_7Enabled],
		
	[77007,2801,PP_1Enabled],
	[77007,2802,PP_2Enabled],
	[77007,2803,PP_3Enabled],
	[77007,2804,PP_4Enabled],
	[77007,2805,PP_5Enabled],
	[77007,2806,PP_6Enabled],
	[77007,2807,PP_7Enabled],
		
	[77008,2801,PP_1Enabled],
	[77008,2802,PP_2Enabled],
	[77008,2803,PP_3Enabled],
	[77008,2804,PP_4Enabled],
	[77008,2805,PP_5Enabled],
	[77008,2806,PP_6Enabled],
	[77008,2807,PP_7Enabled]
	
];

disableSerialization;
ctrlSetText [1499,str PP_committime];


switch openPP do {
	case 1: {
	GFPPE_0EBVal = PP_radialP select 0;
	GFPPE_1EBVal = PP_radialP select 1;
	GFPPE_2EBVal = PP_radialP select 2;
	GFPPE_3EBVal = PP_radialP select 3;
	
	{
		ctrlSetText _x;
	} foreach [
		[1400,str GFPPE_0EBVal],
		[1401,str GFPPE_1EBVal],
		[1402,str GFPPE_2EBVal],
		[1403,str GFPPE_3EBVal]
	  ];
	  
	sliderSetRange [1900,0,0.2];	sliderSetPosition [1900,GFPPE_0EBVal];	sliderSetSpeed [1900,0.05,0.1];
	sliderSetRange [1901,0,0.2];	sliderSetPosition [1901,GFPPE_1EBVal];	sliderSetSpeed [1901,0.05,0.1];
	sliderSetRange [1902,0,0.5];	sliderSetPosition [1902,GFPPE_2EBVal];	sliderSetSpeed [1902,0.02,1];
	sliderSetRange [1903,0,0.5];	sliderSetPosition [1903,GFPPE_3EBVal];	sliderSetSpeed [1903,0.02,1];
	};
	case 2: {
	GFPPE_0EBVal = PP_chromP select 0;
	GFPPE_1EBVal = PP_chromP select 1;
	GFPPE_2EBVal = PP_chromP select 2;
	{
		ctrlSetText _x;
	} foreach [
		[1400,str GFPPE_0EBVal],
		[1401,str GFPPE_1EBVal]
	  ];
	((findDisplay 77002) displayCtrl 2800) cbSetChecked GFPPE_2EBVal;
	  
	sliderSetRange [1900,-1,1];	sliderSetPosition [1900,GFPPE_0EBVal];	sliderSetSpeed [1900,0.005,0.1];
	sliderSetRange [1901,-1,1];	sliderSetPosition [1901,GFPPE_1EBVal];	sliderSetSpeed [1901,0.005,0.1];
	};
	case 3: {
	GFPPE_0EBVal = PP_wetDP select 0;
	GFPPE_1EBVal = PP_wetDP select 1;
	GFPPE_2EBVal = PP_wetDP select 2;
	GFPPE_3EBVal = PP_wetDP select 3;
	GFPPE_4EBVal = PP_wetDP select 4;
	GFPPE_5EBVal = PP_wetDP select 5;
	GFPPE_6EBVal = PP_wetDP select 6;
	GFPPE_7EBVal = PP_wetDP select 7;
	GFPPE_8EBVal = PP_wetDP select 8;
	GFPPE_9EBVal = PP_wetDP select 9;
	GFPPE_10EBVal = PP_wetDP select 10;
	GFPPE_11EBVal = PP_wetDP select 11;
	GFPPE_12EBVal = PP_wetDP select 12;
	GFPPE_13EBVal = PP_wetDP select 13;
	GFPPE_14EBVal = PP_wetDP select 14;

	{
		ctrlSetText _x;
	} foreach [
		[1400,str GFPPE_0EBVal],
		[1401,str GFPPE_1EBVal],
		[1402,str GFPPE_2EBVal],
		[1403,str GFPPE_3EBVal],
		[1404,str GFPPE_4EBVal],
		[1405,str GFPPE_5EBVal],
		[1406,str GFPPE_6EBVal],
		[1407,str GFPPE_7EBVal],
		[1408,str GFPPE_8EBVal],
		[1409,str GFPPE_9EBVal],
		[1410,str GFPPE_10EBVal],
		[1411,str GFPPE_11EBVal],
		[1412,str GFPPE_12EBVal],
		[1413,str GFPPE_13EBVal],
		[1414,str GFPPE_14EBVal]
	  ];
	sliderSetRange [1900,-10,10];	sliderSetPosition [1900,GFPPE_0EBVal];	sliderSetSpeed [1900,0.1,0.1];
	sliderSetRange [1901,-10,10];	sliderSetPosition [1901,GFPPE_1EBVal];	sliderSetSpeed [1901,0.1,1];
	sliderSetRange [1902,-10,10];	sliderSetPosition [1902,GFPPE_2EBVal];	sliderSetSpeed [1902,0.1,1];
	
	sliderSetRange [1903,-5,5];	sliderSetPosition [1903,GFPPE_3EBVal];	sliderSetSpeed [1903,0.02,1];
	sliderSetRange [1904,-5,5];	sliderSetPosition [1904,GFPPE_4EBVal];	sliderSetSpeed [1904,0.02,1];
	sliderSetRange [1905,-5,5];	sliderSetPosition [1905,GFPPE_5EBVal];	sliderSetSpeed [1905,0.02,1];
	sliderSetRange [1906,-5,5];	sliderSetPosition [1906,GFPPE_6EBVal];	sliderSetSpeed [1906,0.02,1];
	
	sliderSetRange [1907,-1,2];	sliderSetPosition [1907,GFPPE_7EBVal];	sliderSetSpeed [1907,0.02,1];
	sliderSetRange [1908,-1,2];	sliderSetPosition [1908,GFPPE_8EBVal];	sliderSetSpeed [1908,0.02,1];
	sliderSetRange [1909,-1,2];	sliderSetPosition [1909,GFPPE_9EBVal];	sliderSetSpeed [1909,0.02,1];
	sliderSetRange [1910,-1,2];	sliderSetPosition [1910,GFPPE_10EBVal];	sliderSetSpeed [1910,0.02,1];
	
	sliderSetRange [1911,-2,2];	sliderSetPosition [1911,GFPPE_11EBVal];	sliderSetSpeed [1911,0.01,1];
	sliderSetRange [1912,-2,2];	sliderSetPosition [1912,GFPPE_12EBVal];	sliderSetSpeed [1912,0.01,1];
	sliderSetRange [1913,-5,5];	sliderSetPosition [1913,GFPPE_13EBVal];	sliderSetSpeed [1913,0.1,1];
	sliderSetRange [1914,-5,5];	sliderSetPosition [1914,GFPPE_14EBVal];	sliderSetSpeed [1914,0.1,1];
	};
	case 4: {
	GFPPE_0EBVal = PP_colorCP select 0;
	GFPPE_1EBVal = PP_colorCP select 1;
	GFPPE_2EBVal = PP_colorCP select 2;
	
	GFPPE_3EBVal = PP_colorCP select 3 select 0;
	GFPPE_4EBVal = PP_colorCP select 3 select 1;
	GFPPE_5EBVal = PP_colorCP select 3 select 2;
	GFPPE_6EBVal = PP_colorCP select 3 select 3;
	
	GFPPE_7EBVal = PP_colorCP select 4 select 0;
	GFPPE_8EBVal = PP_colorCP select 4 select 1;
	GFPPE_9EBVal = PP_colorCP select 4 select 2;
	GFPPE_10EBVal = PP_colorCP select 4 select 3;
	
	GFPPE_11EBVal = PP_colorCP select 5 select 0;
	GFPPE_12EBVal = PP_colorCP select 5 select 1;
	GFPPE_13EBVal = PP_colorCP select 5 select 2;
	GFPPE_14EBVal = PP_colorCP select 5 select 3;
	
	GFPPE_15EBVal = PP_colorCP select 6 select 0;
	GFPPE_16EBVal = PP_colorCP select 6 select 1;
	GFPPE_17EBVal = PP_colorCP select 6 select 2;
	GFPPE_18EBVal = PP_colorCP select 6 select 3;
	GFPPE_19EBVal = PP_colorCP select 6 select 4;
	GFPPE_20EBVal = PP_colorCP select 6 select 5;
	GFPPE_21EBVal = PP_colorCP select 6 select 6;

	{
		ctrlSetText _x;
	} foreach [
		[1400,str GFPPE_0EBVal],
		[1401,str GFPPE_1EBVal],
		[1402,str GFPPE_2EBVal],
		[1403,str GFPPE_3EBVal],
		[1404,str GFPPE_4EBVal],
		[1405,str GFPPE_5EBVal],
		[1406,str GFPPE_6EBVal],
		[1407,str GFPPE_7EBVal],
		[1408,str GFPPE_8EBVal],
		[1409,str GFPPE_9EBVal],
		[1410,str GFPPE_10EBVal],
		[1411,str GFPPE_11EBVal],
		[1412,str GFPPE_12EBVal],
		[1413,str GFPPE_13EBVal],
		[1414,str GFPPE_14EBVal],
		
		[1415,str GFPPE_15EBVal],
		[1416,str GFPPE_16EBVal],
		[1417,str GFPPE_17EBVal],
		[1418,str GFPPE_18EBVal],
		[1419,str GFPPE_19EBVal],
		[1420,str GFPPE_20EBVal],
		[1421,str GFPPE_21EBVal]
	  ];
	
	sliderSetRange [1900,0,2];	sliderSetPosition [1900,GFPPE_0EBVal];	sliderSetSpeed [1900,0.05,1];
	sliderSetRange [1901,0,2];	sliderSetPosition [1901,GFPPE_1EBVal];	sliderSetSpeed [1901,0.05,1];
	sliderSetRange [1902,-1,1];	sliderSetPosition [1902,GFPPE_2EBVal];	sliderSetSpeed [1902,0.05,1];
	
	sliderSetRange [1903,-2,2];	sliderSetPosition [1903,GFPPE_3EBVal];	sliderSetSpeed [1903,0.05,1];
	sliderSetRange [1904,-2,2];	sliderSetPosition [1904,GFPPE_4EBVal];	sliderSetSpeed [1904,0.05,1];
	sliderSetRange [1905,-2,2];	sliderSetPosition [1905,GFPPE_5EBVal];	sliderSetSpeed [1905,0.05,1];
	sliderSetRange [1906,-1,1];	sliderSetPosition [1906,GFPPE_6EBVal];	sliderSetSpeed [1906,0.05,1];
	
	sliderSetRange [1907,-5,5];	sliderSetPosition [1907,GFPPE_7EBVal];	sliderSetSpeed [1907,0.05,1];
	sliderSetRange [1908,-5,5];	sliderSetPosition [1908,GFPPE_8EBVal];	sliderSetSpeed [1908,0.05,1];
	sliderSetRange [1909,-5,5];	sliderSetPosition [1909,GFPPE_9EBVal];	sliderSetSpeed [1909,0.05,1];
	sliderSetRange [1910,-1,2];	sliderSetPosition [1910,GFPPE_10EBVal];	sliderSetSpeed [1910,0.05,1];
	
	sliderSetRange [1911,-4,4];	sliderSetPosition [1911,GFPPE_11EBVal];	sliderSetSpeed [1911,0.05,1];
	sliderSetRange [1912,-4,4];	sliderSetPosition [1912,GFPPE_12EBVal];	sliderSetSpeed [1912,0.05,1];
	sliderSetRange [1913,-4,4];	sliderSetPosition [1913,GFPPE_13EBVal];	sliderSetSpeed [1913,0.05,1];
	sliderSetRange [1914,-1,1];	sliderSetPosition [1914,GFPPE_14EBVal];	sliderSetSpeed [1914,0.05,1];
	
	sliderSetRange [1915,0,1];	sliderSetPosition [1915,GFPPE_15EBVal];	sliderSetSpeed [1915,0.05,1];
	sliderSetRange [1916,0,1];	sliderSetPosition [1916,GFPPE_16EBVal];	sliderSetSpeed [1916,0.05,1];
	sliderSetRange [1917,-1,1];	sliderSetPosition [1917,GFPPE_17EBVal];	sliderSetSpeed [1917,0.05,1];
	sliderSetRange [1918,-1,1];	sliderSetPosition [1918,GFPPE_18EBVal];	sliderSetSpeed [1918,0.05,1];
	sliderSetRange [1919,-1,1];	sliderSetPosition [1919,GFPPE_19EBVal];	sliderSetSpeed [1919,0.05,1];
	sliderSetRange [1920,0,1];	sliderSetPosition [1920,GFPPE_20EBVal];	sliderSetSpeed [1920,0.05,1];
	sliderSetRange [1921,-5,5];	sliderSetPosition [1921,GFPPE_21EBVal];	sliderSetSpeed [1921,0.05,1];
	
	};
	case 5: {
	GFPPE_0EBVal = PP_dynamicP select 0;

	{
		ctrlSetText _x;
	} foreach [
		[1400,str GFPPE_0EBVal]
	  ];
	sliderSetRange [1900,0,20];	sliderSetPosition [1900,GFPPE_0EBVal];	sliderSetSpeed [1900,0.1,0.1];
	};
	case 6: {
	GFPPE_0EBVal = PP_filmP select 0;
	GFPPE_1EBVal = PP_filmP select 1;
	GFPPE_2EBVal = PP_filmP select 2;
	GFPPE_3EBVal = PP_filmP select 3;
	GFPPE_4EBVal = PP_filmP select 4;
	GFPPE_5EBVal = PP_filmP select 5;
	
	{
		ctrlSetText _x;
	} foreach [
		[1400,str GFPPE_0EBVal],
		[1401,str GFPPE_1EBVal],
		[1402,str GFPPE_2EBVal],
		[1403,str GFPPE_3EBVal],
		[1404,str GFPPE_4EBVal]
	  ];
	
	((findDisplay 77006) displayCtrl 2800) cbSetChecked GFPPE_5EBVal;	
	  
	sliderSetRange [1900,0,1];	sliderSetPosition [1900,GFPPE_0EBVal];	sliderSetSpeed [1900,0.02,0.1];
	sliderSetRange [1901,0,20];	sliderSetPosition [1901,GFPPE_1EBVal];	sliderSetSpeed [1901,0.2,1];
	sliderSetRange [1902,0,8];	sliderSetPosition [1902,GFPPE_2EBVal];	sliderSetSpeed [1902,0.2,1];
	
	sliderSetRange [1903,0,2];	sliderSetPosition [1903,GFPPE_3EBVal];	sliderSetSpeed [1903,0.05,1];
	sliderSetRange [1904,0,2];	sliderSetPosition [1904,GFPPE_4EBVal];	sliderSetSpeed [1904,0.05,1];
	};
	case 7: {
	GFPPE_0EBVal = PP_colorIP select 0;
	GFPPE_1EBVal = PP_colorIP select 1;
	GFPPE_2EBVal = PP_colorIP select 2;
	
	{
		ctrlSetText _x;
	} foreach [
		[1400,str GFPPE_0EBVal],
		[1401,str GFPPE_1EBVal],
		[1402,str GFPPE_2EBVal]
	  ];	
	sliderSetRange [1900,0,1];	sliderSetPosition [1900,GFPPE_0EBVal];	sliderSetSpeed [1900,0.1,1];
	sliderSetRange [1901,0,1];	sliderSetPosition [1901,GFPPE_1EBVal];	sliderSetSpeed [1901,0.1,1];
	sliderSetRange [1902,0,1];	sliderSetPosition [1902,GFPPE_2EBVal];	sliderSetSpeed [1902,0.1,1];
	  
	};
	case 8: {
	GFPPE_0EBVal = PP_1Prior;
	GFPPE_1EBVal = PP_2Prior;
	GFPPE_2EBVal = PP_3Prior;
	GFPPE_3EBVal = PP_4Prior;
	GFPPE_4EBVal = PP_5Prior;
	GFPPE_5EBVal = PP_6Prior;
	GFPPE_6EBVal = PP_7Prior;
	
	{
		ctrlSetText _x;
	} foreach [
		[1400,str GFPPE_0EBVal],
		[1401,str GFPPE_1EBVal],
		[1402,str GFPPE_2EBVal],
		[1403,str GFPPE_3EBVal],
		[1404,str GFPPE_4EBVal],
		[1405,str GFPPE_5EBVal],
		[1406,str GFPPE_6EBVal]
	  ];	
	  
	date params ["_y","_m","_d","_h","_min"];
	ctrlSetText [1410,str _y]; 
	ctrlSetText [1411,str _m];
	ctrlSetText [1412,str _d];
	ctrlSetText [1413,str _h];
	ctrlSetText [1414,str _min];
	
	sliderSetRange [1900,0,24];
	sliderSetPosition [1900,daytime];
	sliderSetSpeed [1900,0.25,0.25];

	sliderSetRange [1901,0.01,1];
	sliderSetPosition [1901,overcast];
	sliderSetSpeed [1901,0.05,0.05];

	sliderSetRange [1902,0.00,1];
	sliderSetPosition [1902,fog];
	sliderSetSpeed [1902,0.05,0.05];
		
	ctrlSetText [1420, str (GFPPE_Fog select 1)];
	ctrlSetText [1421, str (GFPPE_Fog select 2)];
		
	};

};
