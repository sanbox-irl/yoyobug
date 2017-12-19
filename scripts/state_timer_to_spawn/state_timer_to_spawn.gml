time_left = 15;

if state_timer/60 > time_left	{
	for (var i = 0; i < number; ++i) {
		if !(instance_number(obj_terminal_pillar) = 0)	{
		var destroy_this_tower = instance_place(tower_grid[# i, 0], tower_grid[# i, 1],obj_terminal_pillar)
		destroy_this_tower.end_draw = true;
		} else 	{
			state_switch("Wait to Respawn Towers",0);
			time_left = 0;
			};
	}
}