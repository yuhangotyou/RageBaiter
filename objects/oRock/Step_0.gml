move_x = 0;
move_y = 0;
check_ahead = (!move_direction_reversed) ? 8 : -8;
if (place_meeting(x + check_ahead*move_speed,y,oSolid) && !animation_playing) {
	sprite_index = !move_direction_reversed? sRockHitLeft : sRockHitRight;
	image_speed = 1*move_speed;
	animation_playing = true;
}

if (!move_direction_reversed) {
	move_x += 1*move_speed;
} else {
	move_x -= 1*move_speed;
}

x += move_x;