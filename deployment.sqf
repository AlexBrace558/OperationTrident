deleteVehicle baseSpawn;

sleep 20;

playMusic "EventTrack02a_F_EPA";
titleCut ["", "BLACK OUT", 5];

sleep 5;

titleText ["<t color='#ffffff' size='3.5'>30 Minutes Later...</t><br/>", "BLACK OUT", 2, true, true];
skipTime 0.5;

{_x setPos (deployPos getPos [([0, 15] call BIS_fnc_randomInt),([-6, 6] call BIS_fnc_randomInt)]);
_x playAction "PlayerCrouch";} forEach allPlayers;

sleep 5;

titleText ["", "BLACK IN", 2, true, true];

titleCut ["", "BLACK IN", 5];


deleteVehicle baseHeli1;
