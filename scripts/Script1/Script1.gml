function respawn()
{
	obj_boost_manager.respawn()
	obj_enemy_manager.respawn()
	obj_bullet_manager.bullet_reset()
	obj_score_particle_manager.score_particle_reset()
}

global.score = 0

global.paused_room = noone