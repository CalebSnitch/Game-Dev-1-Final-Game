if (active = false)
{
	x = -500
	y = -500
}

if (place_meeting(x, y, obj_bullet))
{
	obj_score_manager.Score_A += points
	
	var bullet = instance_place(x, y, obj_bullet)
	bullet.active = false
	
	hit_points -= 1
	if (hit_points <= 0)
	{
		instance_create_layer(x, y, "Score_Particles", obj_score_particle, {score_text : string(points)})
		obj_particle_manager.enemy_particles(x, y)
		audio_play_sound(snd_enemy_death, 10, false, 2)
		active = false
	}
}

