/*
....###....##.......########.########.##.....##
...##.##...##.......##............##..###...###
..##...##..##.......##...........##...####.####
.##.....##.##.......######......##....##.###.##
.#########.##.......##.........##.....##.....##
.##.....##.##.......##........##......##.....##
.##.....##.########.########.########.##.....##
    File: phone.hpp
    last edit: 27/04/2018
    Made for QCS military life
    license:    GNU GENERAL PUBLIC LICENSE Version 3
--------------------------------------------------------
    Copy or use without my permission is forbidden.
*/
class Home {
   idd = 6661;
   name = "Home";
   movingenable = false;
   enablesimulation = true;
   class controls
   {
       class sfondo : RscPicture
       {
           idc = 1000;
           text = "azmtab\Textures\telea.paa";
           x = 0.630729166666667 * safezoneW + safezoneX;
           y = 0.296007789678676 * safezoneH + safezoneY;
           w = 0.3046875 * safezoneW;
           h = 0.562804284323272 * safezoneH;
       };
       class Home : HiddenButton
       {
           x = 0.767708333333333 * safezoneW + safezoneX;
           y = 0.801363193768257 * safezoneH + safezoneY;
           w = 0.0317708333333333 * safezoneW;
           h = 0.0214216163583252 * safezoneH;
           idc = 1001;
           action = "_null=closeDialog 6661;";
           tooltip = "Chiudi";
       };
       class Radio : HiddenButton
       {
           tooltip = "Imposta Le frequenze Radio";
           x = 0.712101333333333 * safezoneW + safezoneX;
           y = 0.433167073028238 * safezoneH + safezoneY;
           w = 0.0300861666666667 * safezoneW;
           h = 0.0605038130477118 * safezoneH;
           idc = 1002;
           action = "[6661,'radio'] call azm_openclose_gui;";
       };
       class Equip : HiddenButton
       {
           tooltip = "Cambia equipaggiamento";
           x = 0.750581916666667 * safezoneW + safezoneX;
           y = 0.433167073028238 * safezoneH + safezoneY;
           w = 0.0300861666666667 * safezoneW;
           h = 0.0605038130477118 * safezoneH;
           idc = 1003;
           action = "[6661,'Equip'] call azm_openclose_gui;";
       };
       class Settings : HiddenButton
       {
           tooltip = "WIP";
           x = 0.78704025 * safezoneW + safezoneX;
           y = 0.433167073028238 * safezoneH + safezoneY;
           w = 0.0300861666666667 * safezoneW;
           h = 0.0605038130477118 * safezoneH;
           idc = 1004;
           action = "[] call azm_admin_gui"
       };
       class btnarsenal : HiddenButton
       {
           tooltip = "WIP";//"Seleziona Arsenali";
           x = 0.735018 * safezoneW + safezoneX;
           y = 0.678541951314508 * safezoneH + safezoneY;
           w = 0.0972736666666666 * safezoneW;
           h = 0.0858202687439143 * safezoneH;
           idc = 1005;
           //action = "[6661,'Arsenal'] call azm_openclose_gui;";
       };
   };
};

class Radio {
   idd = 6662;
   name = "Radio";
   movingenable = false;
   enablesimulation = true;
   class controls
   {
       class sfondo : RscPicture
       {
           idc = 1000;
           text = "azmtab\Textures\teleradio.paa";
           x = 0.630729166666667 * safezoneW + safezoneX;
           y = 0.296007789678676 * safezoneH + safezoneY;
           w = 0.3046875 * safezoneW;
           h = 0.562804284323272 * safezoneH;
       };
       class Home : HiddenButton
       {
           tooltip = "Home";
           x = 0.767708333333333 * safezoneW + safezoneX;
           y = 0.801363193768257 * safezoneH + safezoneY;
           w = 0.0317708333333333 * safezoneW;
           h = 0.0214216163583252 * safezoneH;
           idc = 1001;
           action = "[6662,'Home'] call azm_openclose_gui;";
       };
       class LRadio : HiddenButton
       {
           tooltip = "Frequenze Long Range";
           x = 0.780208333333333 * safezoneW + safezoneX;
           y = 0.471275559883155 * safezoneH + safezoneY;
           w = 0.0776041666666667 * safezoneW;
           h = 0.210321324245375 * safezoneH;
           idc = 1003;
           action = "[] spawn azm_lradio_freqset";
       };
       class SRadio : HiddenButton
       {
           tooltip = "Frequenze Short Range";
           x = 0.708976333333333 * safezoneW + safezoneX;
           y = 0.464325787731256 * safezoneH + safezoneY;
           w = 0.0597736666666667 * safezoneW;
           h = 0.226034484907498 * safezoneH;
           idc = 1002;
           action = "[] spawn azm_sradio_freqset";
       };
   };
};

