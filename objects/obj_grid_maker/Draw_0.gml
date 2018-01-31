var size = 1;

//Drawing Up-Down do Lines
for (var i = 0; i < (x_tiles); i++) {
	draw_sprite_stretched_ext(spr_onepixel,0,x_origin + TILE_WIDTH*i,y_origin,size, (y_tiles-1)*TILE_WIDTH,c_white,0.1);
	
}

//Drawing Left-Right Lines
for (var i = 0; i<(y_tiles); ++i) {
	draw_sprite_stretched_ext(spr_onepixel,0,x_origin,y_origin+TILE_WIDTH*i,(x_tiles-2)*TILE_WIDTH,size,c_white,0.1);
}
draw_set_alpha(1);
