event_inherited();

state_machine_init();
state_create("Keyboard_Input",input_keyboard);
state_create("Controller_Input",input_controller);
state_init("Controller_Input");

pad = 0;
can_move = array_create(4,true);
counter  = array_create(4,0);


move_left = false;
move_right = false;
move_down = false;
move_up = false;
restart = false;
ping_hd = false;
exit_var = false;
spawn_var = false;