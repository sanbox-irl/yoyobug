///@func create_tiles_box(x1,y1,x2,y2);
///@param x1
///@param y1
///@param x2
///@param y2

var _x1 = argument0,
	_y1 = argument1,
	_x2 = argument2,
	_y2 = argument3;
	
//Exit if Any of Our Coordinates Arent on the Grid:


//Top & Bottom
for (var i=_x1; i < _x2; i+=TILE_WIDTH) {
	var _data = irandom_range(ext_tiles.first_top,	ext_tiles.last_top)
	tilemap_set_at_pixel(global.collision_tilemap, _data,i,_y1)
	
	tilemap_set_at_pixel(global.collision_tilemap,ext_tiles.bottom_wall,i,(_y2-TILE_WIDTH));
}

//Left & Right Walls
for (var i = _y1 ; i < _y2; i+= TILE_WIDTH) {
    tilemap_set_at_pixel(global.collision_tilemap,(ext_tiles.right_wall|tile_mirror),_x1,i);
	
	tilemap_set_at_pixel(global.collision_tilemap,ext_tiles.right_wall,(_x2-TILE_WIDTH),i);
}

//Shoulders:
//Top Shoulders
tilemap_set_at_pixel(global.collision_tilemap,ext_tiles.right_shoulder,(_x2-TILE_WIDTH),_y1);
tilemap_set_at_pixel(global.collision_tilemap,(ext_tiles.right_shoulder|tile_mirror),_x1,_y1);

//Bottom Shoulders
tilemap_set_at_pixel(global.collision_tilemap,ext_tiles.right_bottom_shoulder,(_x2-TILE_WIDTH),(_y2-TILE_WIDTH));
tilemap_set_at_pixel(global.collision_tilemap,(ext_tiles.right_bottom_shoulder|tile_mirror),_x1,(_y2-TILE_WIDTH));
