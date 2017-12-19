///@param object/instance_to_check
///@param variable_to_check
///@param variable value to check
///@param check_all

var _obj	= argument[0];
var _var	= argument[1];
var _value	= argument[2];
var _check	= argument[3];

var _counter_to_go = 0;

if _check		{
	var number_of_instances = instance_number(_obj);
	for (var i = 0; i < number_of_instances; ++i) {
	    var _inst = instance_find(_obj,i);
		if variable_instance_get(_inst,string(_var)) == _value	{
		_counter_to_go++;	
		}
	}
	if _counter_to_go >= number_of_instances return true;
}	else	{
	if variable_instance_get(_inst,string(_var)) == _value	return true;
}

return false;