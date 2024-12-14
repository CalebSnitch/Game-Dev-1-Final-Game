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
	audio_play_sound(snd_button_2, 10, false)
	obj_pause_screen.transition()
}
