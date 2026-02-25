if (is_triggered && sprite_index == sCheckpoint) {
	sprite_index = sCheckPointTaken;	
} else if (is_triggered && sprite_index == sFinish) {
	sprite_index = sFinishToggled;
	instance_create_layer(x,y, "Overlays", oVictory);
	oVictory.alarm[0] = 60;
}