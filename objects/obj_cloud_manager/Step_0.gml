

var num_clouds = instance_number(obj_cloud)

frames_since_cloud += 1

if (frames_since_cloud > frames_between_clouds || num_clouds < 5)
{
	if (num_clouds < max_clouds)
	{
		var new_cloud = instance_create_layer(random_range(30, room_width-30), random_range(100, room_height - 20), "Instances", obj_cloud)
		with(new_cloud)
		{
			var tries = 0
			while(tries < 3000 and collision_rectangle(x - 32, y - 32, x + 32, y + 32, obj_cloud, false, true) != noone)
			{
				x = random_range(30, room_width-30)
				y = random_range(100, room_height - 20)
				tries += 1
			}
		}
	}
	frames_since_cloud = 0
}


var progression = irandom(instance_number(obj_cloud))

frames_since_growth += 1


if (frames_since_cloud >= frames_between_growth)
{
	with (instance_find(obj_cloud, progression))
	{
		if (state = "static" and sprite < 4)
		{
			
			state = "spawn"
			frame_number = 0
			animation_timer = 0
			sprite += 1
			growth_timer = 0
		}
	}
	frames_since_growth = 0
}