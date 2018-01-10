//Find the number of towers we're making.
var x_place		= array_create(number,0);
var y_place		= array_create(number,0);
var x_term_place= array_create(number,0);
var y_term_place= array_create(number,0);
var random_direc= array_create(number,0);

#region Make Spawn Locations
///Find the place of the first tower.
do {
	x_place[0]	= irandom_range(1,global.grid_width);	//Do 1 so we're in the grid.
	y_place[0]	= irandom_range(2,global.grid_height);	//Two so we're in the play area.
} until (global.game_grid[# x_place[0],y_place[0]] == noone);

///Make the towers.
for (var i = 1; i < number; ++i) {
		do {
		    x_place[i] = irandom_range(1,global.grid_width);
			y_place[i] = irandom_range(2,global.grid_height);
			
			var check0, check1, check2, check3, check_total;
			
			if global.game_grid[# x_place[i],y_place[i]] == noone	{
				check0 = true;
			} else check0 = false;
			
			for (var j = 0; j < i+1; ++j) {
			if point_distance(x_place[i]*tile_width,y_place[i]*tile_width,x_place[i-j]*tile_width,y_place[i-j]*tile_width)>tile_width*3	{
					check1 = true;
				} else check1 = false;
			}	
			if check0 = true && check1 = true {
				check_total = true	
			} else check_total = false;
		} until check_total = true;
}
#endregion

#region Find the Termianl Directions
for (var i = 0; i < number; ++i) {
	x_place[i]*=tile_width;
	y_place[i]*=tile_width;

//Find termianl Offset 
	do {
	    random_direc[i]	= choose(left,right,down);
		x_term_place[i]	= x_place[i]		+	lengthdir_x(tile_width,random_direc[i]);
		y_term_place[i]	= y_place[i]		+	lengthdir_y(tile_width,random_direc[i]);
	} until (
			(!(place_meeting(x_term_place[i],y_term_place[i],obj_solid)))
			&& x_term_place[i] >=	tile_width					&&	y_term_place[i]>=tile_width);
}
#endregion

//Store it all in the DS Grid

for (var i = 0; i < number; ++i) {
	tower_grid[# i,TOWER_X]	= x_place[i];
	tower_grid[# i,TOWER_Y]	= y_place[i];
	tower_grid[# i,TERMINAL_X]	= x_term_place[i];
	tower_grid[# i,TERMINAL_Y]	= y_term_place[i];
	tower_grid[# i,RANDOM_NO]	= irandom(5);
	tower_grid[# i,TOWER_COLOR]	= pillar_color_map[? tower_grid[# i,4]];
	tower_grid[# i,TERM_DIREC]	= random_direc[i];
}

debug_message(tower_grid[# 0,6]);
state_switch(state_spawn_spawning_circles,0)