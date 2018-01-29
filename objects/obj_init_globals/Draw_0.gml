if not global.is_playroom	{
	exit;	
}

var longitude = room_width/TILE_WIDTH;
var latitude = room_height/TILE_WIDTH;
var size = 1


//Drawing Up-Down do Lines
for (var i = 1; i < longitude; i++) {
	draw_sprite_stretched_ext(spr_onepixel,0,TILE_WIDTH*i,TILE_WIDTH*2,size,room_height-TILE_WIDTH*2-7,c_white,0.1);
	
}

//Drawing East-West Lines
for (var i = 1; i<latitude-1; ++i) {
	draw_sprite_stretched_ext(spr_onepixel,0,TILE_WIDTH,TILE_WIDTH+TILE_WIDTH*i,room_width-(2*TILE_WIDTH),size,c_white,0.1);
}
draw_set_alpha(1);
