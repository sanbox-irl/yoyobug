if global.dev_mode = false {
	exit;	
}
global.dimensions = ds_grid_create(width,height);
ds_grid_clear(global.dimensions,"");

for (var i = 0; i < width; ++i) {
    for (var k = 0; k < height; ++k) {
	    global.dimensions[# i, k] =	concat("W: ",ds_map_find_value(global.room_grid[# i, k],"width")," H: ",ds_map_find_value(global.room_grid[# i, k],"height"));
	}
}
