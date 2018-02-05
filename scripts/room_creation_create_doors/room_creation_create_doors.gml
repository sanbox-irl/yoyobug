var _xdestination = 0,
	_ydestination = 0,
	_map		  = 0;


//Make Door Places:
for (var i=0; i < width; ++i)	{
	for (k=0; k < height; ++k) {
		_map = global.room_grid[# i,k];
		var _hcells = (_map[? "hcells"]-2),
			_vcells = (_map[? "vcells"]-2);	//Extra 2 
		
		//Left & Right
		var number1 = irandom_range(1,_vcells);
		_map[? "door_left"] = number1;

		repeat (_vcells)	{
			var number2 = irandom_range(1,_vcells);
			if number2 != number1	{
				break;
			}
		}
		_map[? "door_right"] = number2;

		//Top & Bottom
		var number3 = irandom_range(1,_hcells);
		_map[? "door_top"] = number3;

		repeat (_hcells)	{
			var number4 = irandom_range(1,_hcells);
			if number4 != number3	{
				break;
			}
		}
		_map[? "door_bottom"] = number4;
	}
}

//Make Doors:
for (i=0; i < width; ++i) { 
	for (var k=0; k < height; ++k) { 
		_map = global.room_grid[# i,k];

		if _map[? "left"] 	{
			var _x = _map[? "x_origin"];
			var _y = _map[? "y_origin"] + _map[? "door_left"]*TILE_WIDTH;
			var door = instance_create_layer(_x,_y,"Instances",obj_door);
			door.orientation = "vertical";
			door.map = _map;

			var _data = tilemap_get_at_pixel(global.collision_tilemap,_x,_y);
			if !tile_get_empty(_data)	{
				_data = tile_set_empty(_data);
				tilemap_set_at_pixel(global.collision_tilemap,_data,_x,_y);
			}

			var _map_dest = global.room_grid[# (i-1),k],
				_x_dest = _map_dest[? "x_origin"] + (_map_dest[? "hcells"]-2)*TILE_WIDTH,
				_y_dest = _map_dest[? "y_origin"] + (_map_dest[? "door_right"])*TILE_WIDTH;
			
			door.x_destination = _x_dest;
			door.y_destination = _y_dest;
		}

		if _map[? "right"] 	{
			var _x = _map[? "x_origin"] + (_map[? "hcells"]-1)*TILE_WIDTH;;
			var _y = _map[? "y_origin"] + _map[? "door_right"]*TILE_WIDTH;
			var door = instance_create_layer(_x,_y,"Instances",obj_door);
			door.orientation = "vertical";
			door.map = _map;

			var _data = tilemap_get_at_pixel(global.collision_tilemap,_x,_y);
			if !tile_get_empty(_data)	{
				_data = tile_set_empty(_data);
				tilemap_set_at_pixel(global.collision_tilemap,_data,_x,_y);
			}

			var _map_dest = global.room_grid[# (i+1),k],
				_x_dest = _map_dest[? "x_origin"] + TILE_WIDTH,
				_y_dest = _map_dest[? "y_origin"] + (_map_dest[? "door_left"])*TILE_WIDTH;
			
			door.x_destination = _x_dest;
			door.y_destination = _y_dest;		
		}

		if _map[? "top"] 	{
			var _x = _map[? "x_origin"]+ _map[? "door_top"]*TILE_WIDTH;
			var _y = _map[? "y_origin"];
			var door = instance_create_layer(_x,_y,"Instances",obj_door);
			door.orientation = "horizontal";
			door.map = _map;

			var _data = tilemap_get_at_pixel(global.collision_tilemap,_x,_y);
			if !tile_get_empty(_data)	{
				_data = tile_set_empty(_data);
				tilemap_set_at_pixel(global.collision_tilemap,_data,_x,_y);
			}
			if k != 0	{										//Have to Add this Check in for the Top Room.
				var _map_dest = global.room_grid[# i,(k-1)],
					_x_dest = _map_dest[? "x_origin"] + (_map_dest[? "door_bottom"]*TILE_WIDTH),
					_y_dest = _map_dest[? "y_origin"] + (_map_dest[? "vcells"] -2)*TILE_WIDTH;
				
				door.x_destination = _x_dest;
				door.y_destination = _y_dest;
			}
		}

		if _map[? "bottom"] 	{
			var _x = _map[? "x_origin"] + _map[? "door_bottom"]*TILE_WIDTH;
			var _y = _map[? "y_origin"] + (_map[? "vcells"]-1)*TILE_WIDTH;
			var door = instance_create_layer(_x,_y,"Instances",obj_door);
			door.orientation = "horizontal";
			door.map = _map;

			var _data = tilemap_get_at_pixel(global.collision_tilemap,_x,_y);
			if !tile_get_empty(_data)	{
				_data = tile_set_empty(_data);
				tilemap_set_at_pixel(global.collision_tilemap,_data,_x,_y);
			}
			var _map_dest = global.room_grid[# i,(k+1)],
				_x_dest = _map_dest[? "x_origin"] + (_map_dest[? "door_top"]*TILE_WIDTH),
				_y_dest = _map_dest[? "y_origin"] + TILE_WIDTH;
			
			door.x_destination = _x_dest;
			door.y_destination = _y_dest;	
		}

		
	}
}