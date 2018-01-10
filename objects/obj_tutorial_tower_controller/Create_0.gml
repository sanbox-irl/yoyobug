event_inherited();

state_machine_init();
state_create("Terminal Colors",make_colors);
state_create("Terminal Directions",make_terminal_directions);
state_create("Find Terminal Locations",state_tutorial_find_towers);
state_create("Idle",state_idle);
state_create("Spawn Towers",state_spawn_towers);
state_create("Timer To Spawn",state_tutorial_standard_state);
state_create("Wait to Respawn Towers",state_wait_to_spawn);
state_create("True Idle",state_true_idle);

state_init("Terminal Colors");

time_left = 0;

number = 2;
locked_number = 0;

draw_collision_lines = false;

purple1 = make_color_rgb(63,54,86);
blue1	= make_color_rgb(66,91,121);
active_towers = ds_list_create();

offset = array_create(2);
offset[X_ARRAY] = sprite_get_width(spr_totems)/2;
offset[Y_ARRAY] = -7;

tower_grid = ds_grid_create(10,10);
