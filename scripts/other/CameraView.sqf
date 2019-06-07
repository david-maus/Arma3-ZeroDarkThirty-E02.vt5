if (hasInterface)then {
[] spawn {
	while {true} do {
		waitUntil{
				sleep 1; 
				cameraOn isEqualTo player and {cameraView == "External"}
		}; 
		player switchCamera "Internal";
	};
};
};







