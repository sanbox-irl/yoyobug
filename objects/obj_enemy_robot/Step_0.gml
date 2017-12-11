//Move the guys!
if global.enter		{
	dir = find_object();
	if dir == false	{
		target = instance_nearest(x,y,obj_robot);
		dir = find_object();
	}

show_debug_message(dir);
//switch (dir) {
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

spr = spr_enemy_bot_up
}

x = lerp(x,x_to,0.2);
y = lerp(y,y_to,0.2);


