/*
0 = LEFT & RIGHT
1 = LEFT & RIGHT & UP
2 = LEFT & RIGHT & DOWN
3 = LEFT & RIGHT * DOWN & UP
4 = LEFT/RIGHT ONLY
5 = LEFT/RIGHT & UP
6 = LEFT/RIGHT & DOWN
7 = UP
8 = DOWN
9 = NO ENTRANCES -- SECRET.
*/

for (var i = 0; i < height; ++i) {
	var _right_map	=	global.room_grid[# RIGHT_ROOM, i],
		_main_map	=	global.room_grid[# MAIN, i],
		_right_under_map = global.room_grid[# RIGHT_ROOM, i++],
		_left_map	=	global.room_grid[# LEFT_ROOM, i],
		_left_under_map = global.room_grid[# LEFT_ROOM, i++];

	if (_right_map[? "critical"] == false)	{
		_right_map[? "left"] = false;
		_main_map[? "right"] = false;
		_right_map[? "down"] = true;
		_right_under_map[? "up"] = true;
	}

	if (_left_map[? "critical"] == false)	{
		_left_map[? "right"] = false;
		_main_map[? "left"] = false;
		_left_map[? "under"] = true;
		_left_under_map[? "up"] = true;
	}
}