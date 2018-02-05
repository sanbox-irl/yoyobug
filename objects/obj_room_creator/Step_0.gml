if keyboard_check_pressed(vk_down)	{
	game_restart();	 
}

if keyboard_check_pressed(vk_escape)	{
	game_end();
}

if keyboard_check_pressed(ord("F"))	{
	window_set_fullscreen(!window_get_fullscreen());
}

if keyboard_check_pressed(vk_delete)	{
	global.dev_mode = false;
}