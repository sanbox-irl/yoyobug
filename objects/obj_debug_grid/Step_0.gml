if keyboard_check_pressed(vk_backspace)	{
	toggle_grid = !toggle_grid;	
}

if global.update_room	{
	var hcells = global.current_room[? "hcells"];
	var vcells = global.current_room[? "vcells"];
}


global.game_grid[# 0, 0] = "DEBUG\NGRID";
