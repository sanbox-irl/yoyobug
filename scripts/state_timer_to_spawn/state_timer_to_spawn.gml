if global.dev_mode {
	if keyboard_check_pressed(vk_up)	{
		time_left+=20;	
	}
}
time_left = 15;

if state_timer/60 > time_left	{
	draw_collision_lines = false;					
	var knock_off_number = 0;																					//Knock Off is the Number of Locked towers
	for (var i = 0; i < number; ++i) {
		var _inst = instance_place(tower_grid[# i, tower_x], tower_grid[# i, tower_y], obj_terminal_pillar);
		if instance_exists(_inst)	{
			if _inst.tower_locked == true	{
				knock_off_number++;
			} else if _inst.tower_locked == false	{
				_inst.end_draw = true																			//Start the End Draw here, which destroys _inst in its Step event.
			}	
		}
	}
	
	if knock_off_number = number	{
		state_switch("True Idle",0);	
	} else {
	ds_list_clear(active_towers);
	draw_collision_lines = false;
	state_switch("Wait to Respawn Towers",0);
	time_left = 0;
	number -= knock_off_number;
	}
} else	{
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
	
	

}	