//Draws the Text
shader_set(sh_recolor);
	draw_set_alpha(background_alpha);
	shader_set_uniform_f_array(_uni_color,_color);
	draw_sprite(spr_menu_background,0,0,0);
shader_reset();

//Draw the Green Box
var top_left_x	= 14*tile_width;
var top_left_y	= 3*tile_width;
var len_x		= 4*tile_width;
var len_y		= 6*tile_width;
draw_sprite_stretched(spr_onepixel,0,top_left_x -1, top_left_y-1,len_x+2,len_y+2);
draw_sprite_stretched(spr_green,0,top_left_x,top_left_y,len_x,len_y);


draw_set_alpha(1);