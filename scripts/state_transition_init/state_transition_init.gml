with (obj_enemy_robot)	{
	path_end();
	_x = x;
	_y = y;
	image_speed = 0;
}

with (saved_robot)	{
	x_to = x;
	y_to = y-tile_width;
}

with (obj_robot)	{
	if id != other.saved_robot	{
		instance_change(obj_enemy_robot,true);
	}
}

if state_timer > 60	{
	state_switch("Main_Movement",0);	
}