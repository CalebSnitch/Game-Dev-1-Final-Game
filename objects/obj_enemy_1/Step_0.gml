event_inherited()




if (active = true)
{
	if (x + movement_speed > x_max)
	{
		movement_direction = -1
	}
	else if (x - movement_speed < x_min)
	{
		movement_direction = 1
	}

	x += movement_speed * movement_direction
}

