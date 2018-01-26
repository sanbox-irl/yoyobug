if state_var[DRAW_VAR]	{
	var size = ds_list_size(active_towers);
	draw_set_alpha(1);
	var _color = choose(c_white,"yup");
	if (_color != c_white)	{ _color = choose( global.purple1, global.blue1)};
	draw_set_color(_color);
	for (var i = 0; i < size-1; ++i) {
		if instance_exists(active_towers[| i])	{
			draw_lightning(	active_towers[| i].x+offset[X_ARRAY],active_towers[| i].y+offset[Y_ARRAY],
						active_towers[| i+1].x+offset[X_ARRAY],active_towers[| i+1].y+offset[Y_ARRAY],
						20, 40,2,5);
		}
	}
	if (size> 1)	{
		draw_lightning(	active_towers[| size-1].x+offset[X_ARRAY],active_towers[| size-1].y+offset[Y_ARRAY],
						active_towers[| 0].x+offset[X_ARRAY],active_towers[| 0].y+offset[Y_ARRAY],
						20, 40,2,5);
	
		draw_set_color(c_white);
	}
}

ds_list_clear(active_towers);

if keyboard_check_pressed(vk_f1)	{
	toggle_grid = !toggle_grid;
}


if toggle_grid	{
	mp_grid_draw(mp_grid);
}