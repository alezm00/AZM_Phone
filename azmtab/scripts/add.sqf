/*
....###....##.......########.########.##.....##
...##.##...##.......##............##..###...###
..##...##..##.......##...........##...####.####
.##.....##.##.......######......##....##.###.##
.#########.##.......##.........##.....##.....##
.##.....##.##.......##........##......##.....##
.##.....##.########.########.########.##.....##
    File: add.sqf
    last edit: 27/04/2018
    Made for QCS military life
    license:    GNU GENERAL PUBLIC LICENSE Version 3
--------------------------------------------------------
    Copy or use without my permission is forbidden.
*/

azm_homegui_open = {
	createDialog "Home";
};
azm_aceaction1 = {
    ["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;//Exec on client
	_acesefl = ['gameMenu','Telefono','',{[] call azm_homegui_open;},{(player distance (getMarkerPos "base1") < 600)}] call ace_interact_menu_fnc_createAction;
	[player, 1, ["ACE_SelfActions"], _acesefl] call ace_interact_menu_fnc_addActionToObject;
};






diag_log format["AZM>>%1>>add.sqf loaded",time];