if (shaking == true)
{
	if (shake_timer%shake_modulo = 0)
	{
		var cam_x = camera_get_view_x(view_camera[0]);
		var cam_y = camera_get_view_y(view_camera[0]);
		camera_set_view_pos(view_camera[0],	cam_x + irandom_range(-7, 7),	cam_y + irandom_range(-7, 7));

	}
	shake_timer--
	if (shake_timer <= 0)
	{
		shaking = false
		
	}
}

