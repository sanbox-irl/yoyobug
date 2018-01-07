//Top left corner of Green
global.is_playroom = true;
var frames = 60;

state_var[2]+= ((green_square_start[X_ARRAY] - tile_width)*global.dt)/frames;
state_var[2] = clamp(state_var[2],0,green_square_start[X_ARRAY] - tile_width);

state_var[3]+= ((green_square_start[Y_ARRAY] - tile_width)*global.dt)/frames;
state_var[3] = clamp(state_var[3],0,green_square_start[Y_ARRAY] - tile_width);

//Bottom Right Corners
var _x_diff = room_width - green_square_start[X_ARRAY];
var _y_diff = room_height - green_square_start[Y_ARRAY];

state_var[4]+= 2*tile_width*global.dt/frames;
state_var[5] += 2*tile_width*global.dt/frames;
state_var[4] = clamp(state_var[4],0,2*tile_width);
state_var[5] = clamp(state_var[5],0,2*tile_width);

obj_main_menu.background_alpha-=global.dt/10;

if state_timer > 65	{
	room_goto(room_to_go);
}
