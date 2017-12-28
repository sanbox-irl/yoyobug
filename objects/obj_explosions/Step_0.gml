counter += global.dt;

scale = counter/kill_frame;
scale = clamp(scale,0,1);

if counter >= kill_frame*2.5	{
	instance_destroy(id);
	instance_destroy(caller);
}

var to_die = collision_circle(x,y,scale,obj_robot_parent,false,false)	

if to_die != noone	{
	if to_die != caller	{
		instance_destroy(to_die);
	}
}