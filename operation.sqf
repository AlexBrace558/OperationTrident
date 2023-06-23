briefStart = True;

playMusic "LeadTrack04_F_EPC";
titleCut ["", "BLACK OUT", 5];

sleep 7;

openMap [true, true];
playSound "Track01";


mapAnimAdd [0.1, 0.5, markerPos "zoomOut1"];
mapAnimCommit;

titleCut ["", "BLACK IN", 5];

["Officer", "Alright gentlemen let's get straight to business, thanks to your efforts the MLF’s advance has been halted."] spawn BIS_fnc_showSubtitle;

sleep 2;

mapAnimAdd [3, 0.3, markerPos "zoomOut2"];
mapAnimCommit;

sleep 3.5;

["Officer", "This has created a pause in the fighting and has handed the initiative over to us, which brings us today's operation."] spawn BIS_fnc_showSubtitle;

sleep 6;
["Officer", "During the hideout raid we were able to recover a hard drive that revealed to us the entire MLF supply chain."] spawn BIS_fnc_showSubtitle;

"farm" setMarkerColor "ColorWhite";
"farm" setMarkerAlpha 1;
"x" setMarkerAlpha 1;
mapAnimAdd [1, 0.2, markerPos "zoomOut2"];
mapAnimCommit;

sleep 6;
["Officer", "The high command wants this supply chain cut and task force Spartan has once again been tasked with striking this next blow."] spawn BIS_fnc_showSubtitle;

"farm" setMarkerAlpha 0;
"x" setMarkerAlpha 0;

sleep 7.5;
["Officer", "We have discovered that the nexus of this supply chain is based on the abandoned island of Moray"] spawn BIS_fnc_showSubtitle;

"morayMarker" setMarkerAlpha 0.7;
["morayMarker", 0.5, 5] spawn BIS_fnc_blinkMarker;
mapAnimAdd [5, 0.3, markerPos "zoomOut3"];
mapAnimCommit;

sleep 5.5;
["Officer", "where we believe the MLF are using the nearby airfield to have supplies flown in by an unknown third party before then being transported to the mainland."] spawn BIS_fnc_showSubtitle;

"morayMarker" setMarkerAlpha 0;
"airfieldMarker" setMarkerAlpha 0.7;
["airfieldMarker", 0.5, 5] spawn BIS_fnc_blinkMarker;
mapAnimAdd [5, 0.1, markerPos "zoomOut3"];
mapAnimCommit;

sleep 5;

"morayVillageMarker" setMarkerAlpha 0.7;
["morayVillageMarker", 0.5, 5] spawn BIS_fnc_blinkMarker;
mapAnimCommit;

sleep 4;
["Officer", "After extensive drone reconnaissance we have discovered a blind spot on the southeastern coast of Moray, so task force Spartan will make an amphibious landing at LZ Echo."] spawn BIS_fnc_showSubtitle;

mapAnimAdd [5, 0.1, markerPos "zoomOut3"];
mapAnimCommit;

sleep 6.5;

"echo" setMarkerAlpha 1;
["echo", 0.5, 5] spawn BIS_fnc_blinkMarker;
mapAnimCommit;

sleep 3;
["Officer", "Spartan will then advance west and secure the hamlet of Moray, intelligence indicates that Moray is being held by an MLF garrison"] spawn BIS_fnc_showSubtitle;

["spartan", getMarkerPos "spartanMove1", 0.1, 1] call BIS_fnc_moveMarker;

sleep 0.75;

["spartan", getMarkerPos "spartanMove2", 5, 1] call BIS_fnc_moveMarker;

sleep 7;

["Officer", "that is concentrated by the warehouse and harbor."] spawn BIS_fnc_showSubtitle;

sleep 3;
["Officer", "Once Moray is secure, Spartan will then advance north to secure the airfield."] spawn BIS_fnc_showSubtitle;

"morayVillageMarker" setMarkerColor "ColorWEST";
["spartan", getMarkerPos "spartanMove3", 3, 1] call BIS_fnc_moveMarker;
mapAnimCommit;

sleep 4.25;
["Officer", "The key targets for the airfield will be the main hangar, air control tower and warehouse."] spawn BIS_fnc_showSubtitle;

mapAnimAdd [4.5, 0.05, markerPos "airfieldMarker"];
mapAnimCommit;

sleep 4.5;
["Officer", "This  target will likely consist of a garrison of hired guns acting on behalf of the MLFs supplier so don't underestimate them."] spawn BIS_fnc_showSubtitle;

sleep 7;
["Officer", "Spartan will then establish a defensive position and await pickup via helicopter on the airfield,"] spawn BIS_fnc_showSubtitle;

"airfieldMarker" setMarkerColor "ColorWEST";
["spartan", getMarkerPos "spartanMove4", 4, 1] call BIS_fnc_moveMarker;
mapAnimCommit;

sleep 5.5;
["Officer", "in the meantime the coast guard will move in to secure and comb the island for any stragglers."] spawn BIS_fnc_showSubtitle;

sleep 6;
["Officer", "Our opponent does not yet realize that their cover has been blown, so speed and surprise will be vital in this operation."] spawn BIS_fnc_showSubtitle;

"spartan" setMarkerAlpha 0;
"morayVillageMarker" setMarkerAlpha 0;
"airfieldMarker" setMarkerAlpha 0;
"morayMarker" setMarkerAlpha 0.5;
mapAnimAdd [7, 0.5, markerPos "spartanMove3"];
mapAnimCommit;

sleep 7;
["Officer", "I expect nothing less than the complete annihilation of the MLF supply chain. That is all, dismissed."] spawn BIS_fnc_showSubtitle;

sleep 7;

missionBegin = True;
baseHeli1 setVehicleLock "UNLOCKED";
openMap [true, false];
