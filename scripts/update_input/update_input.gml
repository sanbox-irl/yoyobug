/// updateTextInput()

user_input = string_replace_all(keyboard_string,"#","\#");

if (global.enter)		{
	display_string = user_input;
	command_string = user_input;
	clear_user_input();
	run = true;
}

if run	{
	run_command(command_string);
}