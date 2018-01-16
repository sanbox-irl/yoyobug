draw_small_circle = true;

rad = wave(0.7,1.3,0.5,0);

if timer > 120	{
	timer = 0;
	var robot_inst = instance_create_layer(x,y,"Instances",obj_robot);
	robot_inst.calling_circle = id;
	rad = 1;
	state_switch("End_State",0);
}
