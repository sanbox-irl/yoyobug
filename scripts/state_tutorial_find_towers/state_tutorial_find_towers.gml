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

	tower_grid[# i,tower_x]	= x_place[i];
	tower_grid[# i,tower_y]	= y_place[i];
	tower_grid[# i,TERMINAL_X]	= x_term_place[i];
	tower_grid[# i,terminal_y]	= y_term_place[i];
	tower_grid[# i,random_no]	= irandom(5);
	tower_grid[# i,tower_color]	= pillar_color_map[? tower_grid[# i,random_no]];
	tower_grid[# i,term_direc]	= random_direc[i];
}

var _inst = array_create(number);
for (var i = 0; i < number; ++i) {
    _inst[i]		= instance_create_layer(tower_grid[# i, tower_x], tower_grid[# i, tower_y], "Instances",obj_about_to_spawn);
	_inst[i].color	= tower_grid[# i, tower_color];
}

state_switch("Idle",false);