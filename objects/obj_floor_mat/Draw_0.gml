if can_draw	{
	draw_sprite_ext(sprite_index,image_index,radius_x,radius_y,image_xscale*scale,image_yscale*scale,0,color,1);
}

if can_draw_term	{
	draw_sprite_ext(sprite_index,image_index,term_rad_x,term_rad_y,image_xscale*term_scale,image_yscale*term_scale,0,color,1);	
}