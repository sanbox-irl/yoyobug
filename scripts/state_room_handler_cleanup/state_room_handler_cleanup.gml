///KILL ACTORS IN OLD ROOM
var _l = ds_list_size(deactivate_list);

for (var i=0; i<_l; ++i) { 
    var _inst = ds_list_find_value(deactivate_list,i);
	if _inst == obj_robot	{
		instance_destroy(_inst);
		ds_list_delete(deactivate_list,i);
	}
    instance_deactivate_object(_inst);
}

past_room[? "deactivate_list"] = deactivate_list;

//RESET VARS
past_sprite = 0;
past_room = 0;
state_switch("Idle",0);