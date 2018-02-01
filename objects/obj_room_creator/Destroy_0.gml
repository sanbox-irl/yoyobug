/// @description Destroy our Grids
for (var i = 0; i < width; ++i) {
    for (var k = 0; k < height; ++k) {
		ds_map_destroy(global.room_grid[# i,k]);
	}
}

ds_grid_destroy(global.room_grid);

