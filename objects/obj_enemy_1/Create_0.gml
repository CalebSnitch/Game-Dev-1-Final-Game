event_inherited()

x_max = room_width - sprite_width - 10

x_min = 10

movement_speed = 2
movement_direction = 1



//audio:
s_emit = audio_emitter_create()

audio_max_distance_to_be_heard = 225

audio_starts_to_drop_at = 100

audio_falloff_set_model(audio_falloff_linear_distance)

audio_emitter_position(s_emit, x, y, 0)

audio_emitter_falloff(s_emit, audio_starts_to_drop_at, audio_max_distance_to_be_heard, 1)

playing_sound = false




