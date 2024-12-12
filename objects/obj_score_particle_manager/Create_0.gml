particle_list = ds_list_create()

repeat (45)
{
	ds_list_add(particle_list, instance_create_layer(-200, -200, "Score_Particles", obj_score_particle))
}



function particle_spawn(scored_x, scored_y, scored_points)
{
	for (i = 0; i < ds_list_size(particle_list); i += 1;)
	{
			var current_entry = ds_list_find_value(particle_list, i)
			if (current_entry.active = false)
			{
				with (ds_list_find_value(particle_list, i))
				{
					x = scored_x 
					y = scored_y
					score_text = scored_points
					active = true
				}
				i = ds_list_size(particle_list)
			}
	}
}

function score_particle_reset()
{
	for (i = 0; i < ds_list_size(particle_list); i += 1;)
	{
		var current_entry = ds_list_find_value(particle_list, i)
		current_entry.active = false
	}
}

