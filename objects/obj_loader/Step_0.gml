if inst_global && inst_terminal
	{
	room_goto(room0);	
	}

if room = room0
	{
	instance_create_depth(x,y,-900,obj_room_controller);
	instance_destroy();
	}