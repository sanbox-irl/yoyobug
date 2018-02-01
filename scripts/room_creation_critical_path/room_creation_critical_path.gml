///Generate Direction Maps
for (var i = 0; i < width; ++i) {
    for (var k = 0; k < height; ++k) {
	    ds_map_replace(global.room_grid[# i,k],"down",false);
		ds_map_replace(global.room_grid[# i,k],"left",true);
		ds_map_replace(global.room_grid[# i,k],"up",false);
		ds_map_replace(global.room_grid[# i,k],"right",true);
		ds_map_replace(global.room_grid[# i,k],"critical",false);
	}
}


var steering = 0,
	y_axis	 = (height-1),
	x_axis	 = MAIN;

//The Marking of the Critical Path
do	{
	steering = irandom_range(0,5);
	if steering < 3	{
		x_axis--;	
	}
	else if steering > 3{
		x_axis++;
	}
	else if steering = 3 {
		ds_map_replace(global.room_grid[# x_axis, y_axis],"up",true);
		ds_map_replace(global.room_grid[# x_axis, y_axis],"critical",true);
		y_axis--;
		if (y_axis >= 0)	{
			ds_map_replace(global.room_grid[# x_axis, y_axis],"down",true);
			ds_map_replace(global.room_grid[# x_axis, y_axis],"critical",true);
		}
	}
	
	//Wrap the Values:
	if x_axis >= width {
		x_axis = 0;
	} else if x_axis < 0	{
		x_axis = (width-1)
	}

} until (y_axis < 0);

///Shave off the Rooms that are on the Edges:
for (var k = 0; k < height; ++k) {
    var _map = global.room_grid[# LEFT_ROOM, k];
	_map[? "left"] = false;
	
	_map = global.room_grid[# RIGHT_ROOM, k];
	_map[? "right"] = false;
}
