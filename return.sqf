
baseHeli1 engineOn true;

sleep 10;

playMusic "EventTrack02a_F_EPA";
titleCut ["", "BLACK OUT", 5];

sleep 5;

titleText ["<t color='#ffffff' size='3.5'>10 Minutes Later...</t><br/>", "BLACK OUT", 2, true, true];
skipTime 0.1;

{_x setPos (returnPos getPos [([0, 15] call BIS_fnc_randomInt),([-6, 6] call BIS_fnc_randomInt)]);} forEach allPlayers;

sleep 5;

titleText ["", "BLACK IN", 2, true, true];

titleCut ["", "BLACK IN", 5];

sleep 2;

baseHeli1 engineOn false;

sleep 20;

"end1" call BIS_fnc_endMission;
