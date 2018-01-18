///@func execute_input(input_variable, [string])
///@param input_variable
///@param string
var _input, _string;

_input = argument[0];
_string = string(argument[1]);

if (_input == true)	{
	keyboard_string = _string;
	with obj_input_terminal	{
		press_enter();
	}
	return false;
}