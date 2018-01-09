var list, x_place,y_place, x_term_place, y_term_place, random_direc;
x_place[number]			= 0;
y_place[number]			= 0;
x_term_place[number]	= 0;
y_term_place[number]	= 0;
random_direc[number]	= 0;

for (var i = 0; i < number; ++i) {
	do	{  
		var random_number	= irandom_range(0,(ds_list_size(tower_list)-1));
		var abs_position	= tower_list[| random_number];
		} until (abs_position);
		
	x_place[i]			= abs_position mod global.grid_width;
	y_place[i]			= abs_position div global.grid_width;
	tower_list[| random_number]*=-1;
	
}

