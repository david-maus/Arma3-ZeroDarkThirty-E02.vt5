if (!isServer) exitWith {};
// bitte remote calls verwenden, actions werden lokal auf client ausgeführt

[
    forestWound_1,
    [
        ['Joseph','Marding'],
        ['New York, NY','777 Brockton Avenue, Abington MA 2351'],
        'media\images\IDCARD\faces\white\5.jpg'
    ]
] call GEF_fnc_idSystemCreateID;



[
	'Frachtpapiere untersuchen',
	{
		// "_target","_caller","_ID"
		// Code
		[
			'Frachtpapiere',
			[
				"VX-r32 - Kampfstoff Gruppe V - Behälter: 24",
				"VX-r14 - Kampfstoff Gruppe V - Behälter: 7"
			]
		] call GEF_fnc_showHintC;
	},
	planeDocs,
	4,
	'search',
	true,
	true
] call GEF_fnc_addHoldAction;


[
    "Reden",                                                     // Name
    {
        // "_target","_caller","_ID"
        // Code
        [
            'Gespräch',
            [
                'Verwundeter Zivilist:',
                'Bitte helfen Sie mir! Die haben völlig den Verstand verloren! In dem Flugzeug sind zwei Männer, einer ist verletzt. Die schießen auf alles was sich bewegt!'
            ],
            [
                'Ich:',
                'Ganz ruhig, beruhigen Sie sich. Wir können Sie nicht mitnehmen aber unsere Leute werden Sie abholen.'
            ]
        ] call GEF_fnc_showTalkDialog;
    },
    forestWound_1,                                               // Target - allPlayers oder Object/unit
    false,                                                      // DeleteVehicle after
    false                                                       // Delete Action after
] call GEF_fnc_addAction;


[
	planeWound,							// Object the action is attached to
	"Durchsuchen",							// Title of the action
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",	// Idle icon shown on screen
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",	// Progress icon shown on screen
    "_this distance _target < 3",					// Condition for the action to be shown
	"_caller distance _target < 3",					// Condition for the action to progress
	{},								// Code executed when action starts
	{},								// Code executed on every progress tick
	{  _hintCcontent01 = parseText "<img size='4' image='media\images\opcom.paa' />";
		"Feindlicher Agent" hintC [
		_hintCcontent01,
		"asd"
	];
	hintC_arr_EH = findDisplay 72 displayAddEventHandler ["unload", {
		0 = _this spawn {
			_this select 0 displayRemoveEventHandler ["unload", hintC_arr_EH];
			hintSilent "";
		};
	}];},				// Code executed on completion
	{},								// Code executed on interrupted
	[],								// Arguments passed to the scripts as _this select 3
	2,								// Action duration [s]
	0,								// Priority
	true,								// Remove on completion
	false								// Show in unconscious state
] remoteExec ["BIS_fnc_holdActionAdd", [0,2] select isDedicated, planeWound]; // MP compatible implementation

[
	docDead,							// Object the action is attached to
	"Durchsuchen",							// Title of the action
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",	// Idle icon shown on screen
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",	// Progress icon shown on screen
    "_this distance _target < 3",					// Condition for the action to be shown
	"_caller distance _target < 3",					// Condition for the action to progress
	{},								// Code executed when action starts
	{},								// Code executed on every progress tick
	{ hint 'asd'},				// Code executed on completion
	{},								// Code executed on interrupted
	[],								// Arguments passed to the scripts as _this select 3
	2,								// Action duration [s]
	0,								// Priority
	true,								// Remove on completion
	false								// Show in unconscious state
] remoteExec ["BIS_fnc_holdActionAdd", [0,2] select isDedicated, docDead]; // MP compatible implementation
