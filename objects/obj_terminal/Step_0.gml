if instance_exists(originator_tower)	{
	if originator_tower.end_draw	&& !(terminal_locked)	{
		image_speed = -1;	
		if image_index = 0	{
			debug_message(string("Terminal Destroyed: ") + string(ID));
			instance_destroy();	
		}
	}
} else instance_destroy(id);

//Checking if we're hitting someone. 
var is_locked = instance_place(x,y,obj_robot);
if is_locked && !(terminal_locked)	{
	terminal_locked = true;
	instance_destroy(is_locked);
	sprite_index = spr_terminal_locked;
	image_speed = 0.5;
	ds_list_clear(obj_tower_controller_parent.active_towers);
	
	keyboard_string = "spawn";
	press_enter();
}