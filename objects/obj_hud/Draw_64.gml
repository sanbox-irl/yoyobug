var width	= display_get_gui_width();
var height	= display_get_gui_height();


for (var i = 0; i < 3; ++i) {
shader_set(sh_desaturate);
	draw_sprite_ext(spr_hudhead,0,tile_width+ i*tile_width*width/room_width,0,width/room_width,height/room_height,0,image_blend,1);
	shader_reset()
}
	
for (var i = 0; i < global.energy; ++i) {
	draw_sprite_ext(spr_hudhead,0,tile_width+ i*tile_width*width/room_width,0,width/room_width,height/room_height,0,image_blend,1);
}

if global.energy == 0	{
	counter+=global.dt;
	
	if floor(counter) mod 20 == 0	{
		toggle_red = !toggle_red;	
	}
}

if (toggle_red == true)	{
	for (var i = 0; i < 3; ++i) {
		shader_set(sh_recolor);
			draw_set_alpha(1);
			shader_set_uniform_f_array(_uni_color,_color);
			draw_sprite_ext(spr_hudhead,0,tile_width+ i*tile_width*width/room_width,0,width/room_width,height/room_height,0,image_blend,1);
		shader_reset();
	}
}

//Draw the Depth:
var x_depth = 14*TILE_WIDTH;

if game_over	{
	draw_set_alpha(game_over_screen_alpha);
	draw_rectangle_color(-200,-200,room_width+200,room_width+200,c_black,c_black,c_black,c_black,false);	
	
	
	if game_over_screen_alpha>= 1	{
		draw_set_font(fnt_title);
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
	
		draw_text_color(room_width/2,room_height/2,"Game Over",c_white,c_white,c_white,c_white,1);
		
		instance_deactivate_all(true);
		instance_activate_object(parent_controller);
	}
	
	draw_set_alpha(1);
}	