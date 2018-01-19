var width	= display_get_gui_width();
var height	= display_get_gui_height();


for (var i = 0; i < 5; ++i) {
shader_set(sh_desaturate);
	draw_sprite_ext(spr_hudhead,0,tile_width+ i*tile_width*width/room_width,0,width/room_width,height/room_height,0,image_blend,1);
	shader_reset()
}
	
for (var i = 0; i < global.energy; ++i) {
	draw_sprite_ext(spr_hudhead,0,tile_width+ i*tile_width*width/room_width,0,width/room_width,height/room_height,0,image_blend,1);
}
