if (alive = false)
{
	respawn_timer += 1
	if (respawn_timer >= respawn_time)
	{
		x = irandom_range(10, 302)
		y = 1000
		y_vel = respawn_vel
		alive = true
		global.respawn()
		audio_play_sound(snd_spawn, 1, false)
	}
}


if (alive = true)
{
	x_vel *= 0.9

	y_vel += grav

	r_x += x_vel

	r_y += y_vel

	var to_move_x = round(r_x);
	var to_move_y = round(r_y);

	r_x -= to_move_x
	r_y -= to_move_y

	var dir = sign(to_move_y)

	var dist_to_r_wall = room_width - x - 8
	var dist_to_l_wall = x - 8

	if (to_move_x >= dist_to_r_wall)
	{
		x = room_width - 9
		x_vel = abs(x_vel) * -1
		r_x = 0
		audio_play_sound(snd_bump, 1, false)
	} else if(to_move_x <= -dist_to_l_wall)
	{
		x = 9
		x_vel = abs(x_vel)
		r_x = 0
		audio_play_sound(snd_bump, 1, false)
	} else 
	{
		x += to_move_x
	}

	while (to_move_y != 0)
	{
		var colliding = false
		var collidewith = instance_place(x, y + dir, obj_collision)
		if (collidewith != noone)
		{
			if (place_meeting(x, y, collidewith) == false)
			{
				colliding = true
			}
		}
		
		if (colliding = false)
		{
			y += dir
			to_move_y -= dir
			if (y > 1000)
			{
				fell()
			}
		}else
		{
			if (collidewith.object_index == obj_boost)
			{
				if (collidewith.active = true)
				{
					y = y + dir
					y_vel= bounce_vel
					r_y = 0
					audio_play_sound(snd_jump, 1, false)
					collidewith.active = false
				}
			}
			if (collidewith.object_index == obj_enemy)
			{
				//lose points and die
			}
			break
		}
	}
	
	if (place_meeting(x, y, obj_boost))
	{
		var collidewith = instance_place(x, y, obj_boost)
		y_vel= bounce_vel
		r_y = 0
		audio_play_sound(snd_jump, 1, false)
		obj_score_manager.Score_A += 5
		obj_score_particle_manager.particle_spawn(collidewith.x, collidewith.y, 5)
		collidewith.active = false
	}


	if (keyboard_check(ord("A")))
	{
		x_vel -= accel
	}

	if (keyboard_check(ord("D")))
	{
		x_vel += accel
	}
	
	if (keyboard_check_pressed(vk_space))
	{
		shooting = true
		obj_bullet_manager.bullet_fired(x, y, facing)
		audio_play_sound(snd_bullets, 10, false)
	}
	
	if (y_vel < 0)
	{
		audio_timer += 1
		if (audio_timer >= audio_time)
		{
			audio_timer = 0
			audio_play_sound(snd_boost, 10, false)
		}
	}

}




//runs REGARDLESS of if its dead:

if (x_vel > 0)
{
	facing = 1
}

if (x_vel < 0)
{
	facing = -1
}

if (y_vel > 0)
{
	rising = true
}else
{
	rising = false
}




//audio controls:

audio_listener_position(x, y, 0)


if (audio_timer < audio_time)
{
	audio_timer++
	
	if (audio_timer = audio_time and !audio_is_playing(snd_gameplay_music))
	{
		audio_play_sound(snd_gameplay_music, 25, true)
	}
}


/*
if (rising = false)
{
	if (irandom_range(0, exhaust_frequency) = exhaust_frequency)
	{
		if (facing = 1)
		{
			part_particles_create(exhaust_system, x - 5, y, exhaust, 1)
		}
		else
		{
			part_particles_create(exhaust_system, x + 5, y, exhaust, 1)
		}
	}
}
*/




