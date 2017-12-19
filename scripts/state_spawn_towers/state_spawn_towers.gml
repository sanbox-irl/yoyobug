/*
the grid appears as:
    tower_grid[# i,0]	= x_place[i];
	tower_grid[# i,1]	= y_place[i];
	tower_grid[# i,2]	= x_term_place[i];
	tower_grid[# i,3]	= y_term_place[i];
	tower_grid[# i,4]	= tower_color;

*/
var _inst = 0;
var _term = 0;

for (var i = 0; i < number; ++i) {
    _inst[i] = instance_create_layer(tower_grid[# i,0],tower_grid[# i,1],"Instances",obj_terminal_pillar);
	_inst[i].init_draw = true;
	_inst[i].image_index = tower_grid[# i,4];
	_inst[i].color = tower_grid[# i, 5];
	
	
	_term[i] = instance_create_layer(tower_grid[# i,2],tower_grid[# i, 3],"Instances",obj_terminal);
	_term[i].spr = tower_grid[# i,6];
}


state_switch("Timer To Spawn",0);