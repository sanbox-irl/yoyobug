var type = argument[0];
var returnable = "Got 'em, boys!"

if type = "basic"
{
	with obj_robot	{
		if place_meeting(x,y+vspd,obj_wall)	{
			flip*= -1;
			counter +=1;
			}
		vspd=(-flip)*(3);
	
		if counter > 100 || !(obj_input_terminal.command_string == "attack")	{
			vspd = 0;
			x = starting_x;
			y = starting_y;
			counter = 0;
			obj_input_terminal.run = false;
			flip = 1;
			return returnable;
			}
	}
}

return "Attacking..."