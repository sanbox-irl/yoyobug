/// @description Update the Step
global.dt = delta_time/1000000 * 60;
global.enter = keyboard_check_pressed(vk_enter);


for (var i = 0; i < global.grid_width; ++i) {
	for (var j = 0; j < global.grid_height; ++j) {
		global.game_grid[# i,j] = instance_place(i*tile_width+tile_width+16,j*tile_width+tile_width+16,obj_robot);
	}
}

debug_message(global.energy);