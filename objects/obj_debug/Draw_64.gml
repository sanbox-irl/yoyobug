if not global.dev_mode	{
	exit;	
}

draw_set_alpha(0.4);
draw_rectangle_ocolor(0,0,10000,1000,c_black,false);
draw_set_alpha(1);

var id_to_print		=	"";

draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_font(fnt_debugging_font);

for (var _w = 0; _w < global.grid_width; ++_w) {
    for (var _h = 0; _h < global.grid_height; ++_h) {

	var id_to_print = global.game_grid[# _w,_h];
	
	id_to_print = debug_convert_to_readable(id_to_print);


	draw_text(_w*TILE_WIDTH+HALF_WIDTH,_h*TILE_WIDTH+HALF_WIDTH - 14 + TILE_WIDTH,id_to_print);

	id_to_print = "";
	}
}