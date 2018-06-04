/*
....###....##.......########.########.##.....##
...##.##...##.......##............##..###...###
..##...##..##.......##...........##...####.####
.##.....##.##.......######......##....##.###.##
.#########.##.......##.........##.....##.....##
.##.....##.##.......##........##......##.....##
.##.....##.########.########.########.##.....##
    File: equip.sqf
    last edit: 27/04/2018
    Made for QCS military life
	license:    GNU GENERAL PUBLIC LICENSE Version 3
--------------------------------------------------------
    Copy or use without my permission is forbidden.
*/
azm_add_manette = {
	for "_i" from 1 to 5 do {player addItemToUniform "ACE_CableTie";};
	_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
	_line2="<br/>5 fascette aggiunte all'inventario";
	hint parseText (_line1 + _line2);
};
azm_add_dagr = {
	_null=closeDialog 6663;
	player addItemToBackpack 'ACE_DAGR'; 
	player addItemToBackpack 'ACE_MapTools';
	_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
	_line2="<br/>DAGR aggiunto all'inventario<br/>se non lo vedi sta a terra";
	hint parseText (_line1 + _line2);
};
azm_add_radio_tfar = {
	_null=closeDialog 6663;
	player linkItem 'tf_anprc152_1';
	_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
	_line2="<br/>Radio aggiunta all'inventario<br/>se non la vedi sta a terra";
	hint parseText (_line1 + _line2);
};
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

azm_remove_equip = {
	removeAllWeapons player;
	removeAllItems player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadgear player;
	removeGoggles player;
};
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////






