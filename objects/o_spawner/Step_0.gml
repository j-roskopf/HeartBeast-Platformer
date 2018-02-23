/// @description create enemies in waves
if(!instance_exists(o_enemy)) {
	repeat(wave_) {
		instance_create_layer(random_range(0, room_width), random_range(-64, -32), "Instances", o_enemy)	
	}
	wave_++
}