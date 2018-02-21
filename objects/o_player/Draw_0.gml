//get the gun direction
var gun_direction = point_direction(x, y - sprite_height / 2, mouse_x, mouse_y);

//get the player direction
//var player_direction = (mouse_x > x) * 2 - 1
var player_direction = -1;
if(gun_direction < 90 || gun_direction > 270) {
	player_direction = 1	
}

//draw them both
draw_sprite_ext(s_player, image_index, x, y, x_scale_ * player_direction, y_scale_, 0, image_blend, image_alpha);
draw_sprite_ext(s_gun, 0, x - (6 * player_direction), y - sprite_height / 2, image_xscale, player_direction, gun_direction, image_blend, image_alpha);
