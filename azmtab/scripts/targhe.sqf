/*
....###....##.......########.########.##.....##
...##.##...##.......##............##..###...###
..##...##..##.......##...........##...####.####
.##.....##.##.......######......##....##.###.##
.#########.##.......##.........##.....##.....##
.##.....##.##.......##........##......##.....##
.##.....##.########.########.########.##.....##
    File: targhe.sqf
    last edit: 30/05/2018
    Made for QCS military life
	license:    GNU GENERAL PUBLIC LICENSE Version 3
--------------------------------------------------------
    Copy or use without my permission is forbidden.
*/
azm_rscedit = { //[id,idd] call azm_rscedit
	params ["_selectedtext","_loading","_btndisable"];
	_value = ctrlText _selectedtext;
	//hint _value;
	ctrlEnable [_selectedtext,false];
	ctrlEnable [_btndisable,false];
	for "_i" from 0 to 100 step 1 do {
		//hint format["Loading..%1",_i];
		_testttt = format["Loading... %1 %2",_i,"%"];
		ctrlSetText [_loading,_testttt];
		sleep 0.2;
	};
	if (_value == "ZM-123-ZM") then {
		hint "bravo hai trovato la targa";
		//_loading ctrlSetTextColor [0,0.8,0,1];
		ctrlSetText [_loading,"Targa trovata"];
		ctrlEnable [_selectedtext,true];
		ctrlEnable [_btndisable,true];
	} else {
		ctrlEnable [_selectedtext,true];
		ctrlEnable [_btndisable,true];
		ctrlSetText [_selectedtext,""];
		//_loading ctrlSetTextColor [0.9,0,0,1];
		ctrlSetText [_loading,"Nessun riscontro trovato"];
	};
};
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
sleep 20; //da togliere
veicoli = [];
while {true} do {
	{
	if (_x in veicoli) then {} else {
		//if () then {
		azm_targa_messa = 0;
		_x setVariable ["azm_targa_messa", 0];
		veicoli pushBack _x;
		//};
	}
	} forEach vehicles;
	{
		if ((_x getVariable "azm_targa_messa") == 0) then {
		_letteratarga = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];
		_numeritarga = ["0","1","2","3","4","5","6","7","8","9"];
		_x setPlateNumber format["%1%2-%3%4%5-%6%7", selectRandom _letteratarga, selectRandom _letteratarga,selectRandom _numeritarga,selectRandom _numeritarga,selectRandom _numeritarga,selectRandom _letteratarga,selectRandom _letteratarga];
		_x setVariable ["azm_targa_messa", 1];
		};
	} forEach vehicles;
	sleep 15;
};