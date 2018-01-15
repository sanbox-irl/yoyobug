scale-=(1/3);
scale = max(1,scale);

if scale == 1	{
	counter+=global.dt;
}

to_die = instance_place(x,y,obj_robot_parent);
instance_destroy(to_die);


if counter >  5 {
	instance_destroy();	
}
