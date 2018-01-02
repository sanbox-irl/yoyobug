//Get the location of our Terminal.
if state_new	{
	var ref			 =	obj_room_controller;
	x_place_terminal =	ref.tower_grid[# tower_number, terminal_x];
	y_place_terminal =	ref.tower_grid[# tower_number, terminal_y];
	term_spr		 =	ref.tower_grid[# tower_number, term_direc];
}

//Our initial Draw Event
if init_draw	{
	if make_a_floor_mat	{
		floor_mat = instance_create_layer(x,y,"Background_Instances",obj_floor_mat);
		floor_mat.originator_tower	= id;
		floor_mat.color				= color;
		make_a_floor_mat			= false;
	}
	tower_height+=global.dt;
	screen_shake(1,1);
	if tower_height > sprite_height-1	{
		tower_height = sprite_height;
		init_draw = false;
		electrified = true;
		
		terminal_inst = instance_create_layer(x_place_terminal,y_place_terminal,"Higher_Instances",obj_terminal);
		terminal_inst.originator_tower = id;
		terminal_inst.spr = term_spr;
		floor_mat.term_inst = terminal_inst;
	}
}