

function respawn ()
{
	for (i = 0; i < instance_number(obj_boost); i += 1)
	{
		var current_instance = instance_find(obj_boost, i)
		current_instance.active = true
	}
}


