run_once = true;

	grid_width = 18;
	grid_height = 10;

	game_grid = ds_grid_create(grid_width,grid_height);
	ds_grid_clear(game_grid,0);

round_count = 0;
bool_counter = 0;
do_once = true;
tower_draw = false;

make_pillar_colors();
make_terminal_directions();