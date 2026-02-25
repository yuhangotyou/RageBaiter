 if (file_exists("saved_player_data.ini"))
 {
	 ini_open("saved_player_data.ini");
	 
	 x = ini_read_real("player", "x", x);
	 y = ini_read_real("player", "y", y);
	 ini_close();
 }