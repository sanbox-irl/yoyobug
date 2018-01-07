var _inst = 0;
var _term = 0;

for (var i = 0; i < number; ++i) {
    _inst[i] = instance_create_layer(tower_grid[# i,tower_x],tower_grid[# i,tower_y],"Instances",obj_terminal_pillar);
	_inst[i].init_draw = true;
	_inst[i].image_index = tower_grid[# i,random_no];
	_inst[i].color = tower_grid[# i, tower_color];
	_inst[i].tower_number = i;
}


state_switch("Timer To Spawn",0);