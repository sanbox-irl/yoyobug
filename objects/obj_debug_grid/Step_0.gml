if keyboard_check_pressed(vk_backspace)	{
	toggle_grid = !toggle_grid;	
}


global.game_grid[# 0, 0] = "DEBUG\nGRID";



///Keyboard Checks
if global.keyboard_right	{
	move_room(RIGHT);	
}

if global.keyboard_up	{
	move_room(UP);	
}

if global.keyboard_left	{
	move_room(LEFT)
}

if global.keyboard_down	{
	move_room(DOWN);
}