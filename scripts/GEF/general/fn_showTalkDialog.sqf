params ["_title","_partner","_me"];
_partner params ["_partnerTitle","_partnerText"];
_me params ["_meTitle","_meText"];

createDialog "CreateDialog";

ctrlSetText [15616, _title];

ctrlSetText [25823, _meTitle];
ctrlSetText [267132, _meText];
ctrlSetText [3423, _partnerTitle];
ctrlSetText [7458, _partnerText];
