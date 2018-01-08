//New Update Input
#region Update Input
	/// updateTextInput()

	user_input = string_replace_all(keyboard_string,"#","\#");

	if (global.enter)		{
		display_string = user_input;
		command_string = user_input;
		clear_user_input();
		run = true;
	}

	if run	{
		#region Run Commands
			var command = command_string;

			var array = string_split(command, "-");
			if (string_length(array[0]) > 0)	{
				switch (array[0]) {
				    case "spawn":
				        display_string = "Cannot Spawn.";
						command_string = 0;
				        break;
					case "help":
						display_string = "Type the below commands to play. Escape or type 'exit' to exit.";
						break;
					case "hello":
						display_string = "Hello. Type your commands.";
						break;
					case "create":
						display_string = "ERROR: no ID";
						break;
					case "identify":
						display_string = "ERROR: no object to identify";
						break;
					case "tutorial":
						change_room("tutorial");
						break
					case "play":
						change_room("play");
						break;
					case "rPplay":
						change_room("rPlay");
						break;
					case "options":
						change_room("options");
						break;
				}
				
				
				var script_index = asset_get_index(array[0] + "_execute");
				if (script_exists(script_index))	{	
					command_result = string(script_execute(script_index,array));
				}
				command_result = instructions;
				run = false;
				
			}
		#endregion
	}
#endregion;


counter+=1;

if counter mod 60 == 0	{
	flick_cursor*=-1;
	counter = 0;
}