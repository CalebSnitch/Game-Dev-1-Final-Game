if (state = PAUSE_STATES.TRANSITION)
{
	if (timer < 60)
	{
		draw_set_halign(fa_center)
		draw_set_valign(fa_center)
		draw_set_font(fnt_countdown)
		draw_text(room_width/2, room_height/2, "3")

		if (timer == 1) 	audio_play_sound(snd_button, 10, false)
	}
	else if (timer < 120)
	{
		draw_set_halign(fa_center)
		draw_set_valign(fa_center)
		draw_set_font(fnt_countdown)
		draw_text(room_width/2, room_height/2, "2")
		if (timer == 60) 	audio_play_sound(snd_button, 10, false)
		
	}
	else if (timer < 180)
	{
		draw_set_halign(fa_center)
		draw_set_valign(fa_center)
		draw_set_font(fnt_countdown)
		draw_text(room_width/2, room_height/2, "1")
		if (timer == 180) 	audio_play_sound(snd_button, 10, false)
	}
	else if (timer >= 180)
	{
		audio_play_sound(snd_button_2, 10, false)
		room_goto(global.paused_room)
	}
	timer ++
}



