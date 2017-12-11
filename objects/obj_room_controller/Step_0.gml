if room == room0	{

if global.start {
	bool_counter+=global.dt;
	tower_draw = true;
	if bool_counter > 300		{
		make_terminals(round_count);
		round_count++;
		bool_counter = 0;
	}
		} else	{
		tower_draw = false;
		}
		
	
	
}


kill_robots();



