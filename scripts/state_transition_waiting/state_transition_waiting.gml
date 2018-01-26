if state_new	{
	debug_message("Waiting to Transition");	
}

if instance_exists(obj_game_room_controller)	{
	if obj_game_room_controller.transition_time == true{
		state_switch("Init",0);
	}
} else {
	instance_create_layer(275,33,"Higher_Instances",obj_game_room_controller);
}
