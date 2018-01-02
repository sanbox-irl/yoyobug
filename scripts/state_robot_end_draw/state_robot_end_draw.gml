state_var[0]-=0.01*global.dt;
	
if state_var[0] <= 0	{
	if state_var[2] == 0	{
		var explo_id = instance_create_layer(x,y,"Background_Instances",obj_explosions);
		explo_id.caller = id;		//The explosion object will destroy this object.
		screen_shake(2,30);
		state_var[2] = 1;
	}
} else	{
	debug_message(string("Killing Robot ") + string(id));
	image_speed = 0;
}
