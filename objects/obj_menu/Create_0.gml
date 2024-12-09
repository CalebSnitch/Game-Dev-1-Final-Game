rm_destination = rm_level_select

enum STATES 
{
	IDLE,
	TRANSITION,
}

state = STATES.IDLE

camera_set_view_pos(view_camera[0], 0, 200)

slow_timer = 0

slow_time = 2

