if state_new	{
	old_room = sprite_create_from_surface(application_surface,0,0,display_get_gui_width(),display_get_gui_height(),false,false,0,0);
	instance_destroy(obj_game_room_controller);
	instance_deactivate_all(true);
	instance_activate_object(parent_controller);
	instance_activate_object(obj_exterior_walls);
	instance_activate_object(obj_hud);

	
	if instance_exists(obj_camera)	{
		with (obj_camera)	{
			y_to = room_height;
		}
	}
	
	instance_destroy(obj_experimental_room_design);
	instance_create_layer(x,y,"Instances",obj_experimental_room_design);
}

if state_timer > 60	{
	screen_shake(4,1);
	state_var[DRAW_VAR]+=5;
	if instance_exists(obj_camera)	{
		with (obj_camera)	{	
			y_to-=other.state_var[DRAW_VAR];
			y_to = clamp(y_to,14,room_height);
		}
	}
} 
 
if state_var[DRAW_VAR] >= room_height	{
	state_switch("Waiting To Go",0);
}
