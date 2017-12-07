if tower_draw && (spawning_tower[0].timer > spawning_tower[0].draw_tower_time)	{
	var x_offset = obj_terminal_pillar.sprite_width/2;
	var y_offset = 10;
	for(i=0; i<instance_number(obj_terminal_pillar)-1; i++){
	    var obj0, obj1;
	    obj0 = instance_find(obj_terminal_pillar, i);
	    obj1 = instance_find(obj_terminal_pillar, i+1);
	    var robot_to_die = collision_line(obj0.x+x_offset, obj0.y-y_offset, obj1.x+x_offset, obj1.y-y_offset,obj_robot,true,true)	
		if !(robot_to_die == noone)	{
			instance_destroy(robot_to_die);
			}
	}
	var robot_to_die = collision_line(spawning_tower[number-1].x+x_offset,spawning_tower[number-1].y-y_offset,spawning_tower[0].x+x_offset,spawning_tower[0].y-y_offset,obj_robot,true,true)	{
	if !(robot_to_die == noone)	{
		instance_destroy(robot_to_die);	
	}
	}
}