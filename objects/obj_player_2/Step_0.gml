
event_inherited();

if (alive = true)
{
	if (keyboard_check(vk_left))
	{
		
		x_vel -= accel
	}

	if (keyboard_check(vk_right))
	{
		x_vel += accel
	}
}