if inst_global && inst_terminal
	{
	room_goto(room0);	
	}

if room = room0
	{
	instance_create_layer(x,y,"Instances",obj_room_controller);
	instance_destroy();
	}