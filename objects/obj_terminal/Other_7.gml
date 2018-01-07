if sprite_index = spr_terminal	{
	if instance_exists(obj_room_controller)	{
		obj_room_controller.state_timer = 0;
	}
	timer_start = true;
	image_index = image_number-1;
	image_speed = 0;
} else exit;