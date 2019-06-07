params ["_period", "_fogLimit"];

while {true} do
{
	private ["_fog", "_decay", "_base"];

	if (fog > _fogLimit) then
	{
		_fog	= (random _fogLimit);
		_base	= (4 + (random 46));
		_decay	= (_fog / (_base / 6));

		(_period * 2) setFog [_fog, _decay, _base];
	};

	sleep (_period);
};