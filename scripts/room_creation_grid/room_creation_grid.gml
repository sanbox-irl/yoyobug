randomize();
//Macros for Room Generation:
#macro LEFT_ROOM 0
#macro MAIN 1
#macro RIGHT_ROOM 2

height = 8;
width = 3;


global.room_run_grid = ds_grid_create(width,height);

//Create ALL the Rooms:
for (var i = 0; i < height; ++i) {
	for (var k = 0; k< width; ++k)	{
    	global.room_run_grid[# k,i] = room_add();
	}
}


//Size the Rooms:
var _w = 0;
var _h = 0;

#region MAIN
for (var i = 0; i < height; ++i) {
    _w = 20 * TILE_WIDTH;
	_h = 11 * TILE_WIDTH;
	room_set_width(global.room_run_grid[# MAIN,i],_w);
	room_set_height(global.room_run_grid[# MAIN,i],_h);
}

//Set the Big Room(s)
var _chance = 0;
if chance(0.3)	{
	_chance = 1;
}

repeat (1+_chance)	{
	var _big_room = irandom_range(0,(height-2));
	_w = 40*TILE_WIDTH;
	_h = 22*TILE_WIDTH;
	
	room_set_width(global.room_run_grid[# MAIN,_big_room],_w);
	room_set_height(global.room_run_grid[# MAIN,_big_room],_h);
}
#endregion

#region LEFT
//Left Rooms
for (var i = 0; i < height; ++i) {
    _w = 10 * TILE_WIDTH;
	_h = 6 * TILE_WIDTH;
	room_set_width(global.room_run_grid[# LEFT_ROOM,i],_w);
	room_set_height(global.room_run_grid[# LEFT_ROOM,i],_h);
}
#endregion

#region RIGHT
//Right Rooms
for (var i = 0; i < height; ++i) {
    if chance(0.4)	{
		_w = 10 * TILE_WIDTH;
		_h = 6 * TILE_WIDTH;	
	} else	{
		_w = 20 * TILE_WIDTH;
		_h = 11 * TILE_WIDTH;
	}
	
	room_set_width(global.room_run_grid[# LEFT_ROOM,i],_w);
	room_set_height(global.room_run_grid[# LEFT_ROOM,i],_h);
}

#endregion
