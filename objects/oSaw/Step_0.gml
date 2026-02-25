move_x = 0;
move_y = 0;

if (is_on_bottom && !place_meeting(x,y-2*movement_speed,oTerrain)) {
	is_on_right = true;
	is_on_bottom = false;
} else if (is_on_top && !place_meeting(x,y+2*movement_speed,oTerrain)) {
	is_on_left = true;
	is_on_top = false;
} else if (is_on_left && !place_meeting(x-1*movement_speed,y,oTerrain)) {
	is_on_bottom = true;
	is_on_left = false;
} else if (is_on_right && !place_meeting(x+1*movement_speed,y,oTerrain)) {
	is_on_top = true;
	is_on_right = false;
}

if (is_on_top) {
	move_x += 1;
} else if (is_on_left) {
	move_y += 1;
} else if (is_on_right) {
	move_y -= 1;
} else {
	move_x -= 1;
}

x += move_x * movement_speed;
y += move_y * movement_speed;