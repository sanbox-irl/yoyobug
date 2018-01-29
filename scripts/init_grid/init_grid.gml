///@description scr_initRoomGrid STORE INFO ON TILE MAP
var _layerID = layer_get_id("Collision_Tiles");
global.collision_tiles = layer_tilemap_get_id(_layerID);


global.grid_width = room_width div TILE_WIDTH;
global.grid_height = (room_height div TILE_WIDTH) + 1;
global.game_grid = ds_grid_create(global.grid_width,global.grid_height);

// CONVERT TILE MAP INTO GRID FOR CALCULATIONS
ds_grid_clear(global.game_grid, FREE);

for (var i = 0; i < global.grid_width; i++)
{
	for (var k = 0; k < global.grid_height; k++)
	{
		if tile_collide_at_points(global.collision_tiles, [i*TILE_WIDTH, k*TILE_WIDTH])
		{
			ds_grid_set(global.game_grid, i, k, WALL);
		}
	}
}