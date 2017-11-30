//Move and Contact Tiles
if point_distance(x,y,x_to,y_to) > 0	{	
	var tile_map = layer_tilemap_get_id("Collision_Tiles")
	if !(tilemap_get_at_pixel(tile_map,x_to,y_to))	{
		x = lerp(x,x_to,0.2);
		y = lerp(y,y_to,0.2);
		} else	{
			x_to = x;
			y_to = y;
			terminal.command_result = "ERROR\nUnit not moved!"
			}
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


//move_and_contact_tiles(collision_tile_map_id,tile_width,velocity_);


if !(terminal.command_string = "")
	{
	image_speed = 0.5;	
	} else image_speed = 0;

