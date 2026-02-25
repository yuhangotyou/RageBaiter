if (animation_finished || sprite_index != sPlayerDisappear) {
	
	is_on_ground = place_meeting(x, y+2, oSolid);
	is_on_rock = place_meeting(x, y+2, oRock);
	is_sliding_left = place_meeting(x-1,y,oSolid) 
	is_sliding_right = place_meeting(x+1,y,oSolid)
	
	if (!is_on_rock) && !place_meeting(x,y+1,oFinish) && !place_meeting(x,y+1,oYouWin){
		move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
		move_x *= move_speed;
	} else if (place_meeting(x,y+1,oFinish) || place_meeting(x,y+1,oYouWin)){
		move_x = 0;
	} else if (is_on_rock) {
		rock = instance_place(x,y+2,oRock)
		move_x = rock.x - x;
	}

	if (is_on_ground)
	{ 
		move_y = 0;
		sprite_index = sPlayerIdle
		if (keyboard_check(vk_space) || keyboard_check(vk_up)) && !place_meeting(x,y+1,oFinish) && !place_meeting(x,y+1,oYouWin) {
			move_y = -jump_speed;
			sprite_index = sPlayerJump;
		}
	} else if (((is_sliding_left) || (is_sliding_right)) && (!is_on_ground) && move_y >= 0){
		sprite_index = sPlayerSlide;
	} else {
		sprite_index = sPlayerFall;
	}

	if (place_meeting(x,y+2,oTrampoline)){
		oTrampoline.sprite_index = sTrampolineActive;
		move_y = -jump_speed*2;
		sprite_index = sPlayerJump;
	}
	
	if (place_meeting(x, y-1, oTileUpper) or (place_meeting(x, y-1, oTerrianBottom))) {
		move_y = 0;
		sprite_index = sPlayerFall;
		move_y += 1;
	}

	if (place_meeting(x,y+2,oFallingPlatform) && !oFallingPlatform.is_triggered) {
		instanceFP = instance_place(x,y+2,oFallingPlatform);
		instanceFP.is_triggered = true;
		instanceFP.alarm[0] = 60;
	}


	if (move_y < 10 && !is_on_ground) {
		move_y += 1;
	}
	
	
	move_and_collide(move_x, move_y, oSolid);
	if (move_x != 0) image_xscale = sign(move_x);
} else {
	move_x = 0;
}

