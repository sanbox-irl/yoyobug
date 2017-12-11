var params = argument0;

var returnable = "";

if array_length_1d(params) = 2 || 3	{
	var dir_ang = "";
	//Figure out the Direction with Parameter 1.
	switch (params[1]) {
	    case "right":
	        dir_ang = 0;
	        break;
	    case "left":
	        dir_ang = 180;
	        break;
		case "up":
			dir_ang = 90;
			break;
		case "down":
			dir_ang = 270;
			break;
	}
	//figure out the Magntiude with Number 1;
	var number = 1;
	if (array_length_1d(params) == 3)
		{
		number = convert_string_to_real_number(params[2])	
		}

	//Return the Function
	return move(dir_ang,number);
	
	} 
else if array_length_1d(params) = 1	{
	returnable = "ERROR\nSpecify -direction, i.e. 'move-right'"
} else if array_length_1d(params) > 3	{
	returnable = "ERROR\nToo many parameters. Can only move one direction!\nSpecify -direction, i.e. 'move-right'";
}
	
return returnable;