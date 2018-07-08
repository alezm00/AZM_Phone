/*
....###....##.......########.########.##.....##
...##.##...##.......##............##..###...###
..##...##..##.......##...........##...####.####
.##.....##.##.......######......##....##.###.##
.#########.##.......##.........##.....##.....##
.##.....##.##.......##........##......##.....##
.##.....##.########.########.########.##.....##
    File: funzioni.sqf
    last edit: 27/04/2018
    Made for QCS military life
	license:    GNU GENERAL PUBLIC LICENSE Version 3
--------------------------------------------------------
    Copy or use without my permission is forbidden.
*/
azm_openclose_gui = {	//[6661,'Arsenal'] call azm_openclose_gui;
	params ["_close","_open"];
	_null=closeDialog _close;
	createdialog _open;
};

azm_comboselect = { //[idcombobox] call azm_comboselect;
	params ["_gsel"];
	_valore = lbCurSel _gsel;
	_nome = lbText [_gsel,_valore];
	_data = lbData [_gsel,_valore];
	_text = str(_nome) + "......" + str(_data);
	//hint _text;
	diag_log format ["AZM>>%1>> %2",time,_text];
	call compile _data;
};

azm_allarme = {
	AZM_STOP_SOUND = 1;
	publicVariable "AZM_STOP_SOUND";
	systemChat "Allarme attivato";
	for "_i" from 1 to 50 step 1 do {
		if (AZM_STOP_SOUND == 1) then {
		//['allarme',AZM_LISTA_AUTOPARLANTI] call azm_autoparlanti;
		['allarme'] call azm_autoparlanti;
		sleep 7.8;
		};
	};
};

azm_autoparlanti = {  //["allarme",[c0,c1,c2]] call azm_autoparlanti;
	params ["_suono",["_ssource",AZM_LISTA_AUTOPARLANTI]];
	//systemChat format ["playing %1 nell'autoparlante: %2",_suono,_ssource];
	{
	_x say3D [_suono,300];
	} foreach (_ssource)
};

azm_admin_gui = { //[] call azm_admin_gui;
	if ((getplayeruid player) in AZM_ADMIN_LIST) then {
		[6661,'Admin'] call azm_openclose_gui;
	} else {
		hint "Work in progress";
	};
};

azm_map_markers = {
	/*
		https: //community.bistudio.com/wiki/CfgMarkerColors_Arma_3
		[true] spawn azm_map_markers;   	markers verdi
		[true,"CLASSE_COLORE"] spawn azm_map_markers;
	*/
	params [
		["_onoff",false],
		["_colore","ColorGreen"]
	];
	_botlist = [
		["civ0","Mario"],    //il primo è il nome variabile messo nel mission e il secondo è il nome del bot che si vede in mappa
		["civ1","Matteo"],
		["civ2","Marco"],
		["art","Guiseppe"]
	];
	while {_onoff} do {
		{
			classe      = _x #0;
			nome        = _x #1;
			npc         = missionNamespace getVariable [classe, objNull];
			_markername = format ["marker_%1_%2",classe,nome];
			if (alive npc) then {
				//systemChat format ["%1---------%2---------%3",classe,nome,_markername];
				_marker = createMarker [_markername, getPos npc];
				_markername setMarkerType "mil_triangle";
				_markername setMarkerText nome;
				_markername setMarkerPos (getPos npc);
				_markername setMarkerColor _colore;
				//hint format ["%1   pos:   %2",_markername,getPos npc];
			} else {deleteMarker _markername;_onoff=false;};
		} forEach (_botlist);
		sleep .5;
	};
};

azm_starttext = { //<br />
	waitUntil {!isNull player || player == player};
	AZM_STOP_SOUND = 0;
	publicVariable 'AZM_STOP_SOUND';
    sleep 3;
    ["<t color='#e81b1b' size='1.5'>QCS Military life</t><br />by Quelli Che Sclerano",-1,0.8,8,1] spawn BIS_fnc_dynamicText;
    sleep 12;
    ["",-1,0.8,8,1] spawn BIS_fnc_dynamicText;
    ["<t color='#e81b1b' size='1.5'>Mission e script</t><br />by Alezm  Matteo  Ety  Manushinto27",-1,0.8,10,1] spawn BIS_fnc_dynamicText;
    sleep 12;
    ["",-1,0.8,8,1] spawn BIS_fnc_dynamicText;
    ["<t color='#e81b1b' size='2'>BUON GAME</t>",-1,0.8,10,1] spawn BIS_fnc_dynamicText;
};





diag_log format["AZM>>%1>>Funzioni.sqf loaded",time];
