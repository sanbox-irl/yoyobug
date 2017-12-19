if obj_about_to_spawn.ready_to_spawn_tower	{
	debug_message("Spawn Circles are Ripened; Switching State to Raising Towers");
	for (var i = 0; i < (instance_number(obj_about_to_spawn)); ++i) {
	    instance_destroy(obj_about_to_spawn);
	}
	state_switch("Spawn Towers",true)
	
}