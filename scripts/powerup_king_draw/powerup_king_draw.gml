if state_var[POWERUP_VAR] == 0	{
	exit;
}

if king_invulnerable 	{
	gpu_set_blendmode(bm_add)
	draw_set_alpha(0.1);
		draw_set_circle_precision(64);
		draw_circle_color(x+HALF_WIDTH,y+HALF_WIDTH,TILE_WIDTH,c_white,c_white,false);
	draw_set_alpha(1);
		draw_circle_color(x+HALF_WIDTH,y+HALF_WIDTH,TILE_WIDTH,c_white,c_white,true)
	gpu_set_blendmode(bm_normal);
}