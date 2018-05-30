/*
....###....##.......########.########.##.....##
...##.##...##.......##............##..###...###
..##...##..##.......##...........##...####.####
.##.....##.##.......######......##....##.###.##
.#########.##.......##.........##.....##.....##
.##.....##.##.......##........##......##.....##
.##.....##.########.########.########.##.....##
    File: arsenal.sqf
    last edit: 27/04/2018
    Made for QCS military life
	license:    GNU GENERAL PUBLIC LICENSE Version 3
--------------------------------------------------------
    Copy or use without my permission is forbidden.
*/
azm_arsenalbase = {
	_null=closeDialog 0;
	_armorer = player;
	[_armorer,false] call BIS_fnc_arsenal;
	_headstuff = [];
	_faceshit = [];
	_uniforms = [];
	_vests = [];
	_backpacks = [];
	_weapons = [];
	[_armorer,_backpacks] call BIS_fnc_addVirtualBackpackCargo;
	[_armorer,(_headstuff + _faceshit + _uniforms + _vests)] call BIS_fnc_addVirtualItemCargo;
	[_armorer,(magazineCargo _armorer)] call BIS_fnc_addVirtualMagazineCargo;
	[_armorer,_weapons,TRUE] call BIS_fnc_addVirtualWeaponCargo;

	[missionNamespace,"arsenalClosed",{
    removeAllActions player;
	}] call BIS_fnc_addScriptedEventHandler;
};




diag_log format["AZM>>%1>>arsenal.sqf loaded",time];