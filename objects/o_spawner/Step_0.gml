/// @description create enemies in waves
if(!instance_exists(o_enemy)) {
	repeat(wave_) {
		instance_create_layer(x, y, "Instances", o_enemy)	
	}
	wave_++
}