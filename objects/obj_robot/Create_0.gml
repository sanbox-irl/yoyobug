//Get the place;
x_start = 9;
y_start = 1;

move_dir = 0;


x_to = x;
y_to = y;

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

