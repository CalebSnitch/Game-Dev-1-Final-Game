
event_inherited();

if (alive = true)
{
	if (keyboard_check(ord("A")))
	{
		x_vel -= accel
	}

	if (keyboard_check(ord("D")))
	{
		x_vel += accel
	}
}