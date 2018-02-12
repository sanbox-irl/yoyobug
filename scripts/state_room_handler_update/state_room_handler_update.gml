if not state_new	{
	global.update_room = false;
}

//MOVE OUR ROOM
global.current_room = global.room_grid[# global.gx, global.gy];
global.ox = global.current_room[? "x_origin"];
global.oy = global.current_room[? "y_origin"];

//FIX OUR GRID
new_width = global.current_room[? "hcells"];
new_height = global.current_room[? "vcells"];
ds_grid_resize(global.game_grid,new_width,new_height);
ds_grid_clear(global.game_grid,FREE);
tiles_to_grid(new_width,new_height);

//MAKE OUR NEW ROOM
room_creation_load_strings(global.current_room);
grid_creation_add_obj(new_width,new_height,obj_solid,WALL);
grid_creation_add_obj(new_width,new_height,obj_door,DOOR);



obj_camera.update_camera = true;
if begin_recycle == true	{
	state_switch("Cleanup", 0);
	begin_recycle = false;
}