class Equip {
   idd = 6663;
   name = "Equip";
   movingenable = false;
   enablesimulation = true;
   class controls
   {
       class sfondo : RscPicture
       {
           idc = 1000;
           text = "azmtab\Textures\equip.paa";
           x = 0.630729166666667 * safezoneW + safezoneX;
           y = 0.296007789678676 * safezoneH + safezoneY;
           w = 0.3046875 * safezoneW;
           h = 0.562804284323272 * safezoneH;
       };
       class Home : HiddenButton
       {
           x = 0.767708333333333 * safezoneW + safezoneX;
           y = 0.801363193768257 * safezoneH + safezoneY;
           w = 0.0317708333333333 * safezoneW;
           h = 0.0214216163583252 * safezoneH;
           idc = 1001;
           action = "[6663,'Home'] call azm_openclose_gui;";
       };
       class Fuciliere : HiddenButton
       {
           x = 0.705851333333333 * safezoneW + safezoneX;
           y = 0.360138835443038 * safezoneH + safezoneY;
           w = 0.0337320000000001 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1002;
           tooltip = "Fuciliere Base";
           action = "[] call azm_fuciliere_base";
       };
       class SpecialistaEsplosivi : HiddenButton
       {
           x = 0.7440715 * safezoneW + safezoneX;
           y = 0.360138835443038 * safezoneH + safezoneY;
           w = 0.032491 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1003;
           tooltip = "Specialista Esplosivi";
           action = "[] call azm_specialista_esplosivi";
       };
       class Granatiere : HiddenButton
       {
           x = 0.782712833333333 * safezoneW + safezoneX;
           y = 0.360138835443038 * safezoneH + safezoneY;
           w = 0.032491 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1004;
           tooltip = "Granatiere";
           action = "[] call azm_granatiere";
       };
       class Medico : HiddenButton
       {
           x = 0.8243795 * safezoneW + safezoneX;
           y = 0.360138835443038 * safezoneH + safezoneY;
           w = 0.032491 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1005;
           tooltip = "Medico";
           action = "[] spawn azm_medico";
       };
       class TeamLeader : HiddenButton
       {
           x = 0.705851333333333 * safezoneW + safezoneX;
           y = 0.436155104186952 * safezoneH + safezoneY;
           w = 0.032491 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1006;
           tooltip = "Team Leader";
           action = "[] call azm_team_leader";
       };
       class Marksmant : HiddenButton
       {
           x = 0.7440715 * safezoneW + safezoneX;
           y = 0.436155104186952 * safezoneH + safezoneY;
           w = 0.032491 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1007;
           tooltip = "Marksmant";
           action = "[] call azm_marksmant";
       };
       class Cecchino : HiddenButton
       {
           x = 0.7837545 * safezoneW + safezoneX;
           y = 0.436155104186952 * safezoneH + safezoneY;
           w = 0.032491 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1008;
           tooltip = "Cecchino";
           action = "[] call azm_cecchino";
       };
       class Equipaggiotank : HiddenButton
       {
           x = 0.8243795 * safezoneW + safezoneX;
           y = 0.436155104186952 * safezoneH + safezoneY;
           w = 0.032491 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1009;
           tooltip = "Equipaggio Tank/APC";
           action = "[] call azm_equip_carro";
       };
       class Elicottero : HiddenButton
       {
           x = 0.705851333333333 * safezoneW + safezoneX;
           y = 0.515025600778968 * safezoneH + safezoneY;
           w = 0.032491 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1010;
           tooltip = "Pilota elicotteri";
           action = "[] call azm_pilota_eli";
       };
       class Aerei : HiddenButton
       {
           x = 0.7440715 * safezoneW + safezoneX;
           y = 0.515999310613437 * safezoneH + safezoneY;
           w = 0.032491 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1011;
           tooltip = "Pilota aerei";
           action = "[] call azm_pilota_aereo";
       };
       class AA : HiddenButton
       {
           x = 0.7837545 * safezoneW + safezoneX;
           y = 0.515999310613437 * safezoneH + safezoneY;
           w = 0.032491 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1012;
           tooltip = "Anti aerea";
           action = "[] call azm_anti_aereo";
       };
       class AT0 : HiddenButton
       {
           x = 0.8243795 * safezoneW + safezoneX;
           y = 0.515999310613437 * safezoneH + safezoneY;
           w = 0.032491 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1013;
           tooltip = "Anti tank";
           action = "[] call azm_anti_tank";
       };
       class Radiom : HiddenButton
       {
           x = 0.706893 * safezoneW + safezoneX;
           y = 0.599738356377799 * safezoneH + safezoneY;
           w = 0.032491 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1014;
           tooltip = "Radio operator";
           action = "[] call azm_radio_operator";
       };
       class UAV : HiddenButton
       {
           x = 0.7440715 * safezoneW + safezoneX;
           y = 0.600712066212269 * safezoneH + safezoneY;
           w = 0.032491 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1015;
           tooltip = "UAV operator";
           action = "[] call azm_uav_operator";
       };
       class Sub : HiddenButton
       {
           x = 0.7837545 * safezoneW + safezoneX;
           y = 0.600712066212269 * safezoneH + safezoneY;
           w = 0.032491 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1016;
           tooltip = "Sommozzatore";
           action = "[] call azm_sommozzatore";
       };
       class mg : HiddenButton
       {
           x = 0.8243795 * safezoneW + safezoneX;
           y = 0.599738356377799 * safezoneH + safezoneY;
           w = 0.032491 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1020;
           tooltip = "Machine Gunner";
           action = "[] call azm_machine_gun";
       };
       class dagr : HiddenButton
       {
           x = 0.705851333333333 * safezoneW + safezoneX;
           y = 0.725346925024343 * safezoneH + safezoneY;
           w = 0.032491 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1017;
           tooltip = "Prendi un DAGR";
           action = "[] call azm_add_dagr";
       };
       class Manette : HiddenButton
       {
           x = 0.7440715 * safezoneW + safezoneX;
           y = 0.725346925024343 * safezoneH + safezoneY;
           w = 0.032491 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1018;
           tooltip = "Prendi delle manette";
           action = "[] call azm_add_manette"
       };
       class radiogive : HiddenButton
       {
           x = 0.7837545 * safezoneW + safezoneX;
           y = 0.725346925024343 * safezoneH + safezoneY;
           w = 0.032491 * safezoneW;
           h = 0.0566089737098347 * safezoneH;
           idc = 1019;
           tooltip = "Prendi una radio";
           action = "[] call azm_add_radio_tfar";
       };
   };
};


