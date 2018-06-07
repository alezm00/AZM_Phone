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
	license:    GNU GENERAL PUBLIC LICENSE Version 3
--------------------------------------------------------
    Copy or use without my permission is forbidden.
*/

diag_log format["AZM>>%1>>Loading phone",time];


//some stuff
AZM_DISTANCE_PHONE_ENABLED = 1500;
AZM_ACE_MEDADV = 1;
AZM_ARSENAL_LOADOUT_BLOCK = 1;
AZM_WHITELIST_ENABLE = 0;
AZM_LISTA_AUTOPARLANTI = [c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17];
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
[] execVM "azmtab\scripts\telecamera.sqf";
////////////////////////////////////////////

///////////////////CALLS////////////////////

["Initialize"] call BIS_fnc_dynamicGroups;//Exec on Server

