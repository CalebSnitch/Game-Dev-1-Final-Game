if (obj_player.alive = true)
{
	
	var distance = obj_player.y - y
	
	y += distance * .5
	
	
}
else if (obj_death_animation.active = true)
{
	
	var distance = obj_death_animation.y - y
	
	y += distance * .5	
}



var y_pos = y - 1/2 * camera_get_view_height(view_camera[0])

if (y_pos > 900)
{
	y_pos = 900
}
else if (y_pos < 0)
{
	y_pos = 0
}

camera_set_view_pos(view_camera[0], 0, y_pos)


layer_y("Backgrounds_1", y * 0.25); 
layer_y("Backgrounds_2", y * 0.5);   

