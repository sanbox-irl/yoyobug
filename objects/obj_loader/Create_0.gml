inst_camera = instance_create_layer(x,y,layer,obj_camera);
inst_global = instance_create_layer(x,y,layer,obj_init_globals);
inst_terminal = instance_create_depth(x,y,-1000,obj_menu_terminal);

window_set_fullscreen(false);

if inst_global && inst_terminal && inst_camera
	{
	room_goto(rm_menu);	
	}
	
