if keyboard_check_pressed(vk_anykey)	&& !(keyboard_check_pressed(vk_enter))	{
	state_switch("Keyboard_Input",0);
}

#region Inputs
var lh_axis = gamepad_axis_value(0,gp_axislh);
var lv_axis = gamepad_axis_value(0,gp_axislv);
var rh_axis = gamepad_axis_value(0,gp_axisrh);
var rv_axis = gamepad_axis_value(0,gp_axisrv);

#endregion




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

if gamepad_button_check_pressed(0, gp_shoulderlb)	{
	with obj_input_terminal	{
		keyboard_string = "spawn";
		press_enter();
	}
}

if gamepad_button_check_pressed(0,gp_face2)	{
	global.ping_hud = true;	
}

if (lh_axis < -0.75) && can_move[LEFT_ARRAY]	{
	gp_to_text("move-left");
	can_move[LEFT_ARRAY] = false;
}

if (lh_axis > 0.75) && can_move[RIGHT_ARRAY]	{
	gp_to_text("move-right");
	can_move[RIGHT_ARRAY] = false;
}

if (lv_axis < -0.75) && can_move[UP_ARRAY]	{
	gp_to_text("move-up");
	can_move[UP_ARRAY] = false;
}

if (lv_axis > 0.75) && can_move[DOWN_ARRAY]	{
	gp_to_text("move-down");
	can_move[DOWN_ARRAY] = false;
}


//Reset Conditions
if abs(lh_axis) < 0.2	{
	can_move[LEFT_ARRAY] = true;
	can_move[RIGHT_ARRAY] = true;
}

if abs(lv_axis) < 0.2	{
	can_move[UP_ARRAY] = true;
	can_move[DOWN_ARRAY] = true;
}

for (var i = 0; i < array_length_1d(can_move); ++i) {
	if (can_move[i] == false)	{
		counter[i]+=global.dt;
	}
	
	if (counter[i] >= 10)	{
		can_move[i] = true;
		counter[i] = 0;
	}
}
