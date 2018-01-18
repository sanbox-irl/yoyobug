state_execute();


if move_left	{
	move_execute("move_left");
}

move_left = execute_input(move_left,"move_left");
move_right = execute_input(move_right,"move_right");
move_down = execute_input(move_down,"move_down");
move_up = execute_input(move_up,"move_up");

if ping_hd	{
	global.ping_hud = true;	
}

if global.dev_mode && restart	{
	game_restart();
}

if global.dev_mode	{
	exit_var = execute_input(exit_var,"exit");	
}

spawn_var = execute_input(spawn_var,"spawn");


