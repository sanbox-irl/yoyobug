var _inst = 0;
var _term = 0;

for (var i = 0; i < number; ++i) {
    _inst[i] = instance_create_layer(tower_grid[# i,TOWER_X],tower_grid[# i,TOWER_Y],"Instances",obj_terminal_pillar);
	_inst[i].init_draw = true;
	_inst[i].image_index = tower_grid[# i,RANDOM_NO];
	_inst[i].color = tower_grid[# i, TOWER_COLOR];
	_inst[i].tower_number = i;
}

mp_grid_clear_all(mp_grid);
mp_grid_add_instances(mp_grid,obj_solid,false);
mp_grid_add_instances(mp_grid,obj_enem_spawner,false);
mp_grid_add_instances(mp_grid,obj_terminal, false);
mp_grid_add_instances(mp_grid,obj_terminal_pillar,false);

state_switch("Timer To Spawn",0);