class arsenal {
   idd = 6664;
   name = "Arsenal";
   movingenable = false;
   enablesimulation = true;
   class controls
   {
       class sfondo : RscPicture
       {
           idc = 1000;
           text = "azmtab\Textures\arsenal.paa";
           x = 0.630729166666667 * safezoneW + safezoneX;
           y = 0.296007789678676 * safezoneH + safezoneY;
           w = 0.3046875 * safezoneW;
           h = 0.562804284323272 * safezoneH;
       };
       class Home : HiddenButton
       {
           tooltip = "Home";
           x = 0.767708333333333 * safezoneW + safezoneX;
           y = 0.801363193768257 * safezoneH + safezoneY;
           w = 0.0317708333333333 * safezoneW;
           h = 0.0214216163583252 * safezoneH;
           idc = 1001;
           action = "[6664,'Home'] call azm_openclose_gui;";
       };
       class combo : RscCombo
       {
           x = 0.720729166666667 * safezoneW + safezoneX;
           y = 0.43427458617332 * safezoneH + safezoneY;
           w = 0.125104166666667 * safezoneW;
           h = 0.0399221032132425 * safezoneH;
           idc = 1002;
           class items {
                class fuciliere {
                    text = "Fuciliere";
                    data = "[] call azm_arsenalbase";
                };
                class gramatiere {
                    text = "granatiere";
                    data = "1";
                };
                class teamleader {
                    text = "teamleader";
                    data = "2";
                };
           };
       };
       class bottoneselect : RscButton
       {
           text = "Apri";
           x = 0.7365805 * safezoneW + safezoneX;
           y = 0.721385184031159 * safezoneH + safezoneY;
           w = 0.095589 * safezoneW;
           h = 0.0392160000000001 * safezoneH;
           idc = 1003;
           action = "[1002] call azm_comboselect; closedialog 0;";
       };
   };
};

