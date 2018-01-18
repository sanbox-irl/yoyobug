if check_gamepad_input(pad)	{
	state_switch("Controller_Input",0);
}

if keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))	{
	move_left = true;
	debug_message("Firing");
}

if keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))	{
	move_right = true;	
}

if keyboard_check_pressed(vk_up)	|| keyboard_check_pressed(ord("W"))	{
	move_up	= true;	
}

if keyboard_check_pressed(vk_down)	|| keyboard_check_pressed(ord("S"))	{
	move_down = true;	
}

if keyboard_check_pressed(ord("P"))	{
	keyboard_string = "play";
	press_enter();
}