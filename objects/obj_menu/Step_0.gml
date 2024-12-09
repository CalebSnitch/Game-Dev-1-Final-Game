if (state == STATES.TRANSITION)
{
	camera_set_view_pos(view_camera[0], 0, camera_get_view_y(view_camera[0]) - 8)
	
	if (camera_get_view_y(view_camera[0]) <= 0)
	{
		room_goto(rm_destination)
	}
}



if (slow_timer = slow_time)
{
	layer_x("Backgrounds_1", layer_get_x("Backgrounds_1") - 2)

	if (layer_get_x("Backgrounds_1") = -320)
	{
		layer_x("Backgrounds_1", 0)
	}


	layer_x("Backgrounds_2", layer_get_x("Backgrounds_2") - 1)

	if (layer_get_x("Backgrounds_2") = -320)
	{
		layer_x("Backgrounds_2", 0)
	}
	
	slow_timer = 0
}
else slow_timer++




if (keyboard_check_pressed(ord("X")))
{
	show_message(string(room) + " " + string(camera_get_view_x(view_camera[0])) + " " + string(camera_get_view_y(view_camera[0])))
}