draw_small_circle = false;

if end_spawning_circle	{
	rad-=0.05;
}

if rad <= 0		{
	instance_destroy();	
}