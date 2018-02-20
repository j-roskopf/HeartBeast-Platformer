/// @description soft_collide with enemy

//move away from other enemy
var dir_to_othjer_enemy = point_direction(other.x, other.y, x, y);
speed_push_[0] += lengthdir_x(0.1, dir_to_othjer_enemy);
speed_push_[1] += lengthdir_y(0.1, dir_to_othjer_enemy);
