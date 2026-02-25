text_box_x1 = x - 100;
text_box_x2 = x + 100;
text_box_y1 = y - 20;
text_box_y2 = y + 20;
countdown = 4;
if (room_get_name(room) == "Level1") {
	level_text = "Level 1!"
} else if (room_get_name(room) == "Level2") {
	level_text = "Level 2!"
} else if (room_get_name(room) == "Level3") {
	level_text = "Level 3!"
} else if (room_get_name(room) == "MLevel1") {
	level_text = "Level 1!"
} else if (room_get_name(room) == "MLevel2") {
	level_text = "Level 2!"
}

if ((room_get_name(room) == "MLevel3")) {
	countdown = 10;
	text_message = @"Victor- oh yea I forgot to tell you. The goal isn't here.
As they once say, the ending is in a place where you least expect it so your stuck
in a loop until you find it.. Back to Level 1 in: " + string(countdown)
} else if ((room_get_name(room) == "MLevel2") && oYouWin.is_triggered){ 
		text_message = "You Win, Congratulations! Qutting in: " + string(countdown)
} else {
	text_message = "Victory! You beat " + level_text + "!" + " Next Room in: " + string(countdown)
}
