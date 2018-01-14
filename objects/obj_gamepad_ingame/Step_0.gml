if obj_robot_controller.state_name != "Waiting for Enter"	{
	exit;
}	
	
	

if gamepad_button_check_pressed(0,gp_face3)	{
	with obj_robot	{
		state_var[0] = true;	
	}
}

if gamepad_button_check_pressed(0, gp_padl)	{
	with obj_input_terminal	{
		keyboard_string = "move-left";
		press_enter();
	}	
}

if gamepad_button_check_pressed(0,gp_padr)	{
	with obj_input_terminal	{
		keyboard_string = "move-right";
		press_enter();
	}
	
}

if gamepad_button_check_pressed(0,gp_padu)	{
	with obj_input_terminal	{
		keyboard_string = "move-up";
		press_enter();
	}
	
}

if gamepad_button_check_pressed(0,gp_padd)	{
	with obj_input_terminal	{
		keyboard_string = "move-down";
		press_enter();
	}
	
}

if gamepad_button_check_pressed(0, gp_start)	{
	with obj_input_terminal	{
		keyboard_string = "exit";
		press_enter();
	}
}