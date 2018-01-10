var list, x_place,y_place, x_term_place, y_term_place, random_direc;
tower_grid = ds_grid_create(number*10,number*10);

x_place[number]			= -1;
y_place[number]			= -1;
x_term_place[number]	= -1;
y_term_place[number]	= -1;
random_direc[number]	= 0;
var distance_check		= 2;
distance_check		   *= tile_width;

var cycles				= 0;
#region MAIN TOWER LOOP
var check = true;
repeat(5000)	{
	cycles++;
	//Reset the x_place;
	for (var i = 0; i < number; ++i) {
		x_place[i] = -1;
		y_place[i] = -1;
	}
	//Reset the original tower to not negative numbers.
	for (var i = 0; i < ds_list_size(tower_list); ++i) {
		tower_list[| i] = abs(tower_list[| i]);
	}
		
	check = true;
	for (var i = 0; i < number; ++i) {
		if (check == true)	{
			//This is the Loop that Figures out which Tower to Make
			do	{  
				var random_number	= irandom_range(0,(ds_list_size(tower_list)-1));
				var abs_position	= tower_list[| random_number];
				} until (abs_position > 0);
		
			x_place[i]			= abs_position mod global.grid_width;
			y_place[i]			= abs_position div global.grid_width;
			tower_list[| random_number]*=-1;
		
			//Check if sufficient.
			for (var j = 0; j < i; ++j) {
			    if x_place[i] == x_place[j]	{
					check = false;
					break;
				}
			
				if y_place[i] == y_place[j]	{
					check = false;
					break;
				}
				
				if point_distance(x_place[i]*tile_width,y_place[i]*tile_width,x_place[j]*tile_width,y_place[j]*tile_width) <	distance_check	{
					check = false;
					break;
				}	
			}
		}
	}

	//Get out the Repeat Loop;
	if (check == true)	{
		break;	
	}
}
debug_message(string("Main Tower Cycles = ") + string(cycles));
cycles = 0;
#endregion

#region MAIM TERMINAL LOOP
//Main Terminal Loop
var check_term = true;
repeat(5000)	{
	cycles++;
	for (var i = 0; i < number; ++i) {
		random_direc[i] = -1;
		x_term_place[i] = -1;
		y_term_place[i] = -1;
	}
	check_term = true;
	for (var i = 0; i < number; ++i) {
		if (check_term == true)	{
			random_direc[i]	= choose(left,right,down);
			x_term_place[i]	= x_place[i]		+	lengthdir_x(1,random_direc[i]);
			y_term_place[i]	= y_place[i]		+	lengthdir_y(1,random_direc[i]);
		
			//Check the Random Numbers Now.
		
			for (var j = 0; j < i; ++j) {
				//General checks
				if x_term_place[i] == x_term_place[j]	{
					check_term = false;
					break;
				}
			
				if y_term_place[i] == y_term_place[j]	{
					check_term = false;
					break;
				}
			
				//if point_distance(x_term_place[i]*tile_width,y_term_place[i]*tile_width,x_term_place[j]*tile_width,y_term_place[j]*tile_width)	< distance_check	{
				//	check_term = false;
				//	break;
				//}
			
				///Special Checks
				if point_distance(x_term_place[i]*tile_width,y_term_place[i]*tile_width,x_place[j],y_place[j]) < (distance_check/2)	{
					check_term = false;
					break;
				}
			
				//Make sure we're still on the map.
				if x_term_place[i] >= global.grid_width{
					check_term = false;	
					break;
				}
			
				if x_term_place[i] <= 0	{
					check_term = false;
					break;
				}
			
				if y_term_place[i] < 0	{
					check_term = false;
					break;
				}
			
				if y_term_place[i] >= global.grid_height {
					check_term = false;
					break;
				}
			
			}
		}
	}
	if (check_term == true)	{
		break;	
	}
	
}
debug_message(string("Terminal Cycles = ") + string(cycles));
cycles = 0;
#endregion

//Convert to Room Coordinates:
for (var i = 0; i < number; ++i) {
	x_place[i]*=tile_width;
	y_place[i]*=tile_width;
	x_term_place[i]*=tile_width;
	y_term_place[i]*=tile_width;
}

for (var i = 0; i < number; ++i) {
	tower_grid[# i,TOWER_X]	= x_place[i] + tile_width;
	tower_grid[# i,TOWER_Y]	= y_place[i] + tile_width;
	tower_grid[# i,TERMINAL_X]	= x_term_place[i] + tile_width;
	tower_grid[# i,TERMINAL_Y]	= y_term_place[i] + tile_width;
	tower_grid[# i,RANDOM_NO]	= irandom(5);
	tower_grid[# i,TOWER_COLOR]	= pillar_color_map[? tower_grid[# i,RANDOM_NO]];
	tower_grid[# i,TERM_DIREC]	= random_direc[i];
}


state_switch("Spawn Spawning Circles",0);