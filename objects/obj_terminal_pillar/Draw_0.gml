if init_draw	{
	draw_sprite_part(sprite_index,image_index,0,0,sprite_width,tower_height,x,y-tower_height+tile_width);
} else if end_draw	{
	draw_sprite_part(sprite_index,image_index,0,0,sprite_width,tower_height,x,y-tower_height+tile_width);
	} else draw_self();



