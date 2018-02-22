//move bullet towards mouth
speed = 2;
direction = point_direction(x, y, mouse_x, mouse_y);
depth = -1;

audio_play_sound(s_enemy_laser, 4, false)