if check_gamepad_input(pad)	{
	state_switch("Controller_Input",0);
}

if keyboard_check_pressed(ord("E"))	{
	with obj_robot	{
		state_var[0] = true;	
	}
}

if keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))	{
	move_left = true;	
}

if keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))	{
	move_right = true;
}

if keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")){
	move_up = true;
}

if keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))	{
	move_down = true;
}

if keyboard_check_pressed(vk_escape)	{
	exit_var = true;
}

if keyboard_check_pressed(ord("Q"))	{
	spawn_var = true;
}

if keyboard_check_pressed(vk_space)	{
	ping_hd = true;
}

if keyboard_check_pressed(ord("F"))	{
	fscreen = true;	
}

if keyboard_check_pressed(vk_shift)	{
	game_restart();
}

if keyboard_check_pressed(ord("R"))	{
	global.start = true;
}