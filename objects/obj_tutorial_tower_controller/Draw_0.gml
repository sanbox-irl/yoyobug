if draw_collision_lines	{
	var size = ds_list_size(active_towers);
	draw_set_alpha(1);
	var _color = choose(c_white,"yup");
	if (_color != c_white)	{ _color = choose( purple1, blue1)};
	draw_set_color(_color);
	for (var i = 0; i < size-1; ++i) {
	   draw_lightning(	active_towers[| i].x+offset[0],active_towers[| i].y+offset[1],
						active_towers[| i+1].x+offset[0],active_towers[| i+1].y+offset[1],
						20, 40,2,5);	
	}	
		draw_lightning(	active_towers[| size-1].x+offset[0],active_towers[| size-1].y+offset[1],
						active_towers[| 0].x+offset[0],active_towers[| 0].y+offset[1],
						20, 40,2,5);
	
	draw_set_color(c_white);
}