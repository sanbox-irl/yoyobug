var longitude = room_width/tile_width;
var latitude = room_height/tile_width;
draw_set_color(c_white);
draw_set_alpha(0.3);

//Drawing North South Lines
for (var i = 1; i < longitude; i++) {
	draw_line(tile_width*i,tile_width,tile_width*i,room_height-8);
}

//Drawing East-West Lines
for (var i = 1; i<latitude; ++i) {
	draw_line(tile_width,tile_width*i,room_width-tile_width,tile_width*i);
}
draw_set_alpha(1);