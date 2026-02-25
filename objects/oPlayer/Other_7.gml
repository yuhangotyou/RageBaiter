if (sprite_index == sPlayerDisappear) {
	instance_create_layer(x,y, "Overlays", oGameOver);
	instance_destroy();
	oGame.alarm[0] = 120;
} else if (sprite_index == sPlayerAppear) {
	sprite_index = sPlayerIdle;
	animation_finished = true;
}
	