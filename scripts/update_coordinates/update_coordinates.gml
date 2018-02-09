///@func update_coordinates(name_to_write)
///@param name_to_write

var _input = argument0;

var x_diff = x - global.ox;
var y_diff = y - global.oy;

room_coord[X_ARRAY] = (x_diff div TILE_WIDTH);
room_coord[Y_ARRAY] = (y_diff div TILE_WIDTH);

global.game_grid[# room_coord[X_ARRAY], room_coord[Y_ARRAY]] = _input;