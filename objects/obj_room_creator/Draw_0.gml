if not global.dev_mode{
	exit;	
}

draw_sprite_stretched(spr_onepixel,0,4*TILE_WIDTH,4*TILE_WIDTH, ds_map_find_value(global.room_grid[# 0,0],"width"),ds_map_find_value(global.room_grid[# 0,0],"height"));
