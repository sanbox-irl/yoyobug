#region Find Our Target if Lost
if !instance_exists(target)	{
	target = noone;	
}

if ((target == noone)	|| (target.state_name == "End_Draw")) {
		target = enemy_robot_find_new_target(target,obj_robot);
}


#endregion

#region Path Finding
//For the Direction of Our Movement
place[X_ARRAY] = x;
place[Y_ARRAY] = y;

//Actual A* Path
if global.start		{
	if instance_exists(target)	{
		if (floor(x) mod tile_width == 0) && (floor(y) mod tile_width = 0)	{
			if mp_grid_path(obj_experimental_room_design.mp_grid,path,x+tile_width/2,y+tile_width/2,target.x_to+tile_width/2,target.y_to+tile_width/2,false)	{
				path_start(path,1*global.dt,path_action_stop,false);
			}
		}
	}
}

#endregion

//Blow Ourselves up Good if We're Near the Player
if instance_exists(target)	{
	if point_distance(x,y,target.x,target.y) < tile_width*1.5 {
		to_be_destroyed = true;
	}
}
if to_be_destroyed	{
	path_end()
	state_var[0] = 1;
	_x = x;
	_y = y;
	
	state_switch("End_Draw",0);
}




