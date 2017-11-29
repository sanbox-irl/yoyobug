//Get the place;
x_start = 9;
y_start = 1;

x = tile_width*x_start;
y = tile_width*y_start;

//var id_ = id;

//	if (obj_room_controller.game_grid[# x_start,y_start] == "")	{
//		obj_room_controller.game_grid[# x_start,y_start] = id;	
//	}

velocity_ = [0,0];

max_velocity_ = [4,8];


//Get the tilemap ID
var layer_id = layer_get_id("Collision_Tiles");
collision_tile_map_id = layer_tilemap_get_id(layer_id);

starting_x = x;
starting_y = y;

flip = 1;

counter = 0;

image_speed = 0;
