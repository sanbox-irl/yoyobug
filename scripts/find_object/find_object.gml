///param obj_to_find

if !(ds_exists(global.game_grid,ds_type_grid))	{
		show_debug_message("Game Grid does not exist.");
		return;
		} else if !(ds_grid_value_exists(global.game_grid,0,0,global.grid_width,global.grid_height,target))		{
			return false;	
		}

_target_place[x_array]	= ds_grid_value_x(global.game_grid,0,0,global.grid_width,global.grid_height,target)+1;
_target_place[y_array]	= ds_grid_value_y(global.game_grid,0,0,global.grid_width,global.grid_height,target)+1;



for (var i = 0; i < array_length_1d(_target_place); ++i) {
    _target_place[i]*=tile_width;
}

dir = point_direction(x,y,_target_place[x_array],_target_place[y_array]);

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
return dir;
