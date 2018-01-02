///@function move_to_grid( x, y, grid_size);
///@param x
///@param y
///@param grid_size

//Vars
var _grid_size, _diff;
_grid_size = argument2;
_diff = array_create(2);

//Core
_diff[x_array] = argument0 mod _grid_size;
_diff[y_array] = argument1 mod _grid_size;

argument0-= _diff[x_array];
argument1-= _diff[y_array];
	