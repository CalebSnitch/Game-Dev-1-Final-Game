global.P_System_Player = part_system_create_layer(layer, true)
global.particle_player = part_type_create()



part_type_shape(global.particle_player, pt_shape_star)
part_type_color3(global.particle_player, #eff542, #eff542, #eff542)

//might need to be moved into the function:
	part_type_size(global.particle_player, 0.1, 0.25, 0, 0);
	part_type_speed(global.particle_player, 2, 4, -0.10, 0);
	part_type_direction(global.particle_player, -20, 200, 0, 0);
	part_type_life(global.particle_player, 20, 20);

function player_particles (x_, y_)
{
	part_particles_create(global.P_System_Player, x_, y_, global.particle_player, 12)

}