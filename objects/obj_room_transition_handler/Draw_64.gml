if state_name == "Main_Movement"	{
	if sprite_exists(old_room)	{
		draw_sprite(old_room,0,obj_camera.shake_x, state_var[DRAW_VAR] + obj_camera.shake_y);	
	}
	
	draw_text(100,200,state_timer);
}