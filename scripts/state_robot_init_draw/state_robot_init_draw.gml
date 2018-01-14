state_var[DRAW_VAR]+=global.dt;

if state_var[DRAW_VAR] > sprite_height-1	{
	if instance_exists(calling_circle)	{
		calling_circle.end_spawning_circle = true;	
	}
	move_to_grid(x,y,tile_width);
	state_switch("Standard_Draw",0);
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

