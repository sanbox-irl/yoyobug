for (var i = 0; i < grid_width; ++i) {
	for (var j = 0; j < grid_height; ++j) {
		game_grid[# i,j] = instance_place(i*tile_width,j*tile_width,obj_robot);
	}
}
