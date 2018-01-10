event_inherited();
active_towers = ds_list_create();
starting_number = 3;
number = starting_number;
draw_collision_lines = false;

offset[X_ARRAY] = sprite_get_width(spr_totems)/2;
offset[Y_ARRAY] = -7;

//Inital Behaviours:
create_room();
make_colors();
make_terminal_directions();

state_machine_init();

state_create("Find Terminal Locations",state_experimental_terminal_locations);
state_create("Spawn Spawning Circles",state_spawn_spawning_circles);
state_create("Idle",state_idle);
state_create("Spawn Towers",state_spawn_towers);
state_create("Timer To Spawn",state_timer_to_spawn);
state_create("Wait to Respawn Towers",state_wait_to_spawn);
state_create("True Idle",state_true_idle);

state_init("Find Terminal Locations");