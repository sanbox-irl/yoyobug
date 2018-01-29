//inst_camera = instance_create_layer(x,y,layer,obj_camera);
inst_global = instance_create_layer(x,y,"Background",obj_init_globals);
inst_terminal = instance_create_depth(x,y,-1000,obj_menu_terminal);

dev_obj			= instance_create_layer(x,y,"Effects_Instance",obj_debug);

window_set_fullscreen(true);

if inst_global && inst_terminal
	{
	room_goto(rm_menu);	
	}
	
