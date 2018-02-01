if global.dev_mode = false	{
	exit;	
}

//if do_the_height	{
//	draw_text(room_width/2,room_height/2,concat(room_width," ", room_height));
//	exit;
//}

draw_set_font(font0);


for (var _w = 0; _w < width; ++_w) {
    for (var _h = 0; _h < height; ++_h) {

	var _map	= global.room_grid[# _w, _h];
	var _dimensions		= global.dimensions[# _w,_h];	

	//Drawing Defs:
	var draw_xorigin = TILE_WIDTH*10;
	var draw_yorigin = TILE_WIDTH*2;
	
	var x_change	= _w*TILE_WIDTH*8;
	var y_change	= _h*TILE_WIDTH*3;
	
	
	draw_text(	draw_xorigin + x_change, draw_yorigin	+ y_change,	_dimensions);
	
	if ds_map_find_value(_map,"up") == true	{
		draw_sprite_stretched(spr_onepixel,0,
				(draw_xorigin + x_change + (x_change/(_w*4))), (draw_yorigin-HALF_WIDTH)+ y_change,10,10);	
	}
	
	
	}
}

//var x_coord = ds_grid_value_x(global.room_run_grid,0,0,height-1,width-1,room);
//var y_coord = ds_grid_value_y(global.room_run_grid,0,0,height-1,width-1,room);

//draw_text(room_width-TILE_WIDTH*2,room_height-TILE_WIDTH*2,concat("Room Coordinates = ", x_coord, ", ",y_coord));