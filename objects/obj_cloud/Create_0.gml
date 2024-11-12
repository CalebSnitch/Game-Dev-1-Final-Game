sprite = 1
state = "spawn"
frame_number = 0
animation_timer = 0
animation_time = 15

growth_timer = 0

function hit()
{
	frame_number = 3
	state = "hit"
}

