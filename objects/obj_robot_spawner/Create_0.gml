timer	=	0;
small_timer = 0;
color = obj_room_controller.pillar_color_map[? irandom(5)];

state_machine_init();
state_create("Init_State",state_about_to_spawn_init_state);
state_create("Waiting_to_Die", state_about_to_spawn_waiting_to_die);
state_create("End_State",state_about_to_spawn_end_state);
state_init("Init_State");
