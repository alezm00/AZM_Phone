/*
....###....##.......########.########.##.....##
...##.##...##.......##............##..###...###
..##...##..##.......##...........##...####.####
.##.....##.##.......######......##....##.###.##
.#########.##.......##.........##.....##.....##
.##.....##.##.......##........##......##.....##
.##.....##.########.########.########.##.....##
    File: light.sqf
    last edit: 30/05/2018
    Made for QCS military life
	license:    GNU GENERAL PUBLIC LICENSE Version 3
--------------------------------------------------------
    Copy or use without my permission is forbidden.
*/
AZM_Light_on_off = {
    [_this select 0, _this select 1,_this select 2] spawn {
    params ["_onoff", "_marker","_distance"];
        //hint "funziona porco dio";
    _types = ["Land_LampShabby_F","Land_LampHalogen_F","Land_LampAirport_F","Land_Camping_Light_F","Land_PortableLight_double_F"];
    _onoff = _this select 0;
    _marker = _this select 1;
    _distance = _this select 2;
    for [{_i=0},{_i < (count _types)},{_i=_i+1}] do {
        _lamps = getMarkerPos _marker nearObjects [_types select _i, _distance];
        sleep .1;
        {
            _x setDamage _onoff;
            sleep .09;
        } forEach _lamps;

    };
    };
};
//[0.95, "punto"] call azm_fnc_light;

//this addAction ["Stacca corrente", '[0.95, "marker_light",300] call AZM_Light_on_off'];
//this addAction ["Attacca corrente", '[0, "marker_light",300] call AZM_Light_on_off'];


//marker_light
//[0.95, "base1",350] call AZM_Light_on_off;