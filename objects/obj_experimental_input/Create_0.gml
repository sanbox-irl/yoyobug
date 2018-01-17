event_inherited();

state_machine_init();
state_create("Keyboard_Input",input_keyboard);
state_create("Controller_Input",input_controller);
state_init("Controller_Input");

pad = 0;
can_move = array_create(4,true);
counter  = array_create(4,0);
