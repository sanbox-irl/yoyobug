if global.dev_mode = false	{
	exit;	
}

//if do_the_height	{
//	draw_text(room_width/2,room_height/2,concat(room_width," ", room_height));
//	exit;
//}

draw_set_font(font0);

draw_set_valign(fa_center)

for (var _w = 0; _w < width; ++_w) {
    for (var _h = 0; _h < height; ++_h) {
		var _map	= global.room_grid[# _w, _h];
		var _dimensions		= global.dimensions[# _w,_h];	

		//Drawing Defs:
		var draw_xorigin = TILE_WIDTH*20;
		var draw_yorigin = TILE_WIDTH*5;
	
		var x_change	= _w*TILE_WIDTH*8;
		var y_change	= _h*TILE_WIDTH*3;
		var _string_l	= string_width(_dimensions);
	
		draw_text(	draw_xorigin + x_change, draw_yorigin	+ y_change,	_dimensions);
		
		if ds_map_find_value(_map,"up") == true	{
			draw_sprite_stretched(spr_onepixel,0,
					(draw_xorigin + x_change + TILE_WIDTH*1.5 ), (draw_yorigin-TILE_WIDTH)+ y_change,10,10);	
		}
	
		if ds_map_find_value(_map,"down") == true	{
			draw_sprite_stretched(spr_onepixel,0,
					(draw_xorigin + x_change + TILE_WIDTH*1.5 ), (draw_yorigin+TILE_WIDTH)+ y_change,10,10);
		}
	
		if ds_map_find_value(_map,"left") == true	{
			draw_sprite_stretched(spr_onepixel,0,
					(draw_xorigin + x_change - TILE_WIDTH ), (draw_yorigin)+ y_change,10,10);
		}
		
		if ds_map_find_value(_map,"right") == true	{
			draw_sprite_stretched(spr_onepixel,0,
					(draw_xorigin + x_change + _string_l + TILE_WIDTH ), (draw_yorigin)+ y_change,10,10);
		}
		
		//Draw Boxes
		draw_set_alpha(0.1);
		if ds_map_find_value(_map,"critical") == true	{
			draw_set_color(c_red)
		} else draw_set_color(c_white);
			draw_rectangle(	draw_xorigin + x_change - TILE_WIDTH,(draw_yorigin-TILE_WIDTH)+ y_change,
									draw_xorigin + x_change + _string_l + TILE_WIDTH, (draw_yorigin+TILE_WIDTH)+ y_change,false)
			draw_set_alpha(1);
			draw_set_color(c_white);
	}
}
