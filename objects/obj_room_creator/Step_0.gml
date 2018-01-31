room_creation_find_room_dimensions();

if keyboard_check_pressed(vk_down)	{
	game_restart();	 
}

if keyboard_check_pressed(vk_left)	{
	room = global.room_run_grid[# 1,1];
}

if room == global.room_run_grid[# 1,1]	{
	do_the_height = true;	
} else do_the_height = false;