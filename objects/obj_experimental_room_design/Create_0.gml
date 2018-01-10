tower_list = 0;
//Inital Behaviours:
create_room();
make_colors();
make_terminal_directions();

state_machine_init();

state_create("Find Terminal Locations",state_experimental_terminal_locations);
state_create("Idle",state_idle);
state_create("Spawn Towers",state_spawn_towers);
state_create("Timer To Spawn",state_timer_to_spawn);
state_create("Wait to Respawn Towers",state_wait_to_spawn);
state_create("True Idle",state_true_idle);

state_init("Find Terminal Locations");