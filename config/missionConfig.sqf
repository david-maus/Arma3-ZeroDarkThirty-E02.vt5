

/////////////////////////////////////////////////////////////////////////////////////////
//------- Mission -------

BigLoadscreen              = 0;                     // Aktiviert einen großen Dummy Loadscreen nach dem briefing
BigLoadscreenTime          = 10;                    // Dauer des Big LoadScreens
briefing                   = 1;                     // Aktiviert das Briefing
intro                      = 0;                     // Aktiviert das Intro
mission                    = 1;                     // Führt alles in der mission.sqf aus
postEffects                = 0;                     // Aktiviert die Post Effekte

serverInfoMenu             = 0;                     // Aktiviert das Serverwindow beim joinen

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Gameplay -------

respawnOnGroup             = 1;                     // Respawn auf Gruppenmitgliedern
restoreLoadOut             = 0;                     // !Bei ACE3 nicht benötigt! - Stellt das Gear vor dem Tot nachdem Respawn wieder her

nvgBattery                 = 1;                     // NVG verbraucht batterien
nvgBatteryTime             = 60;                    // Dauer des NVG in Minuten

idSystem                   = 1;
westFaction                = 'American';
eastFaction                = 'Russian';
indFaction                 = 'Russian';
civFaction                 = 'American';

fuelSystem                 = 1;                     // Aktiviert das Fuel System, mehr Verbrauch in der Mission
fuelStanding               = 180;                   // Min. - Zeit bis der Tank leer ist bei stehendem Fahrzeug
fuelDriving                = 60;                    // Min. - Zeit bis der Tank leer ist bei normal fahrendem Fahrzeug
fuelDrivingMax             = 40;                    // Min. - Zeit bis der Tank leer ist bei schnell fahrendem Fahrzeug

r3fLogistic                = 0;                     // Aktiviere das R3F Logistiksystem

interiorLight              = 1;                     // Interior Licht in Helikoptern aktivieren
interiorLightMultiply      = 8;                     // Intensität des Lichtes

HelmGogglesEFX             = 1;                     // Aktiviert Helm und Gasmasken Sounds / Overlays

GasZone                    = 1;                     // Aktiviert das GasSkript
GasZoneMarkerName          = 'GasZone_';            // GasZone Markername ohne Nummer - Hier ist sofort Gas - Beispiel im Editor: GasZone_1
GasZoneDynamicMarkerName   = 'GasZoneDynamic_';     // GasZoneDynamic Markername ohne Nummer - Hier kann Gas während der Mission entstehen - Beispiel im Editor: GasZone_1 - Aktivierung:
GasFog_Mindistance         = 10;                    // Fog Min Radius around Marker
GasFog_CloudCount          = 30;
GasFog_CloudMinSize        = 5;
GasFog_CloudMaxSize        = 10;
GasFog_CloudHeight         = -0.3;
GasFog_CloudRespawn        = 0.1;
GasFog_Color               = [0.6,0.8,0.1];         // Fog Color - RGB, 0-1
GasFog_Transparency        = 0.5;                   // Fog Transparency, 0-1
GasFog_CloudRemoveSpeed    = 13;
GasFog_CloudMinLifetime    = 15;
GasFog_CloudMaxLifetime    = 25;
GasFog_AffectedByWind      = false;                 // Fog is affected by Wind
GasFog_WindStrenght        = 1;
GasFog_RandDirTime         = 2.1;                   // If Wind Enabled - Random Direction Change time
GasFog_RandDirStrenght     = 0.01;                  // If Wind Enabled - Random Direction Change Strenght
GasFog_MoveDirectionSpeed  = [0.1,0.01,0.1];         // If Wind Disabled - Random Direction Speed, XYZ


HaloStart                  = 0;                     // Aktiviert den Halo Start in der Mission
HaloStartName              = 'HaloStart';           // Markername für den Halo Start
HaloTargetName             = 'HaloTarget';          // Markername für die Landezone (HUD Overlay im Helm)
HaloStartHeight            = 8500;                  // Halo Start Höhe in Meter - ASL
HaloCargoOpenTime          = 35;                    // Sek. - Zeit bis die Cargotür öffnet und Green Light erscheint

explosions                 = 1;                     // Platziert random Bomben im Marker
explosionsMarkerName       = 'ExplosionsRandom';    // Markername für die explosions

DestroyBuildings           = 1;                     // Zerstört Häuser in Marker - Ausführung durch:
DestroyBuildingsName       = 'DestroyBuilding';     // Markername

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- AI -------

