if (instance_exists(oPlayer) && distance_to_object(oPlayer) < distance_to_player && oPlayer.y > y) {
	new_bullet = instance_create_layer(x,y,"Bullets",oProjectile)
	
	new_bullet.direction = point_direction(x,y,oPlayer.x, oPlayer.y)
	new_bullet.image_angle = new_bullet.direction;
	
	if (oPlayer.x > x + 10) {
		sprite_index = sTurretRight;
	} else if (oPlayer.x < x - 10) {
		sprite_index = sTurretLeft;
	} else {
		sprite_index = sTurretCentre;
	}
} else if (instance_exists(oPlayer)) {
	if (oPlayer.x > x + 10) {
		sprite_index = sTurretRight_Idle;
	} else if (oPlayer.x < x - 10) {
		sprite_index = sTurretLeft_Idle;
	} else {
		sprite_index = sTurretCentre_Idle;
	}
}

alarm[0] = fire_rate;