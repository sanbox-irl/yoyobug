//Movement Variables
event_inherited();

x_start = 9;
y_start = 1;
calculate_complete = false;



move_dir = 0;
x_to = x;
y_to = y;

x_move = 0;
y_move = 0;

//Attack variables
attack_start_x = 0;
attack_start_y = 0;

attack_end_x = 0;
attack_end_y = 0;

//Get the tilemap ID
var layer_id = layer_get_id("Collision_Tiles");
collision_tile_map_id = layer_tilemap_get_id(layer_id);

move_magnitude = 1;


counter = 0;
image_speed = 0.5;


sat = 1;

make_once = true;