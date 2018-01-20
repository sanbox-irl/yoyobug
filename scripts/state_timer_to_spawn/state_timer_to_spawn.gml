time_left = 8;
time_left*= 60;

var knock_off_number = 0;

if state_timer <= time_left	{
	state_var[DRAW_VAR] = true;
	
	//Find Our Towers
	with (obj_terminal_pillar)	{
		var list_index = ds_list_find_index(other.active_towers, id);
		if list_index == (-1)	{
			if electrified {
				ds_list_add(other.active_towers,id);
			}
	//If we DID find ourselves in the Index.
		}	else if list_index != (-1) 	{
				if not electrified {
					ds_list_delete(other.active_towers,list_index);
				}
			}
		}
	
	//Actual Collision Code
	for (var i = 0; i < ds_list_size(active_towers); ++i) {
		var _col_inst1 = active_towers[| i];
		if i != number-1	{
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

} else if state_timer > time_left	{
	state_var[DRAW_VAR] = false;					
	var knock_off_number = 0;

	with (obj_terminal_pillar) {
	    if tower_locked {
	    	knock_off_number++
	    } else end_draw = true;
	}
	
	if knock_off_number = starting_number	{
		number = 0;
		ds_list_clear(active_towers);
		time_left = 0;
		state_switch("True Idle",0);	
	} else {
		ds_list_clear(active_towers);
		state_switch("Wait to Respawn Towers",0);
		time_left = 0;
		number = starting_number - knock_off_number;
	}
}	