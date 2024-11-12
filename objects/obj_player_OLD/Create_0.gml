image_speed = 0

alive = false
y = -100
respawn_timer = 0

facing = "left"

function hit() 
{
	obj_particle_manager.player_particles(x, y)
	y = -100
	respawn_timer = 0
	alive = false
	audio_play_sound(snd_hit, 1, false)
	//sinks to bottom of screen
}

function fell() 
{
	obj_score_manager.score_decrease(score_log)
	obj_particle_manager.player_particles(x, y)
	alive = false
	y = -100
	respawn_timer = 0
	audio_play_sound(snd_death, 1, false)
	//sinks to bottom of screen
}

