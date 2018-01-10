//Hardcoded Tutorial Values Here
number = 2;
var x_place, y_place, x_term_place,y_term_place,random_direc;
x_place[0] = 6;
y_place[0] = 5;
x_term_place[0] = 5;
y_term_place[0] = 5;
random_direc[0] = 180;

x_place[1] = 13;
y_place[1] = 5;
x_term_place[1] = 14;
y_term_place[1] = 5;
random_direc[1] = 0;

//Loop them into coordinates:
for (var i = 0; i < number; ++i) {
    x_place[i]*=tile_width;
	y_place[i]*=tile_width;
	x_term_place[i]*=tile_width;
	y_term_place[i]*=tile_width;

	tower_grid[# i,TOWER_X]	= x_place[i];
	tower_grid[# i,TOWER_Y]	= y_place[i];
	tower_grid[# i,TERMINAL_X]	= x_term_place[i];
	tower_grid[# i,TERMINAL_Y]	= y_term_place[i];
	tower_grid[# i,RANDOM_NO]	= irandom(5);
	tower_grid[# i,TOWER_COLOR]	= pillar_color_map[? tower_grid[# i,RANDOM_NO]];
	tower_grid[# i,TERM_DIREC]	= random_direc[i];
}

var _inst = array_create(number);
for (var i = 0; i < number; ++i) {
    _inst[i]		= instance_create_layer(tower_grid[# i, TOWER_X], tower_grid[# i, TOWER_Y], "Instances",obj_about_to_spawn);
	_inst[i].color	= tower_grid[# i, TOWER_COLOR];
}

state_switch("Idle",false);