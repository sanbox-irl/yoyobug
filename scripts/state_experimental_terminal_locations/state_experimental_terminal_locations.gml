var list, x_place,y_place, x_term_place, y_term_place, random_direc;
x_place[number]			= -1;
y_place[number]			= -1;
x_term_place[number]	= -1;
y_term_place[number]	= -1;
random_direc[number]	= 0;

var check = true;
repeat(5000)	{
	for (var i = 0; i < number; ++i) {
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
				
			if point_distance(x_place[i]*tile_width,y_place[i]*tile_width,x_place[j]*tile_width,y_place[j]*tile_width) < tile_width * 2	{
				check = false;
				break;
			}	
		}
	}

	//Get ouf the Repeat Loop;
	if (check == true)	{
		break;	
	}
}
