/*
....###....##.......########.########.##.....##
...##.##...##.......##............##..###...###
..##...##..##.......##...........##...####.####
.##.....##.##.......######......##....##.###.##
.#########.##.......##.........##.....##.....##
.##.....##.##.......##........##......##.....##
.##.....##.########.########.########.##.....##
    File: whitelist.sqf
    last edit: 27/04/2018
    Made for QCS military life
	license:    GNU GENERAL PUBLIC LICENSE Version 3
--------------------------------------------------------
    Copy or use without my permission is forbidden.
*/
if (AZM_WHITELIST_ENABLE == 0) exitWith {diag_log format["AZM>>%1>>whitelist disabled",time];};
AZM_WHITELIST=[
			"UID1",  //pinco pallino
			"UID2",	 //pinocchio
			"",
			"",
			"",
			"",
			"",
"_SP_PLAYER_"]; //singleplayer non cancellare



if ((getPlayerUID player) in AZM_WHITELIST || (getPlayerUID player) in AZM_ADMIN_LIST) exitWith {
	systemChat format["Benvenuto %1. (%2)",name player,getPlayerUID player];
};
sleep 2;
titleText ["Non sei whitelistato entra nel ts: QCS      e chiedi di esserere whitelistato. succesivamente dopo il successivo restart sarai operativo","BLACK",-1,false,true]; titleFadeOut 999;
playSound "FD_CP_Not_Clear_F"; playSound "FD_CP_Not_Clear_F"; playSound "FD_CP_Not_Clear_F";
sleep 10;
["RES SLOT",false,.1] call BIS_fnc_endMission;