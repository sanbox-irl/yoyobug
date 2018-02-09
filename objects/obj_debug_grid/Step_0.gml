if keyboard_check_pressed(vk_delete)	{
	toggle_grid = !toggle_grid;	
}

if global.update_room	{
	hcells = global.current_room[? "hcells"];
	vcells = global.current_room[? "vcells"];
}

global.game_grid[# 0, 0] = "test";
