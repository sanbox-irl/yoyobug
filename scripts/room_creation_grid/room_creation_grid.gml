randomize();
//Macros for Room Generation:
#macro LEFT_ROOM 0
#macro MAIN 1
#macro RIGHT_ROOM 2

height = 8;
width = 3;


global.room_grid = ds_grid_create(width,height);

//Create our DS Maps
for (var i = 0; i < width; ++i) {
    for (var k = 0; k < height; ++k) {
	    global.room_grid[# i,k] =	ds_map_create();
	}
}

//Set Our Generic Map Attributes:
for (var i = 0; i < width; ++i) {
    for (var k = 0; k < height; ++k) {
	   _map =  global.room_grid[# i,k];
	   _map[? "size"] = 0;
	}
}

//Size the Rooms:
var _w = 0;
var _h = 0;

#region MAIN
for (var i = 0; i < height; ++i) {
	_map = global.room_grid[# MAIN, i];
	var _hcells = 20;
	var _vcells = 11;
	_map[? "hcells"] = _hcells;
	_map[? "vcells"] = _vcells;
	
    _w = _hcells * TILE_WIDTH;
	_h = _vcells * TILE_WIDTH;
	_map[? "width"] = _w;
	_map[? "height"] = _h;
	_map[? "size"] = "normal" //This is redundant, but keeping for clarity right now.
}

//Set the Big Room(s)
var _big_number = 0;
if chance(0.3)	{
	_big_number = 1;
}

repeat (1+_big_number)	{
	var _big_room = irandom_range(0,(height-2));
	var _map = global.room_grid[# MAIN, _big_room];
	var _hcells = 40;
	var _vcells = 22;
	_map[? "hcells"] = _hcells;
	_map[? "vcells"] = _vcells;
	
	_w = _hcells*TILE_WIDTH;
	_h = _vcells*TILE_WIDTH;
	_map[? "width"] = _w;
	_map[? "height"] = _h;
	_map[? "size"] = "big";
}
#endregion

#region LEFT
//Left Rooms
for (var i = 0; i < height; ++i) {
	_map = global.room_grid[# LEFT_ROOM,i];
	var _hcells = 10;
		_vcells = 6;
	_map[? "hcells"] = _hcells;
	_map[? "vcells"] = _vcells;

    _w = _hcells * TILE_WIDTH;
	_h = _vcells * TILE_WIDTH;
	_map[? "width"] = _w;
	_map[? "height"] = _h;

	_map[? "size"] = "small"
}
#endregion

#region RIGHT
//Right Rooms
for (var i = 0; i < height; ++i) {
    _map = global.room_grid[# RIGHT_ROOM, i];
	if chance(0.4)	{
		var _hcells = 10,
			_vcells = 6;
			_map[? "size"] = "small";	
	} else	{
		var _hcells = 20,
			_vcells = 11;
			_map[? "size"] = "normal";
	}

	_map[? "hcells"] = _hcells;
	_map[? "vcells"] = _vcells;

	_w = _hcells*TILE_WIDTH;
	_h = _vcells*TILE_WIDTH;
	
	_map[? "width"] = _w;
	_map[? "height"] = _h;
}
#endregion
