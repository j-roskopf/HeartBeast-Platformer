//move bullet towards mouth
speed = 8;
direction = point_direction(x, y, mouse_x, mouse_y);
depth = -1;

audio_play_sound(s_laser, 5, false)