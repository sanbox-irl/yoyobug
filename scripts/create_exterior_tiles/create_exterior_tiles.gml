enum ext_tiles	{
	bottom = 0,
	top = 1,
	left_wall = 2,
	right_shoulder = 3,
	right_bottom_shoulder = 4
}

//Find our Tile Set
var _layer = layer_get_id("Collision_Tiles");
var _tile_map = layer_tilemap_get_id(_layer);

//Top tiles:
var _data = tilemap_get(_tile_map,ext_tiles.top,0);

var _rep = room_width div TILE_WIDTH;



for (var i = 0; i < _rep; ++i) {
    draw_tile(til_exterior,_data,0,TILE_WIDTH*i,0);
}