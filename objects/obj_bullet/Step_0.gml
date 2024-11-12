if (active = true)
{
	x += movement_speed * fired_direction

	if (x > room_width + 10 or x < -10)
	{
		x = -200
		y = -200
		active = false
	}
}
else if (active = false)
{
	x = -200
	y = -200
}

