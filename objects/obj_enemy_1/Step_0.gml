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


if (playing_sound = false)
{
	audio_play_sound_on(s_emit, snd_alien, true, 15, 1)
	playing_sound = true	
}