class Admin {
   idd = 6669;
   name = "Admin";
   movingenable = false;
   enablesimulation = true;
   class controls
   {
       class sfondo : RscPicture
       {
           idc = 1000;
           text = "azmtab\Textures\arsenal.paa";
           x = 0.630729166666667 * safezoneW + safezoneX;
           y = 0.296007789678676 * safezoneH + safezoneY;
           w = 0.3046875 * safezoneW;
           h = 0.562804284323272 * safezoneH;
       };
       class Home : HiddenButton
       {
           tooltip = "Home";
           x = 0.767708333333333 * safezoneW + safezoneX;
           y = 0.801363193768257 * safezoneH + safezoneY;
           w = 0.0317708333333333 * safezoneW;
           h = 0.0214216163583252 * safezoneH;
           idc = 1001;
           action = "[6669,'Home'] call azm_openclose_gui";
       };
       class btnsuoni : RscButton
       {
           text = "PLAY ALL";
           x = 0.710416666666667 * safezoneW + safezoneX;
           y = 0.533592989289192 * safezoneH + safezoneY;
           w = 0.0437499999999998 * safezoneW;
           h = 0.0311587147030185 * safezoneH;
           idc = 1002;
           colortext[] = {0,1,0.498039215686275,1};
           colorbackground[] = {0,0,0,1};
           action = "closedialog 0; [1003] call azm_comboselect;";
       };
       class btnsuonistop : RscButton
       {
           text = "STOP";
           colortext[] = {1,1,0,1};
           colorbackground[] = {0,0,0,1};
           x = 0.756893 * safezoneW + safezoneX;
           y = 0.533592989289192 * safezoneH + safezoneY;
           w = 0.0437499999999998 * safezoneW;
           h = 0.0311587147030185 * safezoneH;
           idc = 1004;
           action = "closedialog 0; AZM_STOP_SOUND = 0;publicVariable 'AZM_STOP_SOUND';";
           tooltip = "Disattivo solo l'allarme";
       };
       class correnteattaca : RscButton
       {
           text = "ATTACCA";
           x = 0.809375 * safezoneW + safezoneX;
           y = 0.405063291139241 * safezoneH + safezoneY;
           w = 0.0437499999999998 * safezoneW;
           h = 0.0311587147030185 * safezoneH;
           idc = 1008;
           colortext[] = {0,1,0.498039215686275,1};
           colorbackground[] = {0,0,0,1};
           action = "[0, 'base1',350] call AZM_Light_on_off;";
           tooltip = "Attacca la corrente alla base";
       };
       class correntestacca : RscButton
       {
           text = "STACCA";
           x = 0.809375 * safezoneW + safezoneX;
           y = 0.446932814021422 * safezoneH + safezoneY;
           w = 0.0437499999999998 * safezoneW;
           h = 0.0311587147030185 * safezoneH;
           idc = 1009;
           colortext[] = {1,0,0,1};
           colorbackground[] = {0,0,0,1};
           action = "[0.95, 'base1',350] call AZM_Light_on_off;";
           tooltip = "Stacca la corrente in base";
       };
        class RscListBox0 : RscListBox
       {
           colortext[] = {0,1,0,1};
           x = 0.710416666666667 * safezoneW + safezoneX;
           y = 0.365141187925998 * safezoneH + safezoneY;
           w = 0.0875 * safezoneW;
           h = 0.158763388510224 * safezoneH;
           idc = 1003;
           class items {
                class allarme {
                    text = "Allarme";
                    data = "[] remoteExec ['azm_allarme',0]";
                    //data = "1";
                }; 
                class sveglia {
                    text = "Sveglia";
                    data = "['sveglia',[c0,c1,c2,c3,c4,c5,c6,c7,c8,c9]] remoteExec ['azm_autoparlanti',0];";
                };
                class adunata {
                    text = "Adunata";
                    data = "['adunata',[c0,c1,c2,c3,c4,c5,c6,c7,c8,c9]] remoteExec ['azm_autoparlanti',0];";
                };
                class capisquadra {
                    text = "Richiamo Capisquadra";
                    data = "['capisquadra',[c0,c1,c2,c3,c4,c5,c6,c7,c8,c9]] remoteExec ['azm_autoparlanti',0];";
                };
                class briefing {
                    text = "Briefing";
                    data = "['briefing',[c0,c1,c2,c3,c4,c5,c6,c7,c8,c9]] remoteExec ['azm_autoparlanti',0];";
                };
                class ufficiali {
                    text = "Richiamo Ufficiali";
                    data = "['ufficiali',[c0,c1,c2,c3,c4,c5,c6,c7,c8,c9]] remoteExec ['azm_autoparlanti',0];";
                };
           };
       };
   };
};



