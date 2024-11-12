color_timer += 1



if (color_timer >= color_time)
{
	color_timer = 0
	if (color_state = 0)
	{
		color_state = 1
	}
	else
	{
		color_state = 0
	}
}

if (color_state = 0)
{
	var color = c_red
}
else
{
	var color = c_green
}

draw_set_font(fnt_score_particle)

draw_text_color(x, y, score_text, color, color, color, color, 1)


life_timer += 1
if (life_timer >= life_time)
{
	instance_destroy()
}