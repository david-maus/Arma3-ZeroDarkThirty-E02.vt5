


if (!isDedicated && hasInterface) then
{
    // Client functions //
    sleep 1;
    batteryTime = _this select 0;

    nvgBatteryLifetime = batteryTime * 60;
    nvgBatteryCurrent = nvgBatteryLifetime;


    with uiNamespace do {
    my_awesome_progressBar = findDisplay 46 ctrlCreate ["RscProgress", -1];
    my_awesome_progressBar ctrlSetPosition [ 1.345, 1.345];
    my_awesome_progressBar progressSetPosition 1;
    my_awesome_progressBar ctrlShow false;
    my_awesome_progressBar ctrlCommit 0;

    my_awesome_text = findDisplay 46 ctrlCreate ["RscStructuredText", -1];
    my_awesome_text ctrlSetPosition [ 1.345, 1.345 ];
    my_awesome_text ctrlShow false;
    my_awesome_text ctrlCommit 0;
    };

    nvgOn = {
        player setVariable ["nvg",true];
        if (alive player) then {
            playSound "nvgSound";
        };


        while { alive player && [] call nvgCheck } do {
            nvgBatteryCurrent = nvgBatteryCurrent - 1;
            progress = linearConversion[ 0, nvgBatteryLifetime, nvgBatteryCurrent, 0, 1 ];
            (uiNamespace getVariable "my_awesome_progressBar") ctrlShow true;
            (uiNamespace getVariable "my_awesome_text") ctrlShow true;
            (uiNamespace getVariable "my_awesome_progressBar") progressSetPosition progress;
            (uiNamespace getVariable "my_awesome_text") ctrlSetStructuredText parseText format["<t size='0.6'>BATTERY %1%2</t>", round(100*progress), "%"];
            uiSleep 1;
        };


        [] call nvgOff;

    };

    nvgOff = {
        player setVariable ["nvg",false];
        (uiNamespace getVariable "my_awesome_progressBar") ctrlShow false;
        (uiNamespace getVariable "my_awesome_text") ctrlShow false;
    };

    nvgDisabled = {
        ctrlDelete (uiNamespace getVariable "my_awesome_progressBar");
        ctrlDelete (uiNamespace getVariable "my_awesome_text");
        player action ["nvGogglesOff", player];
    };

    nvgCheck = {
        //Are we near a smoke shell
        //Are we not wearing a gas mask
        if (currentVisionMode player == 0) then {
            //We are wearing a gas mask. Return false as it does not matter if a smoke shell is near
            false
        } else {
            //If there is a smoke shell
            if (currentVisionMode player == 1) then {
                //Is it at rest AND within 10 meters of the player ( will need to experiment with magnitude threshold )
                true
            } else {
                //There is no smoke shell so Return false
                false
            };
        };
    };

        nvgBatteryEH = [ "nvgBatteryEH_ID", "onEachFrame", {

            if (nvgBatteryCurrent > 0) then {
                if (!(player getVariable ["nvg",false]) && { [] call nvgCheck }) then {
                    _nvgBatteryEHThread = [] spawn nvgOn;

                };
            } else {
                _nvgBatteryEH_Dis_Thread = [] spawn nvgDisabled;
            };

        }] call BIS_fnc_addStackedEventHandler;







};
