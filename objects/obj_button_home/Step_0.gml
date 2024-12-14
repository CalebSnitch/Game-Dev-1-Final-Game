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
	room_set_persistent(global.paused_room, false)
	audio_play_sound(snd_button_2, 10, false)
	if (audio_is_playing(snd_gameplay_music))
	{
		audio_stop_sound(snd_gameplay_music)
	}
	room_goto(rm_start)
}
