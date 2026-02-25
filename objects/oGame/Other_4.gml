instance_create_layer(x,y, "Overlays", oLevel_1);
alarm[1] = 120;
room_name = room_get_name(room);

if (string_starts_with(room_name,"M")) {
	player_on_medium = true;
} else {
	player_on_medium = false;
}