/// @description Player Movement

if(health_ <= 0) {
	instance_destroy()	
}

//get left or right movement
var h_input = keyboard_check(vk_right) - keyboard_check(vk_left)

//if we are moving in one direction
if(h_input != 0) {
	//add the direction plus the acceleration to our horizontal speed
	speed_[0] += h_input * acceleration_;
	
	//make sure to cap it with our max values
	speed_[0] = clamp(speed_[0], -max_speed, max_speed);
	
	var player_direction = (mouse_x > x) * 2 - 1
	
	image_speed = .6 * h_input * player_direction
} else {
	//otherwise deaccelerate us to 0 by friction
	speed_[0] = lerp(speed_[0], 0, friction_)
	image_speed = 0
	image_index = 0
}

//apply gravity and check for jumping
if(!place_meeting(x, y + 1, o_solid)) {
	speed_[1] += gravity_;	
	image_speed = 0
	image_index = 6
} else if(keyboard_check_pressed(vk_up)) {
	speed_[1] = jump_height_;
	x_scale_ = image_xscale * .8
	y_scale_ = image_yscale * 1.4
}

move(speed_)

//checked for landing
if(place_meeting(x, y + 1, o_solid) && !place_meeting(x, yprevious + 1, o_solid)) {
	//we literally just landed
	x_scale_ = image_xscale * 1.4
	y_scale_ = image_yscale * 0.8
}

//scale of image
x_scale_ = lerp(x_scale_, image_xscale, .2)
y_scale_ = lerp(y_scale_, image_yscale, .2)

warp()
