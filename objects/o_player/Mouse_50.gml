if(alarm[0] <= 0) {
	//create bullet
	var gun_direction = point_direction(x, y - sprite_height / 2, mouse_x, mouse_y);

	//get the player direction
	//var player_direction = (mouse_x > x) * 2 - 1
	var player_direction = -1;
	if(gun_direction < 90 || gun_direction > 270) {
		player_direction = 1	
	}

	var gun_x = x - 6 * player_direction
	var x_offset = lengthdir_x(16, gun_direction);
	var y_offset = lengthdir_y(16, gun_direction);

	var bullet = instance_create_layer(gun_x + x_offset, y + y_offset - sprite_height / 2, "Instances", o_bullet);
	bullet.direction = gun_direction
	bullet.image_angle = gun_direction
	alarm[0] = bullet_cooldown_
}

