var params = argument0;
var returnable = "";
var length = array_length_1d(params);
var returnable = "";
if global.powerup_bank = ""	{
	debug_message("No Powerup ERROR");
	run = false;
	returnable = "No powerup!";
	return returnable;
}

if length != 2	{
	returnable = "Must Specify with '-spec' a Droid.\nSee Droid Numbers.";
	debug_message(returnable);
	run = false;
	return returnable;
}



script_execute(global.powerup_map[? global.powerup_bank],params[1]);
run = false;
