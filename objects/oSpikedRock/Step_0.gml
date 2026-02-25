move_x = 0;
move_y = 0;

if (place_meeting(x,y + 2,oSolid) && !direction_up && !has_triggered) {
	position_freeze = true;
	has_triggered = true;
	alarm[0] = 60;
} else if (place_meeting(x,y - 2,oSolid) && direction_up && !has_triggered)  {
	position_freeze = true;
	has_triggered = true;
	alarm[0] = 60;
}

if (!position_freeze) {
	has_triggered = false;
	move_y += 1 * (direction_up ? -1 : 1)
}

y += move_y * movement_speed;
