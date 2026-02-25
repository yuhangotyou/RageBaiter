 if (file_exists("saved_player_data.ini"))
 {
	 file_delete("saved_player_data.ini");
 }
 
 if (room_get_name(room) == "MLevel3") {
	room_goto(Level1);	 
 } else {
	room_goto_next();
 }
