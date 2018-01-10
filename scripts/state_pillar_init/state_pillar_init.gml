//Run through what we need to on this run. Not sure why this can't be in the step event.
if state_var[BOOL_VAR] == 0	{
	//Make our Exit Terminal
	var ref			 =	obj_tower_controller_parent;
	x_place_terminal =	ref.tower_grid[# tower_number, TERMINAL_X];
	y_place_terminal =	ref.tower_grid[# tower_number, TERMINAL_Y];
	term_spr		 =	ref.tower_grid[# tower_number, TERM_DIREC];
	
	//Make our Floor Mat
	floor_mat = instance_create_layer(x,y,"Background_Instances",obj_floor_mat);
	floor_mat.originator_tower	= id;
	floor_mat.color				= color;
	state_var[BOOL_VAR] = 1;
}

//Our initial Draw Event
state_var[PASS_VAR]+=global.dt;
screen_shake(1,1);
if (state_var[PASS_VAR] > (sprite_height-1))	{
	state_var[PASS_VAR] = sprite_height;
	electrified = true;
	state_switch("Standard_Draw",0);
}