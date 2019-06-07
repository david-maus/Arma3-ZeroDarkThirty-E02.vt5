if (!isServer) exitWith {};
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task_landing =

{
_filter         = group p1;
_taskId         = "task_landing";
_taskParent     = "";
_description    =
"Landen und erreichen Sie sicher das <marker name='task_landing'>Zielgebiet.</marker>
<br /><br />
Wir werden Sie so über das Gebiet fliegen, dass Sie kaum gleiten müssen.
<br /><br />
Springen Sie ab und lassen Sie ihren Fallschirm automatisch bei 250 Metern öffnen.";
_title          = "Landen und zur LZ begeben";
_shortTitle     = "";
_target         = "";
_initial        = "assigned";
_type           = "default";

[_filter,_taskId,_taskParent,_description,_title,_shortTitle,_target,_initial,_type] call GEF_fnc_addTask;

};
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task_global =

{
_filter         = group p1;
_taskId         = "task_global";
_taskParent     = "";
_description    =
"Eine Containerladung mit dem Kampfstoff 'VX' befand sich bis vor kurzem auf dem Weg zur Sicherung und Lagerung in eine geheimen Militärbasis nahe der russischen Grenze.
<br /><br />
Das Transportflugzeug, eine C130, wurde entführt und zum Absturz gebracht. Wir gehen davon aus, dass eine kleine Gruppierung namens 'Sentinels' dahintersteckt.
<br /><br />
Wir haben es hier mit bezahlten Söldnern und Ex CIA Agenten zu tun die wir schon länger auf der Abschussliste haben.
<br /><br />
Das VX darf unter keinen Umständen in deren Hände gelangen, oder noch schlimmer: Verbreitet werden.
<br /><br />
Sichern Sie als erstes das Flugzeug, danach werden Sie das nahegelegene Lager angreifen und neutralisieren. Sie kriegen weitere Anweisungen von OPCOM während Ihr da unten seid.
<br /><br />
Viel Glück.";
_title          = "Stellen Sie das VX-Gas Sicher und neutralisieren Sie die Sentinel-Söldner.";
_shortTitle     = "";
_target         = "";
_initial        = "created";
_type           = "default";

[_filter,_taskId,_taskParent,_description,_title,_shortTitle,_target,_initial,_type] call GEF_fnc_addTask;

};
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task_searchplane =

{
_filter         = group p1;
_taskId         = "task_searchplane";
_taskParent     = "task_global";
_description    =
"Durchqueren Sie die Waldschneise östlich der LZ und erreichen sie als erstes <marker name='task_searchplane'>das abgestürzte Flugzeug.</marker>
Finden Sie herraus ob die Ladung noch vorhanden ist.
<br />
Wir rechnen mit dem schlimmsten aber vielleicht haben Sie Glück.";
_title          = "Erreichen und durchsuchen Sie das Flugzeug";
_shortTitle     = "";
_target         = "";
_initial        = "created";
_type           = "search";

[_filter,_taskId,_taskParent,_description,_title,_shortTitle,_target,_initial,_type] call GEF_fnc_addTask;

};
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
task_searchhouse =

{
_filter         = group p1;
_taskId         = "task_searchhouse";
_taskParent     = "task_global";
_description    =
"Infiltrieren Sie das Grundstück nördlich der <marker name='task_searchhouse'>Absturzstelle</marker>.
<br />
Die sollten nicht wissen das Sie kommen. Erwarten Sie heftigen Feindkontakt.
<br/>
Nutzen Sie die Dunkelheit um so nah wie möglich ranzukommen. Auf dem offenen Feld sind Sie geliefert.";
_title          = "Infiltrieren Sie das Grundstück";
_shortTitle     = "";
_target         = "";
_initial        = "created";
_type           = "rifle";

[_filter,_taskId,_taskParent,_description,_title,_shortTitle,_target,_initial,_type] call GEF_fnc_addTask;

};
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
