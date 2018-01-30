#macro DOOR		1
#macro REVERSE	2
#macro ALL_DOOR 3
#macro NORMAL	0

global.dev_mode = true;
global.critical_path = ds_grid_create(width,height);
ds_grid_clear(global.critical_path,NORMAL);

var steering = 0,
	y_axis	 = (height-1),
	x_axis	 = MAIN;

repeat(10000)	{
	//Actually do the Marking
	steering = irandom_range(0,5);
	if steering < 3	{
		x_axis--;	
	}
	else if steering > 3{
		x_axis++;
	}
	else if steering = 3 {
		switch (global.critical_path[# x_axis,y_axis]) {
		    case NORMAL:
		        global.critical_path[# x_axis,y_axis] = DOOR;
		        break;
		    case REVERSE:
		        global.critical_path[# x_axis,y_axis] = ALL_DOOR;
		        break;
		}
		y_axis--;
		global.critical_path[# x_axis,y_axis] = REVERSE;
	}
	
	//Wrap the Values:
	if x_axis >= width {
		x_axis = 0;
	} else if x_axis < 0	{
		x_axis = (width-1)
	}

	if y_axis < 0	{
		break;
	}
}
