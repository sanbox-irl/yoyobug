//First, we check if we're Locked, and if so, we get out. No need to waste energy otherise.
if tower_locked	{
	exit;	
}

//This is where we make the terminals. 
if state_new	{
	terminal_inst = instance_create_layer(x_place_terminal,y_place_terminal,"Instances",obj_terminal);
	terminal_inst.originator_tower = id;
	terminal_inst.spr = term_spr;
	floor_mat.term_inst = terminal_inst;	
}

//If our time is up, we get out.
if end_draw		{
	state_switch("End_Draw");	
}

///If our terminal exists and if we're locked, then we lock.
if instance_exists(terminal_inst)	{
	if terminal_inst.terminal_locked	{
		tower_locked = true;	
		electrified = false;
	}	
}