counter+=global.dt/60;

percent_time = counter / random_time;

if percent_time >	1	{
	//Spawn the New Robot:
	instance_create_layer(x+tile_width,y+2*tile_width,"Instances",obj_enemy_robot);
	
	
	
	
	
	
	
	counter = 0;
	percent_time = 0;
	random_time = irandom_range(3,6);
}

