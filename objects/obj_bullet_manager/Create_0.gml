bullet_list = ds_list_create()

repeat (15)
{
	ds_list_add(bullet_list, instance_create_layer(-200, -200, "Instances", obj_bullet))
}



function bullet_fired(player_x, player_y, bullet_direction)
{
	for (i = 0; i < ds_list_size(bullet_list); i += 1;)
	{
			var current_entry = ds_list_find_value(bullet_list, i)
			if (current_entry.active = false)
			{
				with (ds_list_find_value(bullet_list, i))
				{
					x = player_x 
					y = player_y
					fired_direction = bullet_direction
					active = true
				}
				i = ds_list_size(bullet_list)
			}
	}
}

function bullet_reset()
{
	for (i = 0; i < ds_list_size(bullet_list); i += 1;)
	{
		var current_entry = ds_list_find_value(bullet_list, i)
		current_entry.active = false
	}
}

