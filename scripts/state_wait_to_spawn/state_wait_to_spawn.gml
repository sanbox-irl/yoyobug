if state_timer/60 > 1	{
		ds_grid_clear(tower_grid,0);
		state_switch("Find Terminal Locations",0);
	}
	