var params = argument[0]
var returnable = "";

if (array_length_1d(params) = 2)	{
	var dir_ang = "";
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
	return attack(dir_ang);
} else	if (array_length_1d(params) ==	1)	{
			returnable = "ERROR\nSpecify -direction, i.e. 'attack-right'";
		}	else if array_length_1d(params) > 3	{
			returnable = "ERROR\n Can only attack one direction!\nSpecify -direction, i.e. 'move-right'";
			}

return returnable;