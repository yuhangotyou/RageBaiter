text_box_x1 = x - 100;
text_box_x2 = x + 100;
text_box_y1 = y - 20;
text_box_y2 = y + 20;
level_text = ""
if (room_get_name(room) == "Level1") {
	level_text = "Level 1!"
} else if (room_get_name(room) == "Level2") {
	level_text = "Level 2!"
} else if (room_get_name(room) == "Level3") {
	level_text = "Level 3!"
} else if (room_get_name(room) == "MLevel1") {
	level_text = "Level 1 Medium.. Something feels off.."
} else if (room_get_name(room) == "MLevel2") {
	level_text = "Level 2 Medium, almost there :)"
} else if (room_get_name(room) == "MLevel3") {
	level_text = "Level 3 Medium.. So close... yet so far."
}

text_message = "Welcome to: " + level_text