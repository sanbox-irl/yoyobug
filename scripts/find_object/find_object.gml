///param obj_to_find
//Set Up the Systems, Make sure we Know Where our Targets Are
if !(ds_exists(global.game_grid,ds_type_grid))	{
		show_debug_message("Game Grid does not exist.");
		return;
		} else if !(ds_grid_value_exists(global.game_grid,0,0,global.grid_width,global.grid_height,target))		{
			return false;	
		}
_target_place[x_array]	= (ds_grid_value_x(global.game_grid,0,0,global.grid_width,global.grid_height,target)+1)*tile_width;
_target_place[y_array]	= (ds_grid_value_y(global.game_grid,0,0,global.grid_width,global.grid_height,target)+1)*tile_width;
orig_dir = point_direction(x,y,_target_place[x_array],_target_place[y_array]);
var use_last = false;
var i = 0;

//Main Function Loop Here
repeat (5000)	{	///You're not actually gonna go that many cycles. It's just in case boxed in on multiple sides.
	i++;
	var set_dir = round_to_cardinal(orig_dir);
	x_to = x+lengthdir_x(tile_width,set_dir);
	y_to = y+lengthdir_y(tile_width,set_dir);


	//Check for Collisions here:
	if !(place_meeting(x_to,y_to,obj_solid))	{
		//Here we choose which Dir to Choose.
		if last_dir != noone	{
				set_dir = last_dir;
		}
		
		//Here we find out if we did it in one go.
		if i = 1	{	
			last_dir = noone;	
		} else last_dir = set_dir;
		
		break;	
	} else		{
		if last_dir = noone	{								//i.e. Is this our first turn now encountering an obstacle?
			if (orig_dir > 315) && (orig_dir > set_dir)	{		//this is a special case scenario to deal with 315+ degrees.
				orig_dir-=45;
				
				
			} else	if orig_dir > set_dir	{
				orig_dir+= 45;
				
			} else if orig_dir < set_dir	{
				orig_dir-= 45;
				
			} else if orig_dir = set_dir	{
				orig_dir+= 90;	
			}
		} else if last_dir != noone	{
				orig_dir = last_dir;	
		}
	}
}


return set_dir;


/*
  This function has two goals: 
	1. Return an "x_to" and a "y_to". Additionally:
		a. x_to and y_to cannot be grids where other objects are present.
		b. there must be failsafe behavior.
	2. Return a direction. This directino MUST be a cardinal direction. 
	
	EXTRA GOAL: Make it so each robot randomly alternates their walking direciton.
*/