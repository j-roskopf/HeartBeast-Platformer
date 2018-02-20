/// @description Movement state

if(instance_exists(o_player)) { 
	//move the enemry
	var dir_to_player = point_direction(x, y, o_player.x, o_player.y);
	speed_[0] = lengthdir_x(max_speed, dir_to_player);
	speed_[1] = lengthdir_y(max_speed, dir_to_player);
	move(speed_);

	//don't let them contact each other
	move(speed_push_);
	if(!place_meeting(x, y, o_enemy)) {
		speed_push_[0] = lerp(speed_push_[0], 0, .1)
		speed_push_[1] = lerp(speed_push_[1], 0, .1)
	}


	if(distance_to_object(o_player) < 48) {
		state_ = ATTACK_	
	}
}
