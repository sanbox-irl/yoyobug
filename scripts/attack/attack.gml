var type = argument[0];

if type = "basic"
{
	with obj_robot
	{
		if place_meeting(x,y+vspd,obj_wall)
			{
			flip = -1;	
			show_debug_message("FLIIIIP");
			}
		vspd=(-flip)*(3);
		show_debug_message(vspd);
	}
}