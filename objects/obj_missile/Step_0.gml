timer+=global.dt;

if timer > 20
	{
	instance_destroy();	
	}
	
var obj_to_destroy = instance_place(x,y,obj_robot_parent)
if !(obj_to_destroy == noone)
	{
		instance_destroy(obj_to_destroy);
	}