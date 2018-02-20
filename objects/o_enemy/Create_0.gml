/// @description init enemy
max_speed = 3;
speed_push_ = [0,0]
health_ = 5;

chase_ = true
attack_ = false


//current state (what index in user event)
MOVEMENT_ = 0
ATTACK_ = 1
HIT_ = 2

state_ = MOVEMENT_

bullet_cooldown_ = room_speed / 2
alarm[0] = bullet_cooldown_