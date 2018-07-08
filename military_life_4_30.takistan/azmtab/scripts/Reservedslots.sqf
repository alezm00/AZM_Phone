/**
		....###....##.......########.########.##.....##
		...##.##...##.......##............##..###...###
		..##...##..##.......##...........##...####.####
		.##.....##.##.......######......##....##.###.##
		.#########.##.......##.........##.....##.....##
		.##.....##.##.......##........##......##.....##
		.##.....##.########.########.########.##.....##
	Script: Reservedslots.sqf
	Creato il: 09/02/2018																																																																															*/diag_log "ALEZM>>> Alezm Reserved slot script loaded";/*
	to start the script you need to execute in the init.sqf file with this code  	[] execVM "Reservedslots.sqf";
	then in this file you need to modify the AZM_SLOTS function adding new lines with this [Arma3 UID, slot variable name] call AZM_RESERVED_SLOT;
	if you want you can add a list of players UID that can bypass all blocked slots (remember the last uid must NOT have the >>>,<<< after the "" or the scirpt doesn't work)
	if you don't need any player bypass simply edit the variable AZM_bypass_list to [] 
	done the script now is operative and you can leave your zeus slot free.
	DONE: systemChat 
	TODO: multiple uid per slots

	license:    GNU GENERAL PUBLIC LICENSE Version 3
*/
AZM_bypass_list = ["76561198050715598","76561198164382639"];	//76561198164382639

AZM_clear_inv = false;     //if is true then the player inventory is cleaned up, instead if is true then the scirpt simply remove the weapons.

AZM_SLOTS = {
	sleep 2;
	//[Arma3 UID, slot variable name] call AZM_RESERVED_SLOT;
	["76561198164382639", a2] call AZM_RESERVED_SLOT; //ale
	["76561198050715598", a1] call AZM_RESERVED_SLOT; //manu
	["76561198095699182", a5] call AZM_RESERVED_SLOT; //demo
	["76561198144908842", a4] call AZM_RESERVED_SLOT; //pankake
	["76561198169441600", z0] call AZM_RESERVED_SLOT; //matteo
	["76561198137848868", a6] call AZM_RESERVED_SLOT; //leonardo
};
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////DONT TOUCH UNDER THIS////////////////////////////////////////////////////
/////////////////////////////////////////////////DONT TOUCH UNDER THIS////////////////////////////////////////////////////
/////////////////////////////////////////////////DONT TOUCH UNDER THIS////////////////////////////////////////////////////
/////////////////////////////////////////////////DONT TOUCH UNDER THIS////////////////////////////////////////////////////
/////////////////////////////////////////////////DONT TOUCH UNDER THIS////////////////////////////////////////////////////
/////////////////////////////////////////////////DONT TOUCH UNDER THIS////////////////////////////////////////////////////
/////////////////////////////////////////////////DONT TOUCH UNDER THIS////////////////////////////////////////////////////
/////////////////////////////////////////////////DONT TOUCH UNDER THIS////////////////////////////////////////////////////
/////////////////////////////////////////////////DONT TOUCH UNDER THIS////////////////////////////////////////////////////
/////////////////////////////////////////////////DONT TOUCH UNDER THIS////////////////////////////////////////////////////
/////////////////////////////////////////////////DONT TOUCH UNDER THIS////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

AZM_RESERVED_SLOT = {
	[_this select 0, _this select 1, _this select 2] spawn {
		params ["_uidd","_slot"];
		//hint format ["%1			%2",_uidd,_slot];
		//_uidd=_uidd;	
		waitUntil {!isNull player || player == player};
		//_uidd = format ['"%1"',_uidd];
		if (_slot == player) then {
			if ((getPlayerUID player) == _uidd || (getPlayerUID player) in AZM_bypass_list) then {
				if ((getplayeruid player) in AZM_bypass_list) then {
					hint format ["<<<ALEZM>>>\n-Benvenuto ------ADMIN------ \n%1 nello slot di \n%2-",name player, _uidd];
				} else {
					hint format ["<<<ALEZM>>>\nBenvenuto %1 nel tuo slot.\n%2",name player, getPlayerUID player];
				};
			} else {
				//titleText ["", "BLACK OUT"];
				//sleep 5;
				disableUserInput true;
				[] call AZM_WEAPONS_REMO;
				for "_sec" from 10 to 1 step -1 do {
					_kickvar = format ["<t size='3' color='#ff0000'>ALEZM>>Slot riservato verrai kickato in %1 <br/>ALEZM>> %2</t>",_sec, name player];
					titleText [_kickvar, "BLACK IN", -1,true,true];
					playSound "FD_CP_Not_Clear_F"; playSound "FD_CP_Not_Clear_F"; playSound "FD_CP_Not_Clear_F";
					sleep 1;	
				};
				disableUserInput false;
				[((name player) + " ha provato ad entrare in uno slot riservato")] remoteExec ["AZM_SYSTEMCHAT"];
				diag_log format ["Alezm>> %1 >> %2 ---- %3 ha provato ad entrare in uno slot riservato",time,getPlayerUID player,name player];
				sleep .1;
				//failMission "LOSER";
				["RES SLOT",false,.1] call BIS_fnc_endMission;
			};	
		};
	};
};
[] call AZM_SLOTS;
AZM_SYSTEMCHAT = {
	_syschat = _this select 0;
	systemChat _syschat;
};
AZM_WEAPONS_REMO = {
	if (AZM_clear_inv) then {
		removeAllWeapons player;
		removeAllItems player;
		removeAllAssignedItems player;
		removeUniform player;
		removeVest player;
		removeBackpack player;
		removeHeadgear player;	
		removeGoggles player;
	} else {
		removeAllWeapons player;
		removeAllItems player;
	};
};
