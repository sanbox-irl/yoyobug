///param obj_to_find

if !(ds_exists(global.game_grid,ds_type_grid))	{
		show_debug_message("Game Grid does not exist.");
		return;
		} else if !(ds_grid_value_exists(global.game_grid,0,0,global.grid_width,global.grid_height,target))		{
			return false;	
		}

var _x_place	= ds_grid_value_x(global.game_grid,0,0,global.grid_width,global.grid_height,target);
var _y_place	= ds_grid_value_y(global.game_grid,0,0,global.grid_width,global.grid_height,target);

dir = point_direction(x,y,_x_place*tile_width,_y_place*tile_width);

if (dir < 45) || (dir > 315)		{
	dir = right;	
	}	else	if (dir > 45) && (dir < 135)	{
	dir = up;	
	}	else	if (dir > 135) && (dir < 225)	{
	dir = left;
	}	else	if (dir > 225) && (dir < 315)	{
	dir = down;	
	}

switch (dir) {
    case 45:
        dir = right;
        break;
    case 315:
        dir = right;
        break;
	case 135:
		dir = up;
		break;
	case 225:
		dir = left;
		break;
}


x_to = x+lengthdir_x(tile_width,dir);
y_to = y+lengthdir_y(tile_width,dir);

