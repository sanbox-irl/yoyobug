counter += global.dt;

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
	if saved_robot != noone{
		//Here we leave the room. This is an important part of the code.


	}
	lightning_length -=global.dt;

}