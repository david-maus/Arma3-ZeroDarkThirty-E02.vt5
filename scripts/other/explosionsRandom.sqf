if !(isServer) exitWith {};

/*
"HelicopterExploSmall"

"HelicopterExploBig"

"SmallSecondary"
*/



_explosionsMarker = _this select 0;
ExplosionsRandom = false;
{
    private "_a";
  _a = toArray _x;

  if (toString _a find _explosionsMarker >= 0 ) then {

     _x setMarkerAlpha 0;

     _pos    = _x;
     _area   = getMarkerSize _x select 0;
     _rounds = 45;
     _del    = 2.5;

     _height = 0;// increase this if you want the items to fall from the sky.
     _ammo = "grenade";// Ammo can be changed for larger effects.

     [_pos,_area,_rounds,_del,_height,_ammo] spawn {
         _pos    = _this select 0;
         _area   = _this select 1;
         _rounds = _this select 2;
         _del    = _this select 3;
         _height = _this select 4;
         _ammo = _this select 5;



             waitUntil {ExplosionsRandom};


              for [{_i = 0},{_i < _rounds},{_i = _i + 1}] do
             {
              _newpos = getMarkerPos _pos;
               _posX = _newpos select 0;
                _posY = _newpos select 1;
                _bomb = _ammo createVehicle[(_posX + random _area)-_area/2, (_posY + random _area)-_area/2,_height];
               _bomb = "GrenadeBase" createVehicle [(getpos _bomb select 0),(getpos _bomb select 1),-10];
             sleep (random _del)+0.5;// minimum delay 0.5, adjust for best results.
             };

         };







    };
  } forEach allMapMarkers;
