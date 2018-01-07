if state_var[BOOL_VAR] == 0	{
	var robot = instance_nearest(x,y,obj_robot);
	if instance_exists(robot)	{
		robot.to_be_destroyed = true;	
	}
	switch (rcase)	{
	    case "tutorial":
	        room_to_go = rm_tutorial;
	        break;
	    case "play":
	        room_to_go = room0;
	        break;
	}
	
	
	state_var[BOOL_VAR] = 1;
}


state_switch("State_Gamestart_2",0);
