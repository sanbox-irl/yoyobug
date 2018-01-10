if global.dev_mode {
	if keyboard_check_pressed(vk_up)	{
		time_left+=20;	
	}
}
time_left = 15;

if state_timer/60 > time_left	{
	state_var[DRAW_VAR] = false;					
	var knock_off_number = 0;
	with (obj_terminal_pillar) {
	    if (tower_locked) {
		    knock_off_number++;
		} else	{
		end_draw = true;	
		}
	}
	
	if knock_off_number = starting_number	{
		state_switch("True Idle",0);	
	} else {
		ds_list_clear(active_towers);
		state_switch("Wait to Respawn Towers",0);
		time_left = 0;
		number = starting_number - knock_off_number;
	}
} else	{
	state_var[DRAW_VAR] = true;
	
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
	
	

}	