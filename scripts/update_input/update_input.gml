/// updateTextInput()

user_input = string_replace_all(keyboard_string,"#","\#");

if (keyboard_check_pressed(vk_enter))
{
	display_string = user_input;
	command_string = user_input;
	clear_user_input();
	run = true;
}

if run
	{
run_command(command_string);
	}