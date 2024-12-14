var mx = device_mouse_x_to_gui(0)

var my = device_mouse_y_to_gui(0)



if (point_in_rectangle(mx, my, set_x, set_y, set_x + sprite_width, set_y + sprite_height) and mouse_check_button_pressed(mb_left))
{
	global.paused_room = room
	room_persistent = true
	room_goto(rm_pause)
}