vcom                       = 1;                     // Aktiviert die VCOM AI
disableVCOMAIforAIR        = 1;                     // Deaktiviert die VCOM AI für Lufteinheiten

nvgOffLightOn              = 1;                     // Entfernt alle NVGs und IR Laser von Opfor und fügt Lampen hinzu - Während der Mission
removeGrenades             = 1;                     // Entfernt Granaten der AI - Start der Mission
noProne                    = 3;                     // KI von EAST und Independent legt sich nicht mehr hin - Während der Mission - 0=aus,1=sitzen oder stehen,2=nur stehen,3=wie 1 aber alternativ, scheint besser zu gehen

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Intel -------

timeMultiply               = 0;                     // Aktiviert die custom Tag / Nacht Zeit
dayMultiply                = 4;                     // Geschwindigkeit des Tages - 4 Entspricht 3 echten Stunden
nightMultiply              = 12;                    // Geschwindkeit der Nacht - 12 Entspricht 1 echten Stunde

fogLimiter                 = 0;                     // FogLimiter aktivieren für Alive weather
fogLimiterInterval         = 900;                   // Zeitinterval für die Checks
fogLimiterMax              = 0.2;                   // Maximaler Fog

VolumetricFog              = 1;                     // Aktiviert das FogScript, hat nichts mit dem Ingame oder Alive Fog zu tun.
VolFog_MaxDistance         = 200;                   // Fog Radius around player
VolFog_Mindistance         = 5;                    // Fog Min Radius around player
VolFog_CloudCount          = 20;
VolFog_CloudMinSize        = 5;
VolFog_CloudMaxSize        = 8;
VolFog_CloudHeight         = -0.3;
VolFog_CloudRespawn        = 0.1;
VolFog_Color               = [0.5,0.5,0.5];         // Fog Color - RGB, 0-1
VolFog_Transparency        = 0.15;                  // Fog Transparency, 0-1
VolFog_CloudRemoveSpeed    = 13;
VolFog_CloudMinLifetime    = 12;
VolFog_CloudMaxLifetime    = 20;
VolFog_AffectedByWind      = true;                     // Fog is affected by Wind
VolFog_WindStrenght        = 0.2;
VolFog_RandDirTime         = 2.1;                      // If Wind Enabled - Random Direction Change time
VolFog_RandDirStrenght     = 0.04;                      // If Wind Enabled - Random Direction Change Strenght
VolFog_MoveDirectionSpeed  = [4,6,0];                  // If Wind Disabled - Random Direction Speed, XYZ
VolFog_StartTime           = 0.1;
VolFog_Endtime             = 23.9;

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Environment -------

tpw                        = 0;                     // Aktiviert TPW (Ambient Sound & Music, Radiochatter, Fireflies) - tpw ordner in media muss vorhanden sein
dynamicFurniture           = 0;                     // Activates dynamic furniture script, Dynamische Möbeleinrichtung in Häusern
SafeZoneMapObjs            = 1;                     // Aktiviert 'SafeZone_1,2,3,4,5 etc.' Marker. Hausobjekte können nicht zerstört werden
lockDoors                  = 1;                     // Locked die Türen in Häusern in Marker mit Namen 'LockDoors_1,2,3,4,5 etc.'


/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Helper -------

vArsenalMaker              = 0;                     // ACE Arsenal für Objekte mit namen "vArsenal_1,2,3,4,5 etc."

DeadBodyMaker              = 1;                     // Tote für Units mit Namen "DeadBody_1,2,3,4,5 etc."

LightSourceMaker           = 1;                     // Lichter für Objekte/Module mit Namen "LightSource_1,2,3,4,5 etc."

aslAll                     = 0;                     // Advanced SlingLoad Mod - Man kann alles slingloaden

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Alive -------

aliveConfig                = 0;                     // Aktiviert das filtern der Alive AutoTasks

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Debug und Co -------

postProcessEditor          = 0;                     // Postprecess Editor aktivieren, sollte nur beim Missionsbau an sein um PostProcess Effekte zu bekommen
Teleport                   = 1;                     // Aktiviert teleport per map (alt + left click)
CaptureUnit                = 0;                     // Aktiviert Capturing per mausrad menü

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Camera -------

thirdPersonInBase          = 0;                     // Erlaube ThirdPerson nur im Markerbereich / Geht noch nicht
thirdPersonInBaseMarker    = 'blu01';               // Markername wo ThirdPerson erlaubt sein soll

/////////////////////////////////////////////////////////////////////////////////////////
