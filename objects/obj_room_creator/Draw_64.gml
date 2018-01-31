if global.dev_mode = false	{
	exit;	
}

if do_the_height	{
	draw_text(room_width/2,room_height/2,concat(room_width," ", room_height));
	exit;
}

draw_set_font(font0);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

for (var _w = 0; _w < width; ++_w) {
    for (var _h = 0; _h < height; ++_h) {

	var critical_numb	= global.critical_path[# _w,_h];
	var dimensions		= global.dimensions[# _w,_h];	

	draw_text(TILE_WIDTH*10+_w*TILE_WIDTH*8,TILE_WIDTH+_h*TILE_WIDTH*3,critical_numb);
	draw_text(TILE_WIDTH*10+_w*TILE_WIDTH*8,TILE_WIDTH+_h*TILE_WIDTH*3 + TILE_WIDTH,dimensions);
	}
}

var x_coord = ds_grid_value_x(global.room_run_grid,0,0,height-1,width-1,room);
var y_coord = ds_grid_value_y(global.room_run_grid,0,0,height-1,width-1,room);

draw_text(room_width-TILE_WIDTH*2,room_height-TILE_WIDTH*2,concat("Room Coordinates = ", x_coord, ", ",y_coord));