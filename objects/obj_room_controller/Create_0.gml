event_inherited();
run_once = true;


round_count = 0;
bool_counter = 0;
do_once = true;
tower_draw = false;

tower_grid = ds_grid_create(10,10);

state_machine_init();
state_create("Terminal Colors",state_room_make_colors);
state_create("Terminal Directions",state_room_term_directions);
state_create("Find Terminal Locations",state_find_term_locations);
state_create("Idle",state_idle);
state_create("Spawn Towers",state_spawn_towers);
state_create("Timer To Spawn",state_timer_to_spawn);
state_create("Wait to Respawn Towers",state_wait_to_spawn);
state_create("True Idle",state_true_idle);

state_init("Terminal Colors");

time_left = 0;

number = 3;
locked_number = 0;

draw_collision_lines = false;


active_towers = ds_list_create();

offset = array_create(2);
offset[X_ARRAY] = sprite_get_width(spr_totems)/2;
offset[Y_ARRAY] = -7;