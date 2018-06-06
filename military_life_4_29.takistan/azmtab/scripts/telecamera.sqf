/*
....###....##.......########.########.##.....##
...##.##...##.......##............##..###...###
..##...##..##.......##...........##...####.####
.##.....##.##.......######......##....##.###.##
.#########.##.......##.........##.....##.....##
.##.....##.##.......##........##......##.....##
.##.....##.########.########.########.##.....##
    File: telecamera.sqf
    last edit: 04/06/2018
    Made for QCS military life
	license:    GNU GENERAL PUBLIC LICENSE Version 3
--------------------------------------------------------
    Copy or use without my permission is forbidden.
*/
azm_seccam_fnc = {
    AZM_UAV_LIST_ALLOW = ["Skyline_Security_Cam_01_F","Skyline_Security_Cam_02_F"];
    waitUntil {if (typeOf(getConnectedUAV player) in AZM_UAV_LIST_ALLOW) then {true}};
    //systemChat format["connesso:  %1",typeof(getConnectedUAV player)];
    if ((rankId player) in [3,4,5,6]) then {} else {
        //[((name player) + " ha provato a controllare le telecamere")] remoteExec ["systemChat _this select 0", 0];
        systemChat "Non hai un grado abbastanza alto per comandare le telecamere";
        player connectTerminalToUAV objNull;
        sleep 0.1;
        [] spawn azm_seccam_fnc;
    };
};
[] spawn azm_seccam_fnc;
diag_log format["AZM>>%1>>telecamera.sqf loaded",time];