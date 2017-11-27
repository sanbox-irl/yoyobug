var type = argument[0];
var returnable = "Get 'em, boy!"

if type = "basic"
{
	with obj_robot
	{
		if place_meeting(x,y+vspd,obj_wall)
			{
			flip*= -1;
			counter +=1;
			}
		vspd=(-flip)*(3);
	
	if counter > 5
		{
		vspd = 0;
		counter = 0;
		obj_input_terminal.run = false;
		flip = 1;
		return returnable;
		}
	}
}

return "Attacking..."