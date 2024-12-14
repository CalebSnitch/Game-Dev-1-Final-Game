enum PAUSE_STATES 
{
	IDLE,
	TRANSITION,
}



state = PAUSE_STATES.IDLE

timer = 0

transition_time = 180


function transition()
{
	instance_destroy(obj_button_home)
	instance_destroy(obj_button_resume)
	state = PAUSE_STATES.TRANSITION
}


