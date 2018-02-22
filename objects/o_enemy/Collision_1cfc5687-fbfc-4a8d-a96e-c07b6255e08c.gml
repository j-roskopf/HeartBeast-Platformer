/// @description soft_collide with enemy

if(point_in_rectangle(x, y, 0, 0, room_width, room_height)) {
	if(x == other.x && y == other.y) {
		x += sign(other.id - id)	
	}
	//move away from other enemy
	var dir_to_other_enemy = point_direction(other.x, other.y, x, y);
	speed_[0] += lengthdir_x(0.1, dir_to_other_enemy);
	speed_[1] += lengthdir_y(0.1, dir_to_other_enemy);
}

