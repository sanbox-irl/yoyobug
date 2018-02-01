var _widest = 0,
	_tallest = 0,
	_test	= 0;

//Find the Widest One:
for (var k = 0; k < height; ++k) {
	var _value1 = ds_map_find_value(global.room_grid[# LEFT_ROOM,k],"width"),
		_value2 = ds_map_find_value(global.room_grid[# MAIN,k],"width"),
		_value3 = ds_map_find_value(global.room_grid[# RIGHT_ROOM,k],"width");
	
	_test = _value1+_value2+_value3;
	
	if _test > _widest	{
		_widest = _test;
	} 
}

_test = 0;
//Find the Tallest One:
for (var i = 0; i < width; ++i) {
	var k = 0;
	repeat (height)	{
		_test += ds_map_find_value(global.room_grid[# i, k],"height");
		k++;
	}
	
	if _test > _tallest	{
		_tallest = _test;
		_test = 0;
	} 
}

var _extra_xspace = 4*TILE_WIDTH*(width+1),
	_extra_yspace = 4*TILE_WIDTH*(height+1);

room_height = _tallest + _extra_yspace;
room_width = _widest + _extra_xspace;