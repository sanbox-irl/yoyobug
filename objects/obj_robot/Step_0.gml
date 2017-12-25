//Move and Contact Tiles
if point_distance(x,y,x_to,y_to) > 3	{	
		x = lerp(x,x_to,0.2);
		y = lerp(y,y_to,0.2);
		} else	{ 
			var x_place = ds_grid_value_x(global.game_grid,0,0,global.grid_width,global.grid_height,id);
			var y_place = ds_grid_value_y(global.game_grid,0,0,global.grid_width,global.grid_height,id);
			x = tile_width*x_place+tile_width;
			y = tile_width*y_place+tile_width;
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


if place_meeting(x,y,obj_enemy_robot)
	{
	to_be_destroyed = true;
	}


if to_be_destroyed	{
	debug_message(string("Killing Robot ") + string(id));
	image_speed = 0;
	sat-=0.01*global.dt;
	
	if sat <= 0	{
		instance_destroy(id);
		screen_shake(2,30);
	}
}