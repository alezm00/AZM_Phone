/*
....###....##.......########.########.##.....##
...##.##...##.......##............##..###...###
..##...##..##.......##...........##...####.####
.##.....##.##.......######......##....##.###.##
.#########.##.......##.........##.....##.....##
.##.....##.##.......##........##......##.....##
.##.....##.########.########.########.##.....##
    File: bersaglio.sqf
    last edit: 30/05/2018
    Made for QCS military life
	license:    GNU GENERAL PUBLIC LICENSE Version 3
--------------------------------------------------------
    Copy or use without my permission is forbidden.
*/
azm_poligonotest = {
	params ["_linea","_velocita","_voltevalrsc"];
	_valorelinea = lbCurSel _linea;
	_valorevel = lbCurSel _velocita;
	_valorevolte = lbCurSel _voltevalrsc;

	_datalinea = lbdata [_linea,_valorelinea];
	_datavel = lbdata [_velocita,_valorevel];
	_datavolte = lbData [_voltevalrsc,_valorevolte];
	if (isNil _datalinea) exitWith {hint "Seleziona la riga..."};
	if (_datavel == "") exitWith {hint "Seleziona la velocita..."};
	if (_datavolte == "") exitWith {hint "Imposta il numero di volte da eseguire"};
	//systemChat format["%1 %2 %3",_datalinea,_datavel,_datavolte];
	[_datalinea,"Target_PopUp_Moving_Acc2_F",-12,12,_datavel,_datavolte] spawn azm_bersaglio;
};

//"TargetP_Inf_Acc2_F" "Target_PopUp_Moving_Acc2_F"

//[cane,"Target_PopUp_Moving_Acc2_F",-12,12,3,1] spawn azm_bersaglio;

azm_bersaglio = {
	params ["_ogg","_type","_arrinizion","_arrfine","_vel","_voltebers"];
	_oggg = missionNamespace getVariable [_ogg, objNull];
	_bersaglio = _type createVehicle getPos _oggg;
	_bersaglio attachTo [_oggg,[0,-12,1.5]];
	_bersaglio setDir 90;
	//_voltebers = str(_voltebers);
	//_voltebers = parseNumber _voltebers;
	//hint _voltebers;
	sleep 2;
	for "_o" from 1 to parseNumber _voltebers step 1 do {
		for "_i" from _arrinizion to _arrfine step 0.1 do {
			_bersaglio attachTo [_oggg,[0,_i,1.5]];
			//hint _vel;
			switch (_vel) do {
				case "1": {sleep 0.00004;};
				case "2": {sleep 0.00001;};
				case "3": {sleep 0.000006;};
				default {sleep 0.1;};
			};
		};
		sleep 1;
		for "_i" from _arrfine to _arrinizion step -0.1 do {
			_bersaglio attachTo [_oggg,[0,_i,1.5]];
			switch (_vel) do {
				case "1": {sleep 0.0004;};
				case "2": {sleep 0.0001;};
				case "3": {sleep 0.00006;};
				default {sleep 0.1;};
			};
		};
		sleep 1;
	};
	deleteVehicle _bersaglio;
};
//[0,0,1.5


diag_log format["AZM>>%1>>bersaglio.sqf loaded",time];