state_execute();

if move_left	{
	experimental_move(LEFT);
	move_left = false;
}

if move_right	{
	experimental_move(RIGHT)
	move_right = false;
}

if move_up	{
	experimental_move(UP)
	move_up = false;
}

if move_down	{
	experimental_move(DOWN)
	move_down = false;
}

if exit_var		{
	game_end();
	exit_var = false;
}

if spawn_var	{
	with obj_input_terminal	{
		keyboard_string = "spawn";
		press_enter();
	}
	spawn_var = false;	
}

if ping_hd	{
	global.ping_hud = true;	
	ping_hd = false;
}

if fscreen	{
	window_set_fullscreen(!window_get_fullscreen());
	fscreen = false;
}