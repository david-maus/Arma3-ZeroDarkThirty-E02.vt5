
while {true} do {
waituntil {!PP_updating};

if (PP_committime == 0) then {
	ctrlEnable [1610,false];
	if (PP_1Enabled) then {
		PP_radial ppeffectAdjust PP_radialP;
		PP_radial ppEffectEnable true;
		PP_radial ppEffectCommit PP_committime;
		} else { PP_radial ppEffectEnable false;};

	if (PP_2Enabled) then {
		PP_chrom ppeffectAdjust PP_chromP;
		PP_chrom ppEffectEnable true;
		PP_chrom ppEffectCommit PP_committime;
		} else { PP_chrom ppEffectEnable false;};
		
	if (PP_3Enabled) then {
		PP_wetD ppeffectAdjust PP_wetDP;
		PP_wetD ppEffectEnable true;
		PP_wetD ppEffectCommit PP_committime;
		} else { PP_wetD ppEffectEnable false;};
		
	if (PP_4Enabled) then {
		PP_colorC ppeffectAdjust PP_colorCP;
		PP_colorC ppEffectEnable true;
		PP_colorC ppEffectCommit PP_committime;
		} else { PP_colorC ppEffectEnable false;};

	if (PP_5Enabled) then {
		PP_dynamic ppeffectAdjust PP_dynamicP;
		PP_dynamic ppEffectEnable true;
		PP_dynamic ppEffectCommit PP_committime;
		} else { PP_dynamic ppEffectEnable false;};

	if (PP_6Enabled) then {
		PP_film ppeffectAdjust PP_filmP;
		PP_film ppEffectEnable true;
		PP_film ppEffectCommit PP_committime;
		} else { PP_film ppEffectEnable false;};
		
	if (PP_7Enabled) then {
		PP_colorI ppeffectAdjust PP_colorIP;
		PP_colorI ppEffectEnable true;
		PP_colorI ppEffectCommit PP_committime;
		} else { PP_colorI ppEffectEnable false;};
		
		sleep 0.2;
	} else {

	PP_radial ppeffectAdjust PP_radialPD;
	PP_radial ppEffectCommit PP_committime;
	PP_chrom ppeffectAdjust PP_chromPD;
	PP_chrom ppEffectCommit PP_committime;
	PP_wetD ppeffectAdjust PP_wetDPD;
	PP_wetD ppEffectCommit PP_committime;
	PP_colorC ppeffectAdjust PP_colorCPD;
	PP_colorC ppEffectCommit PP_committime;
	PP_dynamic ppeffectAdjust PP_dynamicPD;
	PP_dynamic ppEffectCommit PP_committime;
	PP_film ppeffectAdjust PP_filmPD;
	PP_film ppEffectCommit PP_committime;
	PP_colorI ppeffectAdjust PP_colorIPD;
	PP_colorI ppEffectCommit PP_committime;
	
	
	ctrlEnable [1610,true];
	waituntil {sleep 0.2;PP_committing}; //wait for button
	ctrlEnable [1610,false];
	ctrlSetText [1610,"Wait"];
	
		
	if (PP_1Enabled) then {
		PP_radial ppeffectAdjust PP_radialP;
		PP_radial ppEffectEnable true;
		PP_radial ppEffectCommit PP_committime;
		} else { PP_radial ppEffectEnable false;};

	if (PP_2Enabled) then {
		PP_chrom ppeffectAdjust PP_chromP;
		PP_chrom ppEffectEnable true;
		PP_chrom ppEffectCommit PP_committime;
		} else { PP_chrom ppEffectEnable false;};
		
	if (PP_3Enabled) then {
		PP_wetD ppeffectAdjust PP_wetDP;
		PP_wetD ppEffectEnable true;
		PP_wetD ppEffectCommit PP_committime;
		} else { PP_wetD ppEffectEnable false;};
		
	if (PP_4Enabled) then {
		PP_colorC ppeffectAdjust PP_colorCP;
		PP_colorC ppEffectEnable true;
		PP_colorC ppEffectCommit PP_committime;
		} else { PP_colorC ppEffectEnable false;};

	if (PP_5Enabled) then {
		PP_dynamic ppeffectAdjust PP_dynamicP;
		PP_dynamic ppEffectEnable true;
		PP_dynamic ppEffectCommit PP_committime;
		} else { PP_dynamic ppEffectEnable false;};

	if (PP_6Enabled) then {
		PP_film ppeffectAdjust PP_filmP;
		PP_film ppEffectEnable true;
		PP_film ppEffectCommit PP_committime;
		} else { PP_film ppEffectEnable false;};
		
	if (PP_7Enabled) then {
		PP_colorI ppeffectAdjust PP_colorIP;
		PP_colorI ppEffectEnable true;
		PP_colorI ppEffectCommit PP_committime;
		} else { PP_colorI ppEffectEnable false;};
	
	sleep PP_committime;
	
	PP_committing = false;
	ctrlEnable [1610,true];
	ctrlSetText [1610,"Reset"];
	waituntil {sleep 0.2;PP_committing || (PP_committime == 0)};	
	ctrlEnable [1610,false];
	PP_radial ppeffectAdjust [0.0,0.0,0.0,0.0];
	PP_radial ppEffectCommit PP_committime;
	PP_chrom ppeffectAdjust [0,0,true];
	PP_chrom ppEffectCommit PP_committime;
	PP_wetD ppeffectAdjust [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
	PP_wetD ppEffectCommit PP_committime;
	PP_colorC ppeffectAdjust [1, 1, 0,[ 0, 0, 0, 0],[ 1, 1, 1, 1],[ 0, 0, 0, 0],[0,0,0,0,0,0,4]];
	PP_colorC ppEffectCommit PP_committime;
	PP_dynamic ppeffectAdjust [0];
	PP_dynamic ppEffectCommit PP_committime;
	PP_film ppeffectAdjust [0,0,0,0,0,true];
	PP_film ppEffectCommit PP_committime;
	PP_colorI ppeffectAdjust [0,0,0];
	PP_colorI ppEffectCommit PP_committime;
	PP_committing = false;
	sleep PP_committime;
	ctrlEnable [1610,true];
	ctrlSetText [1610,"Commit"];
	waituntil {sleep 0.2;PP_committing || (PP_committime == 0)};	

	};

};


