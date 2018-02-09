if not global.dev_mode	{
	exit;	
}

var past_toggle = camera_toggle;
if keyboard_check_pressed(vk_f2)	{
	camera_toggle = !camera_toggle;	
}

if camera_toggle != past_toggle	{
	if camera_toggle == false	{
		width_to = room_width;
		height_to = room_height;
		x_to = 0;
		y_to = 0;
	}
}

