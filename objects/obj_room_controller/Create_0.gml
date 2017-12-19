run_once = true;


round_count = 0;
bool_counter = 0;
do_once = true;
tower_draw = false;

tower_grid = ds_grid_create(10,10);

state_machine_init();
state_create("Terminal Colors",make_pillar_colors);
state_create("Terminal Directions",make_terminal_directions);
state_create("Find Terminal Locations",state_terminal_location);
state_create("Idle",state_idle);
state_create("Spawn Towers",state_spawn_towers);
state_create("Timer To Spawn",state_timer_to_spawn);
state_create("Wait to Respawn Towers",state_wait_to_spawn);

state_init("Terminal Colors");

time_left = 0;