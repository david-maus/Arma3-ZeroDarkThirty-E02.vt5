if (!isServer) exitWith {};



_DayMP = _this select 0; 
_NightMP = _this select 1; 

while {true} do
{
    if (daytime >= 18 || daytime < 6) then
    {
    	//1200 setFog [0.9,0.05,20];
        setTimeMultiplier _NightMP
    }
    else
    {
        setTimeMultiplier _DayMP
    };


    uiSleep 30;
};