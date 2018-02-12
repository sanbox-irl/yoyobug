///@func tile_to_grid(w,h);
///@param w
///@param h

var _w = argument0;
var _h = argument1;


for (var i=0; i< _w; i++) { 
	for (var k=0; k< _h; k++) { 
		var points_array = array_create(2);
		points_array[X_ARRAY] = global.ox + i*TILE_WIDTH;
		points_array[Y_ARRAY] = global.oy + k*TILE_WIDTH;

		if tile_collide_at_points(global.collision_tilemap,points_array)	{
			global.game_grid[# i,k] = WALL;
		}
		
	}
}