////////////menu targhe
class targhe {
   idd = 6699;
   name = "targhe";
   movingenable = false;
   enablesimulation = true;
   class controls
   {
       class IGUIBack0 : IGUIBack
       {
           idc = 1000;
           x = 0.366145833333333 * safezoneW + safezoneX;
           y = 0.290798442064265 * safezoneH + safezoneY;
           w = 0.243229166666667 * safezoneW;
           h = 0.242794547224927 * safezoneH;
           colorbackground[] = {0.498039215686275,0.498039215686275,0.498039215686275,0.87843137254902};
       };
       class IGUIBack1 : IGUIBack
       {
           idc = 1001;
           x = 0.366145833333333 * safezoneW + safezoneX;
           y = 0.268743914313535 * safezoneH + safezoneY;
           w = 0.243229166666667 * safezoneW;
           h = 0.0237098344693281 * safezoneH;
           colorbackground[] = {0.901960784313726,0.494117647058824,0.133333333333333,1};
       };
       class RscText0 : RscText
       {
           idc = 1002;
           text = "Inserisci la targa che vuoi controllare.";
           x = 0.372916666666667 * safezoneW + safezoneX;
           y = 0.300535540408958 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.19375 * safezoneW;
           style = ST_CENTER;
       };
       class RscButton0 : RscButton
       {
           text = "Cerca";
           x = 0.391666666666667 * safezoneW + safezoneX;
           y = 0.444851591041869 * safezoneH + safezoneY;
           w = 0.0655028333333333 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 1004;
           action = "[1003,1006,1004] spawn azm_rscedit";
       };
       class RscEdit0 : RscEdit
       {
           x = 0.391666666666667 * safezoneW + safezoneX;
           y = 0.368510223953262 * safezoneH + safezoneY;
           h = 0.04 * safezoneH;
           w = 0.129166666666667 * safezoneW;
           colorbackground[] = {0.180392156862745,0.180392156862745,0.180392156862745,1};
           idc = 1003;
       };
       class RscText1 : RscText
       {
           idc = 1005;
           x = 0.366145833333333 * safezoneW + safezoneX;
           y = 0.268743914313535 * safezoneH + safezoneY;
           h = 0.0237098344693281 * safezoneH;
           w = 0.243229166666667 * safezoneW;
           text = "Alezm";
           style = ST_RIGHT;
       };
       class RscText2loading : RscText
       {
           idc = 1006;
           x = 0.461458333333333 * safezoneW + safezoneX;
           y = 0.444851591041869 * safezoneH + safezoneY;
           h = 0.039216 * safezoneH;
           w = 0.1359375 * safezoneW;
        };
    };
};




