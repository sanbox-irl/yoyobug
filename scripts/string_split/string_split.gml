var delimiter = argument[1];
var the_string = argument[0] + delimiter;

var delimiter_length = string_length(delimiter);
var count = string_count(delimiter, the_string);
var position = 0;

var return_array;

for (var i = 0; i < count; ++i) 
{
    position = string_pos(delimiter, the_string) -1;
	return_array[i] = string_copy(the_string, 1, position);
	the_string = string_delete(the_string,1,position+delimiter_length);
}


return return_array;