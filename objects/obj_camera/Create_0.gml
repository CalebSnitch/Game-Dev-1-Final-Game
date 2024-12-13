x = 0
y = obj_player.y



camera_set_view_pos(view_camera[0], x, y)


shake_timer = 0

shake_time = 20

shake_modulo = 3

shaking = false

function screen_shake()
{
	shake_timer = shake_time
	shaking = true
}




