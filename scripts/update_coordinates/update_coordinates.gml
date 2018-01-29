///@func update_coordinates(name_to_write)
///@param name_to_write

var _input = argument0;

room_coord[X_ARRAY] = x div TILE_WIDTH;
room_coord[Y_ARRAY] = y div TILE_WIDTH;

global.game_grid[# room_coord[X_ARRAY], room_coord[Y_ARRAY]] = _input;