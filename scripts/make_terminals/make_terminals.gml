randomize();
var count = argument0;

//Find the number of towers we're making.
if count < 3	{
	number = 3;
	spawning_tower	= array_create(number,0);
	terminals		= array_create(number,0);
	var x_place		= array_create(number,0);
	var y_place		= array_create(number,0);
	var x_term_place= array_create(number,0);
	var y_term_place= array_create(number,0);
	var random_direc= array_create(number,0);
}

///Find the place of the first tower.
do {
	x_place[0]	= irandom_range(1,grid_width);	//Do 1 so we're in the grid.
	y_place[0] = irandom_range(2,grid_height);	//Two so we're in the play area.
} until (game_grid[# x_place[0],y_place[0]] == noone);

///Make the towers.
for (var i = 1; i < number; ++i) {
	do {
	    x_place[i] = irandom_range(1,grid_width)
		y_place[i] = irandom_range(2,grid_height);
	} until ((game_grid[# x_place[i],y_place[i]]== noone) &&
			 (point_distance(x_place[i]*tile_width,y_place[i]*tile_width,x_place[i-1]*tile_width,y_place[i-1]*tile_width)>tile_width*2)
			);
}

for (var i = 0; i < number; ++i) {
    randomize();
	x_place[i]*=tile_width;
	y_place[i]*=tile_width;
	spawning_tower[i]				= instance_create_layer(x_place[i],y_place[i],"Instances",obj_terminal_pillar);
	var numb						= irandom(5);
	spawning_tower[i].color			= ds_map_find_value(pillar_color_map,numb)
	spawning_tower[i].image_index	= numb;
//Find termianl Offset 
	do {
	    random_direc[i]				=choose(left,right,down);
		x_term_place[i]					=x_place[i]		+	lengthdir_x(tile_width,random_direc[i]);
		y_term_place[i]					=y_place[i]		+	lengthdir_y(tile_width,random_direc[i]);
	} until (
			(!(place_meeting(x_term_place[i],y_term_place[i],obj_solid)))
			&& x >= tile_width && y>=tile_width);

	terminals[i]					=instance_create_layer(x_term_place[i],y_term_place[i],"Walls",obj_terminal);
	terminals[i].sprite_index		=ds_map_find_value(terminal_directions_map,random_direc[i])
}

