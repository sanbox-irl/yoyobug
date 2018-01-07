var _terminal = instance_nearest(x,y,obj_menu_terminal);
if instance_exists(_terminal)	{
	var _display_string = _terminal.display_string;
	var _command_result = _terminal.command_result;
	var _depth			= _terminal.depth;
}

instance_destroy(_terminal);
var _new_terminal = instance_create_depth(x,y,_depth,obj_input_terminal);
if instance_exists(_new_terminal)	{
	_new_terminal.display_string = _display_string;
	_new_terminal.command_result = _command_result;
}

state_switch("State_Gamestart_3",0);


