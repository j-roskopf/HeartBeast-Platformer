/// @description init enemy
max_speed = 2
speed_ = [0,0]
acceleration_ = 0.05
health_ = 5;

chase_ = true
attack_ = false


//current state (what index in user event)
MOVEMENT_ = 0

state_ = MOVEMENT_

bullet_cooldown_ = room_speed / 2
alarm[0] = bullet_cooldown_