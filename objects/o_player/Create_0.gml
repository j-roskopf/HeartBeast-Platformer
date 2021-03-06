/// @description Create variables!

speed_ = [0,0];
gravity_ = .5;
acceleration_ = 1;
jump_height_ = -12;
max_speed = 4;
friction_ = .2;
max_health_ = 5;
health_ = max_health_;
invincible_ = false


keyboard_set_map(ord("A"), vk_left)
keyboard_set_map(ord("S"), vk_down)
keyboard_set_map(ord("D"), vk_right)
keyboard_set_map(ord("W"), vk_up)
keyboard_set_map(vk_space, vk_up)

//bullet cooldown
bullet_cooldown_ = room_speed / 6
alarm[0] = bullet_cooldown_

// scale variables
x_scale_ = image_xscale;
y_scale_ = image_yscale;

//hide the solid layer
var solid_layer = layer_get_id("Solids")
layer_set_visible(solid_layer, debug_mode)