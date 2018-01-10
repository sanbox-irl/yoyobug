if state_var[0] == true	{
	debug_message("Spawn Circles are Ripened; Switching State to Raising Towers");
	for (var i = 0; i < (instance_number(obj_about_to_spawn)); ++i) {
	    instance_destroy(obj_about_to_spawn);
	}
	state_switch("Spawn Towers",false)
	
}