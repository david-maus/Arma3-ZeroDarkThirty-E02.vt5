////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////                             GEF MissionCreate Framework 1.0                                  ///////////
///////////                                       David Maus                                             ///////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// scripts\_mission\briefing.sqf - Enthält das Briefing der Mission





if (!isServer) exitWith {};
[
    group p1,
        ["Hintergrund",
"HINTERGRUND UND DETAILS:
<br/>
<br/>
Eine Containerladung mit dem Kampfstoff 'VX' befand sich bis vor kurzem auf dem Weg zur Sicherung und Lagerung in eine geheimen Militärbasis nahe der russischen Grenze.
<br /><br />
Das Transportflugzeug, eine C130, wurde entführt und zum Absturz gebracht. Wir gehen davon aus, dass eine kleine Gruppierung namens 'Sentinels' dahintersteckt.
<br /><br />
Wir haben es hier mit bezahlten Söldnern und Ex CIA Agenten zu tun die wir schon länger auf der Abschussliste haben.
<br /><br />
Das VX darf unter keinen Umständen in deren Hände gelangen, oder noch schlimmer: Verbreitet werden.
<br /><br />
Sichern Sie als erstes das Flugzeug, danach werden Sie das nahegelegene Lager angreifen und neutralisieren. Sie kriegen weitere Anweisungen von OPCOM während Ihr da unten seid.
<br /><br />
Viel Glück.
"],

        ["Mission",
"MISSION UND BEFEHLE:
<br/>
<br/>
Sie werden einen H.A.L.O. Jump absolvieren um unentdeckt und schnell das Ziel zu erreichen.
<br />
<br />
Ihre gesamte Ausrüstung wird im Backpack verstaut, welcher an Ihren Bauch geschnallt wird um Platz für den Fallschirm zu haben.
Am Boden angekommen, sammeln Sie das Team an der LZ und begeben sich dann umgehend zum Flugzeugwrack, östlich der LZ.
<br />
<br />
Die höchste Priorität ist es die VX Behälter zu finden und zu sichern bevor es zum Einsatz kommen kann.
<br />
Für den Notfall werden Sie Gasmasken in Ihrer Ausrüstung finden.
<br />
<br />
Die zweite Priorität ist es die feindliche Gruppierung der Sentinels auszuschalten.
<br/><br /><br />
Gelände und Zugang:
<br/><br />
<img width='370' image='media\images\briefing\briefing_house.jpg' />
"],

        ["Feindinformation",
"FEINDLICHE EINHEITEN UND INFOS:
<br/>
<br/>
2 Platoons of expertly trained Infantry.  Possible vehicle support.
"],

        ["Daten",
"BILDER UND DATEN:
<br/>
<br/>
VX Behälter:
<br/><br />
<img width='370' image='media\images\briefing\briefing_gas_01.jpg' />
<br/>
<img width='370' image='media\images\briefing\briefing_gas_02.jpg' />
<br/>
<img width='370' image='media\images\briefing\briefing_gas_03.jpg' />
<br/>
<img width='370' image='media\images\briefing\briefing_gas_04.jpg' />
<br/>
<img width='370' image='media\images\briefing\briefing_gas_05.jpg' />
<br/>
<img width='370' image='media\images\briefing\briefing_gas_06.jpg' />
<br/>
<img width='370' image='media\images\briefing\briefing_gas_07.jpg' />
<br/><br /><br />
Gelände und Zugang:
<br/><br />
<img width='370' image='media\images\briefing\briefing_house.jpg' />
<br/>
Wrack und Feld:
<br/>
<img width='370' image='media\images\briefing\briefing_overview_01.jpg' />
<br/>
<img width='370' image='media\images\briefing\briefing_overview_02.jpg' />
<br/>
<img width='370' image='media\images\briefing\briefing_overview_03.jpg' />
"],

        ["Team",
"TEAM:
<br/>
<br/>
SEAL Team Alpha-1
<br /><br />
<img width='370' image='media\images\briefing\briefing_team.jpg' />
"],

        ["Ausrüstung",
"AUSRÜSTUNG:
<br/>
<br/>
Ihre Ausrüstung besteht aus folgendem:
<br />
<br />
1x MK18MOD1 (2x M203 a 4 HEs) - 10 Magazine
<br />
1x Glock 17 - 2 Magazine
<br />
1x WideScreen NVG, Gen 4
<br />
<br />
So wie weitere übliche Ausrüstungsgegestände:
<br />
Karte, GPS, MicroDagr, Medicset etc.
"],

        ["Credits",
"CREDITS:
<br/>
<br/>
David Maus
"]

] call FHQ_fnc_ttAddBriefing;
