if init_draw	{
	tower_height+=global.dt;
	screen_shake(1,1);
	if tower_height > sprite_height-1	{
		tower_height = sprite_height;
		init_draw = false;
	}
}

if end_draw		{
	tower_height-=global.dt*3;
	screen_shake(1,1);
	if tower_height <= 0
		{
		instance_destroy();	
		}
	
	
}
