///@param init_state
//Sets the default state for the object.
state=ds_map_find_value(state_map,argument[0]);
state_name=argument[0];
  
state_next=state;
ds_stack_push(state_stack,state);
state_new=true;