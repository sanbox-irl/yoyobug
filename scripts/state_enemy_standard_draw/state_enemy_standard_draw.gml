//Move the guys!
if target = noone	{
	if instance_exists(obj_robot)	{
		target = instance_nearest(x,y,obj_robot);	
	}
}


if obj_robot_controller.update_enemy		{
	//debug_message("Updated!");

	//spr = find_object();


	//switch (spr) {
	//    case 90:
	//        spr = spr_enemy_bot_up;
	//        break;
	//    case 180:
	//        spr = spr_enemy_bot_left;
	//        break;
	//	case 0:
	//		spr = spr_enemy_bot_right;
	//		break;
	//	case 270:
	//		spr = spr_enemy_bot_down;
	//		break;
	//}


}

if global.start		{
	if instance_exists(target)	{
		if mp_grid_path(obj_experimental_room_design.mp_grid,path,x+tile_width/2,y+tile_width/2,target.x_to+16,target.y_to+16,false)	{
			path_start(path,1*global.dt,path_action_stop,false);
		}
	}
}



//if point_distance(x,y,x_to,y_to) > 0.1	{
//	x = lerp(x,x_to,0.2);
//	y = lerp(y,y_to,0.2);
//} else	{
//	x = x_to;
//	y = y_to;
//}


if place_meeting(x,y,obj_explosions)	{
	to_be_destroyed = true;
}



if to_be_destroyed	{
	state_var[0] = 1;
	state_switch("End_Draw",0);
}



