//Delta Time
global.dt = 0;
global.start = false;

//Macros
#macro	up			90
#macro	right		0
#macro	left		180
#macro	down		270
#macro terminal		obj_input_terminal
#macro tile_width	32



global.grid_width = 18;
global.grid_height = 10;

global.game_grid = ds_grid_create(global.grid_width,global.grid_height);

