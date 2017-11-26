/// updateTextInput()

user_input = string_replace_all(keyboard_string,"#","\#");

if (keyboard_check_pressed(vk_enter))
{
	comand_string = user_input;
	run_command(user_input);
	clear_user_input();
}

if !(command_result == "")
	{
	count_to_clear-=global.dt;
	}
	
if (	!(user_input == "")		||	(count_to_clear		<=	0))
	{
	command_result = "";
	count_to_clear = 5*60;
	}

