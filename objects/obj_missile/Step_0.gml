if point_distance(x,y,target_x,target_y) > 2	{
	x = lerp(x,target_x,0.2);
	y = lerp(y,target_y,0.2);
}	else	{
	x = target_x;
	y = target_y;

	timer+=global.dt;


	if timer > 5	{
		instance_destroy();	
	}



}



	
var obj_to_destroy = instance_place(x,y,obj_enemy_robot)
if !(obj_to_destroy == noone)
	{
		instance_destroy(obj_to_destroy);
	}