image_speed = 0

active = false

fall_speed = 10




function fell() 
{
	instance_create_depth(x, 990, 100, obj_score_particle, {score_text : string(-obj_score_manager.Score_A)})
	obj_score_manager.Score_A = 0
	obj_bullet_manager.bullet_reset()
	obj_particle_manager.player_particles(x, y)
	active = false
	obj_camera.screen_shake()
	y = -100
	audio_play_sound(snd_death, 1, false)
}
