/*
	Autore: Alezm
	Script: Alzabandiera.sqf
	Creato il: 17/01/2018
	license:    GNU GENERAL PUBLIC LICENSE Version 3
*/

//BIS_fnc_animateFlag      //BIS_fnc_holdActionAdd
azm_bandiere = {
	[band1] call azm_addactionhandlerbandiera;
	[band2] call azm_addactionhandlerbandiera;
};


nomeb = "<t color='#ff0000'>Bandiera</t>";
img1b = "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff1_ca.paa";
img2b = "";
cond1b = "true";
cond2b = "true";
augumentib = [];
duratab = 30;
prioritab = 0;
removefinishb = true;
unconsciousb = false;
///////////////////
temporiaddb = 30;  //not in use


azm_animazionibandiera = {
	[_this select 0] spawn {
		[_this select 0, 1, 3] call BIS_fnc_animateFlag;	
	};
};


azm_bandierasu = {
	[_this select 0] spawn {
		removeAllActions (_this select 0);
	};
};

azm_bandierainterrotto = {
	[_this select 0] spawn {
		[_this select 0, 0, 0.3] call BIS_fnc_animateFlag;
		sleep 0.1;
		removeAllActions (_this select 0);
		//titleText ["<t color='#ff0000' size='1.5'>LA BANDIERA E' CADUTA</t>", "PLAIN DOWN", -1, true, true]; titleFadeOut 5;
	};
};


azm_addactionhandlerbandiera = {
	[_this select 0] spawn {
	[_this select 0, 0,0.01] call BIS_fnc_animateFlag;
	[(_this select 0), nomeb, img1b,img2b, cond1b,cond2b,{[_this select 0] call azm_animazionibandiera},{},{[_this select 0] remoteExec ["azm_bandierasu"]}, {[_this select 0] remoteExec ["azm_bandierainterrotto"]; /*sleep temporiadd;*/ sleep 3; [_this select 0] remoteExec ["azm_bandiere"] }, augumentib,duratab,prioritab,removefinishb,unconsciousb] call BIS_fnc_holdActionAdd; 
	};
};
sleep 1;
[] call azm_bandiere; 