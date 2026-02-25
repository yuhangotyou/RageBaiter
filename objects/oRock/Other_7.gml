if (sprite_index == sRockHitRight || sprite_index == sRockHitLeft) {
	sprite_index = sRockIdle;
	animation_playing = false;
	move_direction_reversed = !move_direction_reversed;
}