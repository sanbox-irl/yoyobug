if global.dev_mode = false || (move_through == false)	{
	exit;	
}


room_goto(global.room_run_grid[# count_w, count_h]);
global.dimensions[# count_w, count_h] = concat("W: ",room_width," H: ",room_height);

if room = global.room_run_grid[# count_w,count_h]	{
	count_w++;
}


if count_w >= width	{
	count_w = 0;
	count_h++;
}

if count_h >= height	{
	count_w = 0;
	count_h = 0;
	room_goto(original_room);
	move_through = false;
}