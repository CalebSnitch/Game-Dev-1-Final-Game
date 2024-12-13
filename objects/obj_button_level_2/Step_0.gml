if (obj_menu.state = STATES.IDLE)
	{
	if (!position_meeting(mouse_x, mouse_y, id))
	{
		selected = false
	}else if (selected = false)
	{
		audio_play_sound(snd_button, 10, false)
		selected = true
	}

	if (position_meeting(mouse_x, mouse_y, id) and mouse_check_button_pressed(mb_left))
	{
		obj_menu.rm_destination = Room0
		obj_menu.state = STATES.TRANSITION
		audio_play_sound(snd_button_2, 10, false)
	}
}
