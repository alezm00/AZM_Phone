/*
....###....##.......########.########.##.....##
...##.##...##.......##............##..###...###
..##...##..##.......##...........##...####.####
.##.....##.##.......######......##....##.###.##
.#########.##.......##.........##.....##.....##
.##.....##.##.......##........##......##.....##
.##.....##.########.########.########.##.....##
    File: cfggeneral.hpp
    last edit: 27/04/2018
    Made for QCS military life
--------------------------------------------------------
    Copy or use without my permission is forbidden.
*/

class CfgSounds
{
    sounds[] = {allarme,sveglia,adunata,capisquadra,briefing,ufficiali};
    class allarme 
    {
        name = "allarme";
        sound[] = {"azmtab\sounds\allarme.ogg",20,1.0};
    };
    class sveglia
    {
        name = "sveglia";
        sound[] = {"azmtab\sounds\sveglia.ogg",40,1.0};
    };
    class adunata
    {
        name = "adunata";
        sound[] = {"azmtab\sounds\adunata.ogg",15,1.0};
    };
    class capisquadra
    {
        name = "capisquadra";
        sound[] = {"azmtab\sounds\capisquadra.ogg",10,1.0};
    };
    class briefing
    {
        name = "briefing";
        sound[] = {"azmtab\sounds\tuttebriefing.ogg",10,1.0};
    };
    class ufficiali
    {
        name = "ufficiali";
        sound[] = {"azmtab\sounds\ufficialirapporto.ogg",10,1.0};
    };
    
};
