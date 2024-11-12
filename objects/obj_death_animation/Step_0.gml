if (active = false)
{
	y = -1000
}
else
{
	y += fall_speed
	
	obj_player.respawn_timer = 0
	
	if (y > 1000)
	{
		fell()
	}
}


