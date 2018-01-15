///@ func changes target to another target.
///@param old_target
///@param _new_targ

/* Function goal: cycle through all instances of the target, and find the nearest one.
Since probably the nearest one is the target that we're not going to be following anymore, we gotta expect to be finding the second nearest target
*/

var _old_targ, _new_targ;

_old_targ = argument0;
_new_targ = argument1;


var _num = instance_number(_new_targ);

var _new_id = noone;
var j = 0;
repeat(_num)	{
	var _new_id = instance_nth_nearest(x,y,_new_targ,j);
	if _new_id = _old_targ	{
		j++;
		_new_id = noone;
		continue;
	}
		
	if object_get_name(_new_id) == "obj_robot"	{
		if (_new_id.state_name == "End_Draw")	{
			j++;
			_new_id = noone;
			continue;
		}
	}
		
	break;
}	

return _new_id;