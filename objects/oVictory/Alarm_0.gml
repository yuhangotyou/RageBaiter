if (countdown > 0) {
	countdown -= 1;
	if ((room_get_name(room) == "MLevel3")) {
		text_message = @"Victor- oh yea I forgot to tell you. The goal isn't here.
As they once say, the ending is in a place where you least expect it so your stuck
in a loop until you find it.. Back to Level 1 in: " + string(countdown)
		alarm[0] = 60;
	} else if ((room_get_name(room) == "MLevel2") && oYouWin.is_triggered){ 
		text_message = "You Win, Congratulations! Qutting in: " + string(countdown)
		alarm[1] = 60;
    } else {
		text_message = "Victory! You beat " + level_text + "!" + " Next Room in: " + string(countdown)
		alarm[0] = 60;
	}

	
} else {
	oFinish.alarm[0] = 10;
}
	