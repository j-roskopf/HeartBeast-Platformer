/// @description Movement state

if(instance_exists(o_player)) { 
	//move the enemry
	var dir_to_player = point_direction(x, y, o_player.x, o_player.y);
	speed_[0] += lengthdir_x(acceleration_, dir_to_player);
	speed_[1] += lengthdir_y(acceleration_, dir_to_player);
	
	if(point_distance(0,0, speed_[0], speed_[1]) > max_speed) {
		var move_dir = point_direction(0, 0, speed_[0], speed_[1])
		speed_[0] = lengthdir_x(max_speed, move_dir);
		speed_[1] = lengthdir_y(max_speed, move_dir);
	}
	

	if(distance_to_object(o_player) < 48) {
		enemy_fire_bullet()
	}
	
	enemy_fire_bullet()
}

move(speed_, 1);