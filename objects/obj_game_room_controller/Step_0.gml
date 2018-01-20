counter += global.dt;

if instance_exists(obj_tower_controller_parent)	{
	if obj_tower_controller_parent.number <= 0	{
		electrified = false;
	}
}

if electrified	{
	var col_robot;
	col_robot = instance_place(x,y,obj_robot);
	if col_robot != noone	{
		col_robot.to_be_destroyed = true;
		super_charge = true;
		charge_var = 10;
		screen_shake(1,20);
	}

	if super_charge 	{
		charge_var-=0.1;
	} else charge_var = 0;

	if charge_var <= 0 	{
		super_charge = false;
	}
} else 	{
	saved_robot = instance_place(x,y,obj_robot);
	if (saved_robot != noone) && transition_time = false {
		transition_time = true;
		room_sprite = sprite_create_from_surface(application_surface, 0,0,display_get_gui_width(),display_get_gui_width(),false,false,0,0);
	}
	lightning_length -=5*global.dt;

}