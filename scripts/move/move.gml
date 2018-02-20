///@param hspeed
///param vspeed
var spd = argument[0];

///collision detection
//horizontal collision detection
if(place_meeting(x + spd[0], y, o_solid)) {
	while(!place_meeting(x + sign(spd[0]), y, o_solid)) {
		x += sign(spd[0])	
	}
	spd[@ 0] = 0;
}

//actually move our player horizontally
x += spd[0];

//vertical collision detection
if(place_meeting(x, y + spd[1], o_solid)) {
		while(!place_meeting(x,y + spd[1], o_solid)) {
		y += sign(spd[1])	
	}
	spd[@ 1] = 0;
}

//actually move our player vertically
y += spd[1]