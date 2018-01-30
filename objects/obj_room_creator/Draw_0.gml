if global.dev_mode = false	{
	exit;	
}

draw_set_font(fnt_debug);

for (var _w = 0; _w < ds_grid_width(global.critical_path); ++_w) {
    for (var _h = 0; _h < ds_grid_height(global.critical_path); ++_h) {

	var id_to_print = global.critical_path[# _w,_h];


	draw_text(TILE_WIDTH+_w*TILE_WIDTH,TILE_WIDTH+_h*TILE_WIDTH,id_to_print);
	
	
	id_to_print = "";
	}
}
