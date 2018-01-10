if sprite_index = spr_terminal	{
	if instance_exists(obj_tower_controller_parent)	{
		obj_tower_controller_parent.state_timer = 0;
	}
	timer_start = true;
	image_index = image_number-1;
	image_speed = 0;
} else exit;