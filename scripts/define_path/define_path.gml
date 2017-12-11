var sx = obj_enemy_robot.x;
var sy = obj_enemy_robot.y;
var tx = obj_robot.x;
var ty = obj_robot.y;

if !(mp_grid_path(global.AI_grid,global.path,sx,sy,tile_width*8,tile_width*8,false))	{
	show_debug_message("PANIC!!! NO PATH");	
	return false;
	}	else	{
		path_set_kind(global.path,0);
		show_debug_message("it worked?");
		return true;
	}