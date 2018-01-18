state_execute();

if move_left	{
	with obj_input_terminal	{
		keyboard_string = "move-left";
		press_enter();
	}
	move_left = false;
}

if move_right	{
	with obj_input_terminal	{
		keyboard_string = "move-right";
		press_enter();
	}
	move_right = false;
}

if move_up	{
	with obj_input_terminal	{
		keyboard_string = "move-up";
		press_enter();
	}
	move_up = false;
}

if move_down	{
	with obj_input_terminal	{
		keyboard_string = "move-down";
		press_enter();
	}
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