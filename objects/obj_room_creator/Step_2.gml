if global.update_room	{
	//Clear it All Out
	var _size = ds_list_size(recycle_list);
	for (var i = 0; i < _size; ++i) {
	    instance_deactivate_object(ds_list_find_value(recycle_list,i))
	}
	ds_list_clear(recycle_list);


	//Move Our Room:
	global.current_room = global.room_grid[# global.gx, global.gy];
	global.ox = global.current_room[? "x_origin"];
	global.oy = global.current_room[? "y_origin"];

	ds_grid_clear(global.game_grid,0);
	ds_grid_resize(global.game_grid,global.current_room[? "hcells"],global.current_room[? "vcells"])
	
	room_creation_load_strings(global.current_room);
	obj_camera.update_camera = true;
}

if keyboard_check_pressed(vk_end)	{
	global.dev_mode = !global.dev_mode;
}

if global.dev_mode = false	{
	exit;	
}

if keyboard_check_pressed(vk_escape)	{
	game_end();
}

if keyboard_check_pressed(ord("F"))	{
	window_set_fullscreen(!window_get_fullscreen());
}

if keyboard_check_pressed(vk_right)	{
	global.gx++;
	
	if global.gx < 0	{
		global.gx = 2;	
	} else if global.gx > 2	{
		global.gx = 0;	
	}
	
	global.update_room = true;
}

if keyboard_check_pressed(vk_left)	{
	global.gx--;

	if global.gx < 0	{
		global.gx = 2;	
	} else if global.gx > 2	{
		global.gx = 0;	
	}
	global.update_room = true;
}

if keyboard_check_pressed(vk_up)	{
	global.gy--;

	if global.gy < 0	{
		global.gy = height-1;	
	} else if global.gy = height	{
		global.gy = 0;	
	}
	global.update_room = true;
}

if keyboard_check_pressed(vk_down)	{
	global.gy++;

	if global.gy < 0	{
		global.gy = height-1;	
	} else if global.gy = height	{
		global.gy = 0;	
	}
	global.update_room = true;
}