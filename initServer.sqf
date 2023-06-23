private _overcastLevel = selectRandom [0,0,0,0,0.1,0.2,0.3,0.4,0,0,0,0.5,0.6,0,0,0,0.7,0,0,0,0.8,0.9,1];
private _rainLevel = selectRandom [0,0,0,0,0.1,0.1,0.1,0.2,0.2,0.3,0.3,0.4,0.5,0.4,0.5,0.6,0,0,0,0.7,0.8,0.9,0,0,0,1];
private _fogLevel = selectRandom [0,0,0,0,0.1,0.1,0.1,0.2,0,0,0,0.2,0,0,0,0.3,0.3,0.4,0,0,0,0.5,0.4,0.5];

0 setOvercast _overcastLevel;
0 setRain _rainLevel;
0 setFog _fogLevel;
forceWeatherChange;

setViewDistance 2000;
private _timeSkip = selectRandom [-0.5,-1,-1.5,-2,-2.5,-3,-3.5,-4,-4.5,-5,-5.5,-6,-6.5,-7,-7.5,-8,-8.5,-9,-9.5,-10,-10.5,-11,-11.5,0.5,1,1.5,2,2.5,3,3.5,4,4.5,5,5.5,6,6.5,7,7.5,8,8.5,9,9.5,10,10.5,11,11.5];
skipTime (_timeSkip);

civilian setFriend [west, 1];
west setFriend [civilian, 1];

missionStarted = False;
