
if (rising = true)
{
	if (shooting = false)
	{
		draw_sprite_ext(sprite_index, 0, x, y, facing, 1, 0, c_white, 1 );
	}
	else
	{
		draw_sprite_ext(sprite_index, 1, x, y, facing, 1, 0, c_white, 1 );
		shooting_timer += 1
		if (shooting_timer > shooting_time)
		{
		shooting = false	
		}
	}
}
else
{
	if (shooting = false)
	{
		draw_sprite_ext(sprite_index, 2, x, y, facing, 1, 0, c_white, 1 );
	}
	else
	{
		draw_sprite_ext(sprite_index, 3, x, y, facing, 1, 0, c_white, 1 );
		shooting_timer += 1
		if (shooting_timer > shooting_time)
		{
			shooting = false	
		}
	}
}


