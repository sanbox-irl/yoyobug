if state_name = "State_Gamestart_3"	{
	screen_shake(4,1);
	draw_sprite_ext(spr_green,0, green_square_start[X_ARRAY] - state_var[2],green_square_start[Y_ARRAY] - state_var[3],
								4*tile_width + state_var[2] + state_var[4],6*tile_width + state_var[3] + state_var[5],
								0,image_blend,image_alpha);
}