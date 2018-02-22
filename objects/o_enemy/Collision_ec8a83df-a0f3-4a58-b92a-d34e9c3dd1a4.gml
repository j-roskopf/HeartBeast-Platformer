/// @description take damage
health_ -= 1

//destroy the bullet
instance_destroy(other)

//other.direction is the direction of the bulet
speed_[0] = lengthdir_x(8, other.direction)
speed_[1] = lengthdir_y(8, other.direction)