azm_fuciliere_base = {
	_null=closeDialog 6663;
	[] call azm_remove_equip;
	comment "Add containers";
	this forceAddUniform "rhs_uniform_FROG01_d";
	for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";};
	this addItemToUniform "rhs_mag_30Rnd_556x45_M855_Stanag";
	this addItemToUniform "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Green";
	this addVest "rhsusf_spc_rifleman";
	for "_i" from 1 to 2 do {this addItemToVest "ACE_morphine";};
	for "_i" from 1 to 15 do {this addItemToVest "ACE_fieldDressing";};
	this addItemToVest "ACE_EarPlugs";
	this addItemToVest "ACE_MapTools";
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 7 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";};
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
	this addHeadgear "rhsusf_lwh_helmet_marpatd_headset";

	comment "Add weapons";
	this addWeapon "rhs_weap_m4";
	this addPrimaryWeaponItem "rhsusf_acc_ACOG";
	this addWeapon "rhsusf_weap_m9";
	this addWeapon "Binocular";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "tf_anprc152_2";
	_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
	_line2="<br/>Equipaggiamento da Fuciliere base";
	hint parseText (_line1 + _line2);
};
azm_specialista_esplosivi = {
	_null=closeDialog 6663;
	[] call azm_remove_equip;
	comment "Add containers";
	this forceAddUniform "rhs_uniform_FROG01_d";
	this addItemToUniform "ACE_MapTools";
	for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
	this addItemToUniform "rhs_mag_30Rnd_556x45_M855_Stanag";
	this addItemToUniform "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Green";
	for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_m67";};
	this addVest "rhsusf_spc_rifleman";
	for "_i" from 1 to 15 do {this addItemToVest "ACE_fieldDressing";};
	this addItemToVest "ACE_EarPlugs";
	this addItemToVest "MineDetector";
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
	for "_i" from 1 to 7 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";};
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
	this addBackpack "rhsusf_assault_eagleaiii_coy";
	this addItemToBackpack "ACE_DeadManSwitch";
	for "_i" from 1 to 2 do {this addItemToBackpack "rhsusf_m112_mag";};
	for "_i" from 1 to 2 do {this addItemToBackpack "SLAMDirectionalMine_Wire_Mag";};
	for "_i" from 1 to 2 do {this addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";};
	for "_i" from 1 to 2 do {this addItemToBackpack "APERSBoundingMine_Range_Mag";};
	this addHeadgear "rhsusf_lwh_helmet_marpatd_headset";

	comment "Add weapons";
	this addWeapon "rhs_weap_m4";
	this addPrimaryWeaponItem "rhsusf_acc_ACOG";
	this addWeapon "Binocular";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "tf_anprc152_2";
	_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
	_line2="<br/>Equipaggiamento da specialista esplosivi";
	hint parseText (_line1 + _line2);
};
azm_granatiere = {
	_null=closeDialog 6663;
	[] call azm_remove_equip;
	comment "Add containers";
	this forceAddUniform "rhs_uniform_FROG01_d";
	this addItemToUniform "ACE_MapTools";
	for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 15 do {this addItemToUniform "ACE_fieldDressing";};
	this addItemToUniform "ACE_EarPlugs";
	for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";};
	this addVest "rhsusf_spc_teamleader";
	for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";};
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
	for "_i" from 1 to 4 do {this addItemToVest "1Rnd_HE_Grenade_shell";};
	this addItemToVest "rhs_mag_m662_red";
	this addItemToVest "rhs_mag_M585_white";
	for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_M397_HET";};
	for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_m714_White";};
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m713_Red";};
	this addHeadgear "rhsusf_lwh_helmet_marpatd_headset";

	comment "Add weapons";
	this addWeapon "rhs_weap_m4_m203";
	this addPrimaryWeaponItem "rhsusf_acc_ACOG";
	this addWeapon "Binocular";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "tf_anprc152_2";
	_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
	_line2="<br/>Equipaggiamento da granatiere";
	hint parseText (_line1 + _line2);
};
azm_medico = {
	_null=closeDialog 6663;
	if (AZM_ACE_MEDADV == 1) then {
		[] call azm_remove_equip;
		this forceAddUniform "rhs_uniform_FROG01_d";
		this addItemToUniform "ACE_MapTools";
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 15 do {this addItemToUniform "ACE_fieldDressing";};
		this addItemToUniform "ACE_EarPlugs";
		this addItemToUniform "rhs_mag_30Rnd_556x45_M855_Stanag";
		this addItemToUniform "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Green";
		this addVest "rhsusf_spc_corpsman";
		for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
		for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Green";};
		this addItemToVest "rhs_mag_m67";
		for "_i" from 1 to 5 do {this addItemToVest "SmokeShell";};
		this addBackpack "ARC_USN_Backpack_AOR1_Med";
		for "_i" from 1 to 20 do {this addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 10 do {this addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 50 do {this addItemToBackpack "ACE_fieldDressing";};
		this addItemToBackpack "FSGm_ItemMedicBag";
		for "_i" from 1 to 10 do {this addItemToBackpack "ACE_bloodIV_250";};
		for "_i" from 1 to 10 do {this addItemToBackpack "ACE_bloodIV_500";};
		for "_i" from 1 to 8 do {this addItemToBackpack "ACE_bloodIV";};
		this addHeadgear "rhsusf_lwh_helmet_marpatd_headset";

		comment "Add weapons";
		this addWeapon "rhs_weap_m16a4";
		this addPrimaryWeaponItem "rhsusf_acc_ACOG";
		this addWeapon "Binocular";

		comment "Add items";
		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "tf_anprc152_2";
		//Rimozione di tutte le classi ACE
		player setVariable ["ACE_isEOD", false, false];
		player setVariable ["ACE_isEngineer", 0, false];
		player setVariable ["ace_medical_medicClass", 0, false];
		sleep 2;
		player setVariable ["ace_medical_medicClass", 2, true];
		sleep 2;
		_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
		_line2="<br/>Equipaggiamento da medico avanzato";
		hint parseText (_line1 + _line2);
	} else {
		player setVariable ["ACE_isEOD", false, false];
		player setVariable ["ACE_isEngineer", 0, false];
		player setVariable ["ace_medical_medicClass", 0, false];
		sleep 2;
		player setVariable ["ace_medical_medicClass", 2, true];
		sleep 2;
		_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
		_line2="<br/>Equipaggiamento da medico base";
		hint parseText (_line1 + _line2);
	};
};
azm_team_leader = {
	_null=closeDialog 6663;
	[] call azm_remove_equip;
	comment "Add containers";
	this forceAddUniform "rhs_uniform_FROG01_d";
	this addItemToUniform "ACE_MapTools";
	for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 15 do {this addItemToUniform "ACE_fieldDressing";};
	this addItemToUniform "ACE_EarPlugs";
	this addItemToUniform "rhs_mag_30Rnd_556x45_M855_Stanag";
	this addItemToUniform "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Green";
	this addVest "rhsusf_spc_squadleader";
	this addItemToVest "ACE_microDAGR";
	this addItemToVest "ACE_Flashlight_MX991";
	for "_i" from 1 to 2 do {this addItemToVest "ACE_bodyBag";};
	this addItemToVest "ACE_EntrenchingTool";
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
	for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 3 do {this addItemToVest "SmokeShell";};
	for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";};
	this addItemToVest "B_IR_Grenade";
	this addItemToVest "ACE_HandFlare_Red";
	this addItemToVest "ACE_HandFlare_Green";
	this addHeadgear "rhsusf_lwh_helmet_marpatd_headset";

	comment "Add weapons";
	this addWeapon "rhs_weap_m16a4";
	this addPrimaryWeaponItem "rhsusf_acc_ACOG";
	this addWeapon "Binocular";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "tf_anprc152_2";
	_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
	_line2="<br/>Equipaggiamento da team leader";
	hint parseText (_line1 + _line2);
};
azm_marksmant = {
	_null=closeDialog 6663;
	[] call azm_remove_equip;
	comment "Add containers";
	this forceAddUniform "rhs_uniform_FROG01_d";
	this addItemToUniform "ACE_MapTools";
	for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 15 do {this addItemToUniform "ACE_fieldDressing";};
	this addItemToUniform "ACE_EarPlugs";
	this addItemToUniform "rhs_mag_m67";
	this addItemToUniform "SmokeShell";
	this addVest "rhsusf_spc_marksman";
	this addItemToVest "ACE_Kestrel4500";
	this addItemToVest "ACE_IR_Strobe_Item";
	this addItemToVest "ACE_RangeCard";
	this addItemToVest "ACE_RangeTable_82mm";
	for "_i" from 1 to 3 do {this addItemToVest "rhsusf_20Rnd_762x51_m62_Mag";};
	this addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";
	this addHeadgear "rhsusf_lwh_helmet_marpatd";

	comment "Add weapons";
	this addWeapon "rhs_weap_sr25";
	this addPrimaryWeaponItem "KA_ANPEQ15_Black_IR";
	this addPrimaryWeaponItem "rhsusf_acc_M8541_low";
	this addPrimaryWeaponItem "bipod_01_F_blk";
	this addWeapon "lerca_1200_black";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "tf_anprc152_2";
	_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
	_line2="<br/>Equipaggiamento da marksmant";
	hint parseText (_line1 + _line2);
};
azm_cecchino = {
	_null=closeDialog 6663;
	comment "Add containers";
	this forceAddUniform "rhs_uniform_FROG01_d";
	this addItemToUniform "ACE_MapTools";
	for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 15 do {this addItemToUniform "ACE_fieldDressing";};
	this addItemToUniform "ACE_EarPlugs";
	this addItemToUniform "rhs_mag_m67";
	this addItemToUniform "SmokeShell";
	this addItemToUniform "rhsusf_mag_17Rnd_9x19_FMJ";
	this addVest "rhsusf_spc_marksman";
	for "_i" from 1 to 3 do {this addItemToVest "rhsusf_mag_17Rnd_9x19_JHP";};
	for "_i" from 1 to 2 do {this addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};
	for "_i" from 1 to 5 do {this addItemToVest "rhsusf_5Rnd_762x51_m62_Mag";};
	for "_i" from 1 to 2 do {this addItemToVest "rhsusf_5Rnd_762x51_m993_Mag";};
	for "_i" from 1 to 2 do {this addItemToVest "rhsusf_5Rnd_762x51_m118_special_Mag";};
	this addBackpack "rhsusf_assault_eagleaiii_coy";
	this addItemToBackpack "ACE_Kestrel4500";
	this addItemToBackpack "ACE_IR_Strobe_Item";
	this addItemToBackpack "ACE_RangeCard";
	this addItemToBackpack "ACE_RangeTable_82mm";
	this addItemToBackpack "ACE_SpottingScope";
	this addItemToBackpack "ACE_Tripod";
	for "_i" from 1 to 13 do {this addItemToBackpack "rhsusf_5Rnd_762x51_m62_Mag";};
	for "_i" from 1 to 6 do {this addItemToBackpack "rhsusf_5Rnd_762x51_m118_special_Mag";};
	this addHeadgear "rhsusf_lwh_helmet_marpatd";

	comment "Add weapons";
	this addWeapon "rhs_weap_m24sws_blk";
	this addPrimaryWeaponItem "rhsusf_acc_M8541_low";
	this addPrimaryWeaponItem "rhsusf_acc_harris_swivel";
	this addWeapon "rhsusf_weap_glock17g4";
	this addWeapon "lerca_1200_black";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "tf_anprc152_2";
	_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
	_line2="<br/>Equipaggiamento da cecchino";
	hint parseText (_line1 + _line2);
};
azm_equip_carro = {
	_null=closeDialog 6663;
	comment "Add containers";
	this forceAddUniform "rhs_uniform_FROG01_d";
	this addItemToUniform "ACE_MapTools";
	for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 15 do {this addItemToUniform "ACE_fieldDressing";};
	this addItemToUniform "ACE_EarPlugs";
	this addItemToUniform "rhs_mag_m67";
	this addItemToUniform "SmokeShell";
	this addVest "rhsusf_spc";
	for "_i" from 1 to 3 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
	this addHeadgear "rhsusf_cvc_ess";

	comment "Add weapons";
	this addWeapon "rhsusf_weap_m9";
	this addWeapon "lerca_1200_black";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "tf_anprc152_2";
	_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
	_line2="<br/>Equipaggiamento da equipaggio carro/apc";
	hint parseText (_line1 + _line2);
};
azm_pilota_eli = {
	_null=closeDialog 6663;
	comment "Add containers";
	this forceAddUniform "USAF_SFS_Enlisted_Green";
	for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";};
	this addHeadgear "rhsusf_hgu56p_visor_black";

	comment "Add weapons";
	this addWeapon "rhsusf_weap_m9";
	this addWeapon "lerca_1200_black";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "tf_microdagr";
	this linkItem "tf_anprc152_1";
	_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
	_line2="<br/>Equipaggiamento da pilota elicotteri";
	hint parseText (_line1 + _line2);
};
azm_pilota_aereo = {
	_null=closeDialog 6663;
	comment "Add containers";
	this forceAddUniform "USAF_SFS_Enlisted_Green";
	for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";};
	this addVest "V_USAF_Vest";
	for "_i" from 1 to 6 do {this addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
	this addItemToVest "rhs_mag_m18_yellow";
	this addItemToVest "rhs_mag_m18_green";
	this addItemToVest "B_IR_Grenade";
	for "_i" from 1 to 2 do {this addItemToVest "Chemlight_red";};
	for "_i" from 1 to 2 do {this addItemToVest "Chemlight_green";};
	this addHeadgear "USAF_SFS_Pilot_F35_Down";

	comment "Add weapons";
	this addWeapon "rhsusf_weap_m9";
	this addWeapon "lerca_1200_black";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "tf_microdagr";
	this linkItem "tf_anprc152_1";
	_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
	_line2="<br/>Equipaggiamento da pilota aereo";
	hint parseText (_line1 + _line2);
};
azm_anti_tank = {
	_null=closeDialog 6663;
	comment "Add containers";
	this forceAddUniform "rhs_uniform_FROG01_d";
	for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 15 do {this addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";};
	this addVest "rhsusf_spc_patchless_radio";
	for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
	for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";};
	this addItemToVest "SmokeShell";
	this addItemToVest "rhs_mag_m67";
	this addBackpack "ARC_USN_Backpack_Carryall_AOR1";
	this addItemToBackpack "rhs_fgm148_magazine_AT";
	this addHeadgear "rhsusf_lwh_helmet_marpatd_headset";

	comment "Add weapons";
	this addWeapon "rhs_weap_m4_grip2";
	this addPrimaryWeaponItem "rhsusf_acc_ACOG_USMC";
	this addPrimaryWeaponItem "rhsusf_acc_grip2";
	this addWeapon "rhs_weap_fgm148";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "tf_microdagr";
	this linkItem "tf_anprc152_1";
	_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
	_line2="<br/>Equipaggiamento da anti carro";
	hint parseText (_line1 + _line2);
};
azm_anti_aereo = {
	_null=closeDialog 6663;
	comment "Add containers";
	this forceAddUniform "rhs_uniform_FROG01_d";
	for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 15 do {this addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";};
	this addVest "rhsusf_spc_patchless_radio";
	for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
	for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";};
	this addItemToVest "SmokeShell";
	this addItemToVest "rhs_mag_m67";
	this addBackpack "rhsusf_assault_eagleaiii_coy";
	this addItemToBackpack "rhs_fim92_mag";
	this addHeadgear "rhsusf_lwh_helmet_marpatd_headset";

	comment "Add weapons";
	this addWeapon "rhs_weap_m4_grip2";
	this addPrimaryWeaponItem "rhsusf_acc_ACOG_USMC";
	this addPrimaryWeaponItem "rhsusf_acc_grip2";
	this addWeapon "rhs_weap_fim92";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "tf_microdagr";
	this linkItem "tf_anprc152_1";
	_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
	_line2="<br/>Equipaggiamento da anti aereo";
	hint parseText (_line1 + _line2);
};
azm_radio_operator = {
	_null=closeDialog 6663;
	comment "Add containers";
	this forceAddUniform "rhs_uniform_FROG01_d";
	for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 15 do {this addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";};
	this addVest "rhsusf_spc_patchless_radio";
	for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
	for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";};
	this addItemToVest "SmokeShell";
	this addItemToVest "rhs_mag_m67";
	this addBackpack "tf_anprc155_coyote";
	this addHeadgear "rhsusf_lwh_helmet_marpatd_headset";

	comment "Add weapons";
	this addWeapon "rhs_weap_m4_grip2";
	this addPrimaryWeaponItem "rhsusf_acc_ACOG_USMC";
	this addPrimaryWeaponItem "rhsusf_acc_grip2";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "tf_microdagr";
	this linkItem "tf_anprc152_1";
	_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
	_line2="<br/>Equipaggiamento da operatore radio";
	hint parseText (_line1 + _line2);
};
azm_uav_operator = {
	_null=closeDialog 6663;

	_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
	_line2="<br/>Equipaggiamento da operatore UAV NON DISPONIBILE";
	hint parseText (_line1 + _line2);
};
azm_sommozzatore = {
	_null=closeDialog 6663;
	comment "Add containers";
	this forceAddUniform "U_B_Wetsuit";
	for "_i" from 1 to 3 do {this addItemToUniform "20Rnd_556x45_UW_mag";};
	this addVest "V_RebreatherB";
	this addBackpack "B_AssaultPack_blk";
	for "_i" from 1 to 13 do {this addItemToBackpack "30Rnd_556x45_Stanag_red";};
	this addGoggles "G_B_Diving";

	comment "Add weapons";
	this addWeapon "arifle_SDAR_F";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "tf_microdagr";
	this linkItem "tf_anprc152_1";

	_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
	_line2="<br/>Equipaggiamento da sommozzatore";
	hint parseText (_line1 + _line2);
};
azm_machine_gun = {
	_null=closeDialog 6663;
	[] call azm_remove_equip;
	comment "Add containers";
	this forceAddUniform "rhs_uniform_FROG01_d";
	for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 15 do {this addItemToUniform "ACE_fieldDressing";};
	this addItemToUniform "SmokeShell";
	this addItemToUniform "rhs_mag_m67";
	this addVest "rhsusf_spc_patchless_radio";
	for "_i" from 1 to 2 do {this addItemToVest "rhs_200rnd_556x45_M_SAW";};
	this addBackpack "rhsusf_assault_eagleaiii_coy";
	for "_i" from 1 to 4 do {this addItemToBackpack "rhs_200rnd_556x45_M_SAW";};
	this addHeadgear "rhsusf_lwh_helmet_marpatd_headset";

	comment "Add weapons";
	this addWeapon "rhs_weap_m249_pip_L_para";
	this addPrimaryWeaponItem "rhsusf_acc_ACOG_USMC";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "tf_microdagr";
	this linkItem "tf_anprc152_1";
	_line1="<t color='#FF0000' size='2' align='center'>AZM Equip</t>";
	_line2="<br/>Equipaggiamento da Machine Gunner";
	hint parseText (_line1 + _line2);
};




diag_log format["AZM>>%1>>Equip.sqf loaded",time];

/*	switch (side player) do { 
 		case west: {systemChat "west" }; 
 		case east: {systemChat "east" }; 
 		case resistance: {systemChat "guer" }; 
 		default {};
	};
*/







