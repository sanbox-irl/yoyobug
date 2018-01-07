var command = argument[0];

var array = string_split(command, "-");
if (string_length(array[0]) > 0)
{
	var script_index = asset_get_index(array[0] + "_execute");
	if (script_exists(script_index))
	{	
		command_result = string(script_execute(script_index,array));
	} else command_result = "Unknown command. Use 'help' for a list."
}

