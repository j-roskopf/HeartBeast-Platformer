/// @description take some damage
if invincible_ == false {
	health_ -= 1
}

//destory the bullet
instance_destroy(other)

invincible_ = true
alarm[1] = game_get_speed(gamespeed_fps); // 1 sec

