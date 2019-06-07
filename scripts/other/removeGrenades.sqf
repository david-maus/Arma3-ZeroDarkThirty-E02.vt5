_badGrenades = ["HandGrenade", "MiniGrenade"];
{
  _unit = _x;
  if (!isPlayer _unit) then {
      {
    	if(_x in magazines _unit)then{_unit removeMagazines _x};
      }forEach _badGrenades;
  };

}forEach AllUnits;
