params ["_briefingReceive","_briefingTopic","_briefingText"];
//_briefingText = (_text call BIS_fnc_localize);
//_briefingText = [str _briefingText, '<img size="5" image="media\images\opcom.paa" />', ''] call CBA_fnc_replace;

[call compile _briefingReceive,[_briefingTopic,(_briefingText call BIS_fnc_localize)]] remoteExecCall ['FHQ_fnc_ttAddBriefing', 2];
