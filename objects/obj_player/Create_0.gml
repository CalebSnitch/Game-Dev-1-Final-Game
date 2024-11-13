image_speed = 0

alive = false
y = -100
respawn_timer = 0

facing = -1
rising = true


shooting = false
shooting_timer = 0
shooting_time = 15

audio_timer = 0
audio_time = 30



function hit() 
{
	alive = false
	respawn_timer = 0
	obj_bullet_manager.bullet_reset()
	obj_death_animation.x = x
	obj_death_animation.y = y
	obj_death_animation.active = true
	y = -100
	audio_play_sound(snd_hit, 1, false)
}

function fell() 
{
	instance_create_depth(x, 990, 100, obj_score_particle, {score_text : string(-obj_score_manager.Score_A)})
	obj_score_manager.Score_A = 0
	obj_bullet_manager.bullet_reset()
	obj_particle_manager.player_particles(x, y)
	alive = false
	y = -100
	respawn_timer = 0
	audio_play_sound(snd_death, 1, false)
}


//exhaust particles

exhaust_system = part_system_create()

exhaust = part_type_create()

exhaust_frequency = 10

part_type_shape(exhaust, pt_shape_pixel);
part_type_size(exhaust, 2, 3, 0, 0);
part_type_scale(exhaust, 1, 1);
part_type_speed(exhaust, 5, 5, 0, 0);
part_type_direction(exhaust, 260, 280, 0, 0);
part_type_gravity(exhaust, 0, 270);
part_type_orientation(exhaust, 0, 0, 0, 0, false);
part_type_colour3(exhaust, #EE4B2B, #EE4B2B, #EE4B2B);
part_type_alpha3(exhaust, 1, 1, 1);
part_type_blend(exhaust, false);
part_type_life(exhaust, 8, 8);





