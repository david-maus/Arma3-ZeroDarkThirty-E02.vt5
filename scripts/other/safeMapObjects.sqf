/*"TREE", "SMALL TREE", "BUSH", "BUILDING", "HOUSE", "FOREST BORDER", "FOREST TRIANGLE",
"FOREST SQUARE", "CHURCH", "CHAPEL", "CROSS", "BUNKER", "FORTRESS", "FOUNTAIN",
"VIEW-TOWER", "LIGHTHOUSE", "QUAY", "FUELSTATION", "HOSPITAL", "FENCE", "WALL", "HIDE",
"BUSSTOP", "ROAD", "FOREST", "TRANSMITTER", "STACK", "RUIN", "TOURISM", "WATERTOWER",
"TRACK", "MAIN ROAD", "ROCK", "ROCKS", "POWER LINES", "RAILWAY", "POWERSOLAR",
"POWERWAVE", "POWERWIND", "SHIPWRECK", "TRAIL" */





    _safeName = _this select 0;
    {
        private "_a";
      _a = toArray _x;


          if (toString _a find _safeName >= 0 ) then {

             _markerSize = getMarkerSize _x select 0;
             _x setMarkerAlpha 0;

             {
         		_x allowdamage false;
         	}
         	forEach nearestTerrainObjects [getMarkerPos _x, ["House"], _markerSize];

        };

    } forEach allMapMarkers;
