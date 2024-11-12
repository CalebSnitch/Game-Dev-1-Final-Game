enemy_list = ds_list_create()

for(i = 0; i < instance_number(obj_enemy); i +=1)
{
	var current_instance = instance_find(obj_enemy, i)
	ds_list_add(enemy_list, current_instance)
}



function respawn()
{
	for (i = 0; i < ds_list_size(enemy_list); i += 1;)
	{
		var current_instance = ds_list_find_value(enemy_list, i)
		with (current_instance)
		{
			active = true
			hit_points = starting_hit_points
			x = location_x
			y = location_y
		}
	}
}


