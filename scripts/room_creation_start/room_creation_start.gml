#macro MARGIN 6*TILE_WIDTH

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

var _extra_xspace = MARGIN*(width+1),
	_extra_yspace = MARGIN*(height+1);

room_height = _tallest + _extra_yspace;
room_width = _widest + _extra_xspace;

//Give each Room Coordinates:
var incrementer = array_create(2);
incrementer[X_ARRAY] = room_width/width;
incrementer[Y_ARRAY] = room_height/height;

for (var i = 0; i < width; ++i) { 
	for (var k = 0; k < height; ++k) {
		var _map = global.room_grid[# i,k];
		var _x_orig = MARGIN*2 + incrementer[X_ARRAY]*(i)	-	(ds_map_find_value(_map,"width")/2);
		var _y_orig = MARGIN*2 + incrementer[Y_ARRAY]*(k)	-	(ds_map_find_value(_map,"height")/2);
		
		var _diff = _x_orig mod TILE_WIDTH;
		if _diff != 0	{
			_x_orig-= _diff;
		}
		
		var _diff = _y_orig mod TILE_WIDTH;
		if _diff != 0	{
			_y_orig-=_diff;	
		}
		
		ds_map_replace(_map,"x_origin",	_x_orig);
		ds_map_replace(_map,"y_origin", _y_orig);
	}
}