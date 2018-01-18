///@func execute_input_text(input,string);
///@param input
///@param string

var _input = argument0;
var _string = argument1;

if _input	{
	with obj_input_terminal	{
		keyboard_string = string(_string);
		press_enter();
	}
	_input = false;
}

return _input;