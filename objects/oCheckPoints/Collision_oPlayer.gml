if (!is_triggered) 
{ 
	ini_open("saved_player_data.ini");

	ini_write_real("player", "x", other.x);
	ini_write_real("player", "y", other.y);
	is_triggered = true;
	ini_close();
}
	  