var params = argument0;
var returnable = "";

if array_length_1d(params) = 2
	{
		move(params[1]);
	} else if array_length_1d(params) = 1	{
		returnable = "ERROR\nSpecify -direction, i.e. 'move-right'"
	} else if array_length_1d(params) > 2	{
		returnable = "ERROR\nToo many parameters. Can only move one direction!\nSpecify -direction, i.e. 'move-right'";
	}
	
return returnable;