//Make Essential Tiles Functions
global.collision_tile_layer = layer_create(350,"Collision_Tiles");

//Make Our Tileset
global.tiles_xnumber = room_width div TILE_WIDTH;
global.tiles_ynumber = room_height div TILE_WIDTH;

global.collision_tilemap = layer_tilemap_create(global.collision_tile_layer,0,0,til_exterior,global.tiles_xnumber,global.tiles_ynumber);

//Make Exterior Tiles:
create_tiles_box(0,0,room_width,room_height);

//Now for each individual Rooms:
for (var i = 0; i < width; ++i) {
    for (var k = 0; k < height; ++k) {
		var _map	= global.room_grid[# i,k];
		var x_orig	= _map[? "x_origin"];
		var y_orig	= _map[? "y_origin"];
		var w		= _map[? "width"];
		var h		= _map[? "height"];
		
		var x2 		= x_orig + w;
		var y2		= y_orig + h;
		
		create_tiles_box(x_orig,y_orig,x2,y2);
		
		
		//Create the various backgrounds:
		var _grid = instance_create_layer(x_orig,y_orig,"Lower_Instances",obj_room_grid);
		var _xtiles = (x2-x_orig) div TILE_WIDTH;
		var _ytiles = (y2-y_orig) div TILE_WIDTH;
		
		_grid.x_tiles = _xtiles;
		_grid.y_tiles = _ytiles;
	}
}
