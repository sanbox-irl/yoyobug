timer = 0;
green_square_start[X_ARRAY] = 13*tile_width;
green_square_start[Y_ARRAY] = 3*tile_width;


state_machine_init();
state_create("State_Gamestart_1",state_gamestart_1);
state_create("State_Gamestart_2",state_gamestart_2);
state_create("State_Gamestart_3",state_gamestart_3);


state_init("State_Gamestart_1");