/*
	File: fn_moduleEffectsSmoke.sqf
	Author: Borivoj Hlava

	Description:
	Module function. Creates smoke on position of module (called usually by BIS_fnc_moduleEffectsEmitterCreator).

	Parameter(s):
	_this select 0 (Object) - Module logic.

	Returned value:
	None.
*/






_object = _this select 0;

smoke = "#particlesource" createVehicleLocal getpos _object;
smoke attachTo [_object,[0, 0, 1.5]];
smoke setVectorUp [0,0,-1];

//--- variables set by user
_colorRed = _this select 1;
_colorGreen = _this select 2;
_colorBlue = _this select 3;
_colorAlpha = _this select 4;
_timeout = 0;
_particleLifeTime = 50;
_particleDensity = 50;
_particleSize = 0.5;
_particleSpeed = 0.5;
_particleLifting = 0.8;
_windEffect = 0.1;
_effectSize = 0.5;
_expansion = 1;

if (_colorRed > 1) then {_colorRed = 1};
if (_colorRed < 0) then {_colorRed = 0};
if (_colorGreen > 1) then {_colorGreen = 1};
if (_colorGreen < 0) then {_colorGreen = 0};
if (_colorBlue > 1) then {_colorBlue = 1};
if (_colorBlue < 0) then {_colorBlue = 0};


//--- particle effect creation
smoke setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal_02",8,0,40,1],"","billboard",1,_particleLifeTime,[0,0,0],[0,0,2*_particleSpeed],0,0.05,0.04*_particleLifting,0.05*_windEffect,[1 *_particleSize + 1,1.8 * _particleSize + 15],
		[[0.7*_colorRed,0.7*_colorGreen,0.7*_colorBlue,0.7*_colorAlpha],[0.7*_colorRed,0.7*_colorGreen,0.7*_colorBlue,0.6*_colorAlpha],[0.7*_colorRed,0.7*_colorGreen,0.7*_colorBlue,0.45*_colorAlpha],
		[0.84*_colorRed,0.84*_colorGreen,0.84*_colorBlue,0.28*_colorAlpha],[0.84*_colorRed,0.84*_colorGreen,0.84*_colorBlue,0.16*_colorAlpha],[0.84*_colorRed,0.84*_colorGreen,0.84*_colorBlue,0.09*_colorAlpha],
		[0.84*_colorRed,0.84*_colorGreen,0.84*_colorBlue,0.06*_colorAlpha],[1*_colorRed,1*_colorGreen,1*_colorBlue,0.02*_colorAlpha],[1*_colorRed,1*_colorGreen,1*_colorBlue,0*_colorAlpha]],
		[1,0.55,0.35], 0.1, 0.08*_expansion, "", "", ""];
// ["JmenoModelu"],"NazevAnimace","TypAnimace",RychlostAnimace,DobaZivota,[Pozice],[SilaPohybu],Rotace,Hmotnost,Objem,Rubbing,[Velikost],
// [Barva],[FazeAnimace],PeriodaNahodnehoSmeru,IntensitaNahodnehoSmeru,"OnTimer","PredZnicenim","Objekt";
smoke setParticleRandom [_particleLifeTime/2, [0.5*_effectSize,0.5*_effectSize,0.2*_effectSize], [0.3,0.3,0.5], 1, 0, [0,0,0,0.06], 0, 0];
						//[lifeTime, position, moveVelocity, rotationVelocity, size, color, randomDirectionPeriod, randomDirectionIntensity]
smoke setDropInterval (1/_particleDensity);


//--- timeout
if (_timeout != 0) then {
	[smoke,_timeout] spawn {
		scriptName "fn_moduleEffectsSmoke_timeoutLoop";
		smoke = _this select 0;
		_timeout = _this select 1;

		sleep _timeout;
		deleteVehicle smoke;
	};
};