class poligono {
   idd = 6698;
   name = "poligono";
   movingenable = false;
   enablesimulation = true;
   class controls
   {
       class beckgrigio : IGUIBack
       {
           idc = 1000;
           x = 0.274479166666667 * safezoneW + safezoneX;
           y = 0.296640701071081 * safezoneH + safezoneY;
           w = 0.319791666666667 * safezoneW;
           h = 0.272005842259007 * safezoneH;
           colorbackground[] = {0.498039215686275,0.498039215686275,0.498039215686275,0.87843137254902};
       };
       class volte : RscCombo
       {
           x = 0.4196875 * safezoneW + safezoneX;
           y = 0.415774099318403 * safezoneH + safezoneY;
           h = 0.0252896786757546 * safezoneH;
           w = 0.0475 * safezoneW;
           idc = 1001;
           class items {
                    class 1v {
                        text = 1;
                        data = 1;
                    };
                    class 5v {
                        text = 5;
                        data = 5;
                    };
                    class 10v {
                        text = 10;
                        data = 10;
                    };
                    class 15v {
                        text = "15";
                        data = 15;
                    };
            };
       };
       class textarancio : RscText
       {
           idc = 1002;
           colorbackground[] = {0.901960784313726,0.494117647058824,0.133333333333333,1};
           text = "Alezm";
           style = ST_RIGHT;
           x = 0.274479166666667 * safezoneW + safezoneX;
           y = 0.273612463485882 * safezoneH + safezoneY;
           h = 0.0237098344693281 * safezoneH;
           w = 0.319791666666667 * safezoneW;
       };
       class linea : RscCombo
       {
           x = 0.289479166666667 * safezoneW + safezoneX;
           y = 0.415774099318403 * safezoneH + safezoneY;
           w = 0.0475 * safezoneW;
           h = 0.0252896786757546 * safezoneH;
           idc = 1003;
           class items {
                    class linea1 {
                        text = "Linea 1";
                        data = "linea1";
                    };
                    class linea2 {
                        text = "Linea 2";
                        data = "linea2"
                    };
                    class linea3 {
                        text = "Linea 3";
                        data = "linea3";
                    };
                    class linea4 {
                        text = "Linea 4";
                        data = "linea4";
                    };
            };
       };
       class velocita : RscCombo
       {
           x = 0.353541666666666 * safezoneW + safezoneX;
           y = 0.415774099318403 * safezoneH + safezoneY;
           w = 0.0475 * safezoneW;
           h = 0.0252896786757546 * safezoneH;
           idc = 1004;
           class items {
                    class V1 {
                        text = "1";
                        data = "1";
                    };
                    class V2 {
                        text = "2";
                        data = "2"
                    };
                    class V3 {
                        text = "3";
                        data = "3";
                    };
           };
       };
       class testovelocita : RscText
       {
           idc = 1005;
           text = "Seleziona la velocita:";
           x = 0.353541666666666 * safezoneW + safezoneX;
           y = 0.33398247322298 * safezoneH + safezoneY;
           h = 0.0584221032132425 * safezoneH;
           w = 0.0667708333333337 * safezoneW;
           style = ST_MULTI;
       };
       class btnavvio : RscButton
       {
           text = "Avvia";
           colorbackground[] = {0.901960784313726,0.494117647058824,0.133333333333333,1};
           colorbackgroundactive[] = {0.901960784313726,0.494117647058824,0.133333333333333,1};
           colorfocused[] = {1,0.564705882352941,0.203921568627451,1};
           colorborder[] = {0,0,0,0.592156862745098};
           x = 0.506372166666667 * safezoneW + safezoneX;
           y = 0.515092502434275 * safezoneH + safezoneY;
           w = 0.0795653333333333 * safezoneW;
           h = 0.0381084868549173 * safezoneH;
           idc = 1006;
           action = "[1003,1004,1001] call azm_poligonotest;closeDialog 6698;";
       };
       class testovolte : RscText
       {
           idc = 1007;
           text = "Numero di passaggi";
           x = 0.4196875 * safezoneW + safezoneX;
           y = 0.33398247322298 * safezoneH + safezoneY;
           h = 0.0584221032132425 * safezoneH;
           w = 0.075 * safezoneW;
           style = ST_MULTI;
       };
       class testoriga : RscText
       {
           idc = 1008;
           text = "Seleziona la riga:";
           x = 0.289479166666667 * safezoneW + safezoneX;
           y = 0.33398247322298 * safezoneH + safezoneY;
           h = 0.0584221032132425 * safezoneH;
           w = 0.0641666666666667 * safezoneW;
           style = ST_MULTI;
       };
   };
};