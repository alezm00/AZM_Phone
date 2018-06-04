/*
....###....##.......########.########.##.....##
...##.##...##.......##............##..###...###
..##...##..##.......##...........##...####.####
.##.....##.##.......######......##....##.###.##
.#########.##.......##.........##.....##.....##
.##.....##.##.......##........##......##.....##
.##.....##.########.########.########.##.....##
    File: arsenalblock.sqf
    last edit: 27/04/2018
    Made for QCS military life
	license:    GNU GENERAL PUBLIC LICENSE Version 3
--------------------------------------------------------
    Copy or use without my permission is forbidden.
*/
if ((getPlayerUID player) in AZM_ADMIN_LIST || (getPlayerUID player) in AZM_MEDIC_LIST) exitWith {};
if (AZM_ARSENAL_LOADOUT_BLOCK == 1) then {
	[missionNamespace,"arsenalOpened",{
		disableSerialization;
		_display = _this select 0;
		_display displayAddEventHandler ["KeyDown", "if ((_this select 1) in [24,31,19,29]) then {true}"];
		{
			(_display displayCtrl _x) ctrlSetText "Disabled";
			(_display displayCtrl _x) ctrlSetTextColor [1,0,0,0.5];
			(_display displayCtrl _x) ctrlRemoveAllEventHandlers "buttonclick";
			(_display displayCtrl _x) ctrlSetTooltip "Carica un equipaggiamento dal telefono premendo  CTRL+WIN   e poi modificalo dall'arsenale";
		}forEach [44146,44147,44150];
	}] call BIS_fnc_addScriptedEventHandler;
} else {diag_log format["AZM>>%1>>Loadout script is user disabled",time];};
