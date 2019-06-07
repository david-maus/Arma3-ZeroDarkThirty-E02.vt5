/////////////////////////////////////////////////////////////////////////////////////////
//------- Missionsbeschreibung -------

// Author
author                     = "David Maus";

// Missionsname
onLoadName                 = "Zero Dark Thirty";

// Missionsbeschreibung (wird unter dem LadeScreen angezeigt)
onLoadMission              = "Hold your breath";

// Missions Ladebild (z.b. 2048px x 1024px)
loadScreen                 = "media\images\loadScreen.jpg";

// Missionsbeschreibung in der Missionsauswahl
overviewText               = "Coming Soon";

// Missionsbeschreibung um die Mission feizuschalten
overviewTextLocked         = "";

// Missionsbild in der Missionsauswahl
overviewPicture            = "media\images\loadScreen.jpg";

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Spielsettings -------

enableDebugConsole         = 1;         // 0-only in editor / 1-SP and admins / 2-everyone
saving                     = 0;         // Deaktiviert das Speichern (SP only)
disabledAI                 = 1;         // Deaktiviert die KI der Playerslots
ShowGPS                    = 0;         // Deaktiviert das GPS Minfenster

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Respawn -------

respawn                    = 3;
respawnDialog              = 0;
respawnTemplates[]         = {"MenuPosition", "Tickets"};
respawnDelay               = 30;
respawnOnStart             = 0;
respawnButton              = 1;
aikills                    = 1;
joinUnassigned             = 1;
showChat                   = 0;
disableChannels[]          = {{0,true,true},{1,true,true},{2,true,true},{3,true,true},{4,true,true},{5,true,true},{6,true,true}};

class Header
{
    gameType =  Coop;
    minPlayers =  1;
    maxPlayers = 8;
};

class CfgDebriefing
{
	class win
	{
		title = "Mission Completedasd";
		subtitle = "subtitle";
		description = "You successfully rescued our forces and neutralized the spotters, despite being forced to retreat.";
		pictureBackground = "media\images\loadScreen.jpg";
		picture = "b_inf";
		pictureColor[] = {0.0,0.3,0.6,1};
	};
    class fail
	{
		title = "Mission Failed";
		subtitle = "subtitle";
		description = "You successfully rescued our forces and neutralized the spotters, despite being forced to retreat.";
		pictureBackground = "media\images\loadScreen.jpg";
		picture = "KIA";
		pictureColor[] = {0.8,0.1,0.1,1};
	};
    class fail2
	{
		title = "Mission Failed";
		subtitle = "Fehlgeschlagener H.A.L.O jump";
		description = "Euer Team hat es nicht geschafft zusammen in der Nähe der LZ zu landen.";
		pictureBackground = "media\images\loadScreen.jpg";
        picture = "KIA";
		pictureColor[] = {0.8,0.1,0.1,1};
	};
};
