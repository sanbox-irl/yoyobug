if not global.is_playroom	{
	exit;	
}

var longitude = room_width/tile_width;
var latitude = room_height/tile_width;
var size = 1


//Drawing Up-Down do Lines
for (var i = 1; i < longitude; i++) {
	draw_sprite_stretched_ext(spr_onepixel,0,tile_width*i,tile_width,size,room_height-tile_width-7,c_white,0.1);
	
}

//Drawing East-West Lines
for (var i = 1; i<latitude; ++i) {
	draw_sprite_stretched_ext(spr_onepixel,0,tile_width,tile_width*i,room_width-(2*tile_width),size,c_white,0.1);
}
draw_set_alpha(1);