if (place_meeting(mouse_x, mouse_y, id) and mouse_check_button_pressed(mb_left))
{
	global.paused_room = room
	room_set_persistent(room, true)
	room_goto(rm_pause)
}


