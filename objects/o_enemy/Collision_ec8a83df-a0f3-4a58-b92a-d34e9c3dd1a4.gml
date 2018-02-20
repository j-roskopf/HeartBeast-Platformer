/// @description take damage
health_ -= 1

//destroy the bullet
instance_destroy(other)

state_ = HIT_

//other.direction is the direction of the bulet
speed_push_[0] = lengthdir_x(8, other.direction)
pseed_push_[1] = lengthdir_y(8, other.direction)