state_var[0]-=0.05*global.dt;
	
if state_var[0] <= 0	{
	if state_var[2] == 0	{
		var explo_id = instance_create_layer(x,y,"Background_Instances",obj_explosions);
		instance_destroy();
		screen_shake(2,30);
		state_var[2] = 1;
	}
} else	{
	if state_new	{
		debug_message(string("Killing Robot ") + string(id));
	}
	image_speed = 0;
}


switch (move_dir) {
    case up:
        sprite_index = spr_robot_up;
        break;
    case left:
        sprite_index = spr_robot_left;
        break;
	case right:
		sprite_index = spr_robot_right;
		break;
	default:
		sprite_index = spr_robot_down;
		break;
}

