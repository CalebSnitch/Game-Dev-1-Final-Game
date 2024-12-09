if (obj_menu.state = STATES.IDLE)
	{
	if (!position_meeting(mouse_x, mouse_y, id))
	{
		selected = false
	}else if (selected = false)
	{
		//play select sound
		selected = true
	}

	if (position_meeting(mouse_x, mouse_y, id) and mouse_check_button_pressed(mb_left))
	{
		obj_menu.rm_destination = room0
		obj_menu.state = STATES.TRANSITION
	}
}
