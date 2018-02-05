if !instance_exists(obj_room_grid)	{
	exit;	
}

with (obj_room_grid)	{
	draw_sprite_stretched(spr_green,0,	x_origin-HALF_WIDTH,					y_origin-HALF_WIDTH,
											(x_tiles-1)*TILE_WIDTH,	(y_tiles-1)*TILE_WIDTH - 12);		//That 12 is an arbitrary number.
																										//Dependant on art.
}