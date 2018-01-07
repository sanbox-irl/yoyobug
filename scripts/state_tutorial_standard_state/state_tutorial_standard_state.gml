//No chance
draw_collision_lines = true;
	
//Find Our Towers
for (var i = 0; i < instance_number(obj_terminal_pillar); ++i) {
	var _inst = instance_find(obj_terminal_pillar,i);
	if (ds_list_find_index(active_towers,_inst.id) = -1)	{
		debug_message("Instance ID not found");
		if _inst.electrified == true	{
			ds_list_add(active_towers,_inst.id);  
			debug_message(string(_inst.id) + string(" Successfully Added"));
		}
	} 
}
	
//Actual Collision Code
for (var i = 0; i < ds_list_size(active_towers); ++i) {
	var _col_inst1 = active_towers[| i];
	if i != number -1	{
		var _col_inst2 = active_towers[| i+1];
	} else var _col_inst2 = active_towers[| 0];
	if instance_exists(obj_robot_parent)	{
		var _col = collision_line(_col_inst1.x+offset[X_ARRAY],_col_inst1.y+offset[Y_ARRAY],_col_inst2.x+offset[X_ARRAY],_col_inst2.y+offset[Y_ARRAY],obj_robot_parent,false,false);
	}	else _col = noone;
	if _col != noone	{
		with _col	{
			to_be_destroyed = true;
		} 
	}
	
}
