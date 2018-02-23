draw_self()

if(!instance_exists(o_player)) {
	exit	
}

draw_health_ = lerp(draw_health_, o_player.health_, .5)

//set global draw color
draw_set_color(c_red)
var playerHealth = draw_health_ / o_player.max_health_
draw_rectangle(x + 4, y + 4, x + 123 * playerHealth, y + 11, false)
draw_set_color(c_white)