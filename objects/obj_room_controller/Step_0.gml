for (var i = 0; i < grid_width; ++i) {
	for (var j = 0; j < grid_height; ++j) {
		game_grid[# i,j] = instance_place(i*tile_width+tile_width,j*tile_width+tile_width*2,all);
	}
}


if room == room0	{
	if round_count mod 2 == 0 	{
		bool_counter+=global.dt;
		if bool_counter > 120	{
			tower_draw = true;
			make_terminals(round_count);
			round_count++;
			bool_counter = 0;
		} else	{
				tower_draw = false;
		}
		
	
	
	}
}

kill_robots();

//if instance_number(obj_enemy_robots) < 3
//	{
	
	
//	}
	





