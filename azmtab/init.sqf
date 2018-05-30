/*
....###....##.......########.########.##.....##
...##.##...##.......##............##..###...###
..##...##..##.......##...........##...####.####
.##.....##.##.......######......##....##.###.##
.#########.##.......##.........##.....##.....##
.##.....##.##.......##........##......##.....##
.##.....##.########.########.########.##.....##
    File: init.sqf
    last edit: 27/04/2018
    Made for QCS military life
--------------------------------------------------------
    Copy or use without my permission is forbidden.
*/

diag_log format["AZM>>%1>>Loading phone",time];


//some stuff
AZM_ACE_MEDADV = 1;
AZM_ARSENAL_LOADOUT_BLOCK = 1;
AZM_WHITELIST_ENABLE = 0;
AZM_ADMIN_LIST=["76561198164382639",	//ale
				"76561198050715598",	//manu
				"76561198140275913",	//cross 
				"76561198169441600",	//matteo 
				"_SP_PLAYER_"];	//there the last one is all singleplayer users.

AZM_MEDIC_LIST=["",
				"",
				"_SP_PLAYER_"];	//there the last one is all singleplayer users.
AZM_GENIERE_LIST=["",
				"",
				"_SP_PLAYER_"];	//there the last one is all singleplayer users.
/////////////////////////////////////////////////////////////////////////

/////don't touch/////////////////
[] execVM "azmtab\scripts\add.sqf";
[] execVM "azmtab\scripts\funzioni.sqf";
[] execVM "azmtab\radio_freq\freq.sqf";
[] execVM "azmtab\equip\equip.sqf";
[] execVM "azmtab\equip\arsenal.sqf";
[] execVM "azmtab\scripts\arsenalblock.sqf";
[] execVM "azmtab\scripts\Alzabandiera.sqf";
[] execVM "azmtab\scripts\Hack.sqf";
[] execVM "azmtab\scripts\light.sqf";
[] execVM "azmtab\scripts\Reservedslots.sqf";
[] execVM "azmtab\scripts\whitelist.sqf";
[] execVM "azmtab\scripts\targhe.sqf";
[] execVM "azmtab\scripts\bersaglio.sqf";
////////////////////////////////////////////

///////////////////CALLS////////////////////

["Initialize"] call BIS_fnc_dynamicGroups;//Exec on Server

