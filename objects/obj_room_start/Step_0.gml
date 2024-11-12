if (transition = false)
{
	if (keyboard_check_pressed(vk_space))
	{
		audio_play_sound(snd_start, 10, false)
		transition = true
	}
}