/*
draw_sprite(spr_cloud_1, 0, x, y)
var current_sprite

if (sprite = 1)
{
	current_sprite = spr_cloud_1
}
else if (sprite = 2)
{
	current_sprite = spr_cloud_2
}
else if (sprite = 3)
{
	current_sprite = spr_cloud_3
}
else if (sprite = 4)
{
	current_sprite = spr_cloud_4
}
*/


if (state = "spawn")
{
	animation_timer += 1
	if (animation_timer > animation_time)
	{
		frame_number += 1
		animation_timer = 0
		if (frame_number > 1)
		{
			state = "static"
		}
	}
	draw_sprite(sprite_index, frame_number, x, y)
}
else if (state = "static")
{
	draw_sprite(sprite_index, 2, x, y)
}
else if (state = "hit")
{
	animation_timer += 1
	if (animation_timer > animation_time)
	{
			instance_destroy()
	}
	draw_sprite(sprite_index, frame_number, x, y)
}




