if can_draw	{
	// draw_sprite_ext(sprite_index,image_index,radius_x,radius_y,(image_xscale+radius_mod/20)*scale,(image_yscale+radius_mod/20)*scale,0,color,1);
		gpu_set_blendmode(bm_add);
		draw_set_alpha(0.1);
			draw_circle_color(radius_x,radius_y,TILE_WIDTH*scale,c_white,c_black,false)
		draw_set_alpha(1);
		gpu_set_blendmode(bm_normal);
		draw_circle_color(radius_x,radius_y,TILE_WIDTH*scale,color,color,false)
}

if can_draw_term	{
	draw_sprite_ext(sprite_index,image_index,term_rad_x,term_rad_y,image_xscale*term_scale,image_yscale*term_scale,0,color,1);	
}