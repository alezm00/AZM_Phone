/*
....###....##.......########.########.##.....##
...##.##...##.......##............##..###...###
..##...##..##.......##...........##...####.####
.##.....##.##.......######......##....##.###.##
.#########.##.......##.........##.....##.....##
.##.....##.##.......##........##......##.....##
.##.....##.########.########.########.##.....##
    File: freq.sqf
    last edit: 27/04/2018
    Made for QCS military life
	license:    GNU GENERAL PUBLIC LICENSE Version 3
--------------------------------------------------------
    Copy or use without my permission is forbidden.
*/
azm_lradio_freqset = {
	_listazainiradio = ["tf_rt1523g", "tf_rt1523g_big", "tf_rt1523g_black", "tf_rt1523g_fabric", "tf_rt1523g_big_bwmod_tropen", "tf_rt1523g_green", "tf_rt1523g_rhs", "tf_rt1523g_big_bwmod", "tf_rt1523g_sage", "tf_anprc155", "tf_anprc155_coyote", "tf_mr3000", "tf_mr3000_multicam", "tf_rt1523g_big_rhs", "tf_mr3000_rhs"];
	if ((backpack player) in _listazainiradio) then {
		sleep 1;
		[(call TFAR_fnc_activelrRadio), 1, "30.1"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activelrRadio), 2, "61"] call TFAR_fnc_SetChannelFrequency;
		[(call TFAR_fnc_activelrRadio), 3, "62"] call TFAR_fnc_SetChannelFrequency;
		sleep 0.2;
		_line1="<t color='#FF0000' size='2' align='center'>AZM Radio LR set</t>";
		_line2="<br/>CANALE 1 = 30.1<br/>CANALE 2 = 61<br/>CANALE 3 = 62";
		hint parseText (_line1 + _line2);
	} else {
		_line1nol="<t color='#FF0000' size='2' align='center'>AZM Radio LR set</t>";
		_line2nol="<br/><t color='#FF0000'align='center'>NON HAI UNA RADIO A LUNGO RAGGIO</t>";
		hint parseText (_line1nol + _line2nol);
	};
};

azm_sradio_freqset = {
	sleep 1;
	[(call TFAR_fnc_activeSwRadio), 1, "30.1"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 2, "30.2"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 3, "30.3"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 4, "30.4"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 5, "30.5"] call TFAR_fnc_SetChannelFrequency;
	[(call TFAR_fnc_activeSwRadio), 6, "30.6"] call TFAR_fnc_SetChannelFrequency;
	_line1="<t color='#FF0000' size='2' align='center'>AZM Radio SR set</t>";
	_line2="<br/>CANALE 1 = 30.1<br/>CANALE 2 = 30.2<br/>CANALE 3 = 30.3<br/>CANALE 4 = 30.4<br/>CANALE 5 = 30.5<br/>CANALE 6 = 30.6";
	hint parseText (_line1 + _line2);
};





diag_log format["AZM>>%1>>freq.sqf loaded",time];
