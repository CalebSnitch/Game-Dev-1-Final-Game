draw_set_font(fnt_score)

draw_set_halign(fa_center)


if (transition = false)
{
	draw_text(room_width/2, room_height/2, "You Win!")

	draw_text(room_width/2, room_height/2 + 40, "Score: " + string(global.score))

	draw_text(room_width/2, room_height/2 + 80, "Press Space to Restart")
}
else if (transition = true)
{
	transition_timer += 1
	
	if (transition_timer >= transition_time)
	{
		room_goto(rm_level_select)
	}
	
	if (transition_timer % 5 = 0)
	{
		transition_frame += 1
	}
	
	if (transition_frame % 2 != 1)
	{
			draw_text_color(room_width/2, room_height/2 + 80, "Press Space to Restart", c_yellow, c_yellow, c_yellow, c_yellow, 1)
	}
}
