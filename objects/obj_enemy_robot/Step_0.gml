//Move the guys!
if obj_robot_controller.update_enemy		{
	debug_message("Updated!");

	spr = find_object();


	switch (spr) {
	    case 90:
	        spr = spr_enemy_bot_up;
	        break;
	    case 180:
	        spr = spr_enemy_bot_left;
	        break;
		case 0:
			spr = spr_enemy_bot_right;
			break;
		case 270:
			spr = spr_enemy_bot_down;
			break;
	}


}

if point_distance(x,y,x_to,y_to) > 0.1	{
	x = lerp(x,x_to,0.2);
	y = lerp(y,y_to,0.2);
} else	{
	x = x_to;
	y = y_to;
}


