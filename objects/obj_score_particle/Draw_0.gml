color_timer += 1



if (active = true)
{
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
		x = -200
		y = -200
		color_state = 0
		color_timer = 0
		color_time = 10
		active = false
		life_timer = 0
		life_time = 30
		score_text = " "
	}
}