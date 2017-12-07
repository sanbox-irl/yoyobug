//Move and Contact Tiles
if point_distance(x,y,x_to,y_to) > 0	{	
		x = lerp(x,x_to,0.2);
		y = lerp(y,y_to,0.2);
		} else	{
			x_to = x;
			y_to = y;
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
	instance_destroy();
	}

//if (		( tile_get_empty(tilemap_get_at_pixel(	collision_tile_map_id,
//													mouse_x,
//													mouse_y)							))			&&				
//					!	(	instance_place(			mouse_x,
//													mouse_y,obj_solid)					))		
//					{
//					show_debug_message(choose("YOU CAN'T GO THERE","blerghblergh","yarp"));	
//					}