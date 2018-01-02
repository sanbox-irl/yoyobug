if !instance_exists(originator_tower)	{
	exit;	
}

var tower = originator_tower;
scale = 2*(tower.state_var[PASS_VAR]/tower.sprite_height);


if instance_number(obj_terminal) > 0	{
	var term = term_inst;
	if instance_exists(term_inst)	{
		can_draw_term = true;
		term_rad_x = term.x+tile_width/2;
		term_rad_y = term.y+tile_width/2;
		if term.sprite_index = spr_terminal	{
		term_scale = 1.5*(term.image_index+1)/(term.image_number);
	}
	}
}