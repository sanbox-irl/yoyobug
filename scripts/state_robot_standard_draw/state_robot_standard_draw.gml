if state_new	{
	invuln_frames = 30;	
}

if point_distance(x,y,x_to,y_to) > 3	{
	x = lerp(x,x_to,0.2);
	y = lerp(y,y_to,0.2);
	} else	{
		if reset_coords == false	{
			free_coordinates();
			
			x = x_to;
			y = y_to;
			update_coordinates(grid_name);
			reset_coords = true;
		}
	}
		

if place_meeting(x,y,obj_enemy_robot) {
	to_be_destroyed = true;
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

if invuln_frames > 0	{
	invulnerable = true;	
} else invulnerable = false;

if powerup_script != ""	{
	script_execute(powerup_script);
}


if invulnerable	{
	to_be_destroyed = false;
}

if to_be_destroyed	{
	powerup_script = "";
	state_var[0] = 1;
	state_switch("End_Draw",0);
}

