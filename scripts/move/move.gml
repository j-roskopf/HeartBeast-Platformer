///@param hspeed
///@param bounce
var spd = argument[0];
var bounce = argument[1];

///collision detection
//horizontal collision detection
if(place_meeting(x + spd[0], y, o_solid)) {
	while(!place_meeting(x + sign(spd[0]), y, o_solid)) {
		x += sign(spd[0])	
	}
	if(bounce > 0) {
		spd[@ 0] = -spd[@ 0] * bounce
	} else {
		spd[@ 0] = 0;
	}

}

//actually move our player horizontally
x += spd[0];

//vertical collision detection
if(place_meeting(x, y + spd[1], o_solid)) {
		while(!place_meeting(x,y + spd[1], o_solid)) {
		y += sign(spd[1])	
	}
	if(bounce > 0) {
		spd[@ 1] = -spd[@ 1] * bounce
	} else {
		spd[@ 1] = 0;
	}
}

//actually move our player vertically
y += spd[1]