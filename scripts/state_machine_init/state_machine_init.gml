///Initilize the variables required for the state engine.
state=noone;
state_next=state;
state_name="Unknown";
state_timer=0;
state_map=ds_map_create();
state_keys=ds_map_create(); //The inverse map of the state map.
state_stack=ds_stack_create();
state_new=true;