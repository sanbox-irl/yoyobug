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
if is_locked	{
	terminal_locked = true;
	instance_destroy(is_locked);
	sprite_index = spr_terminal_locked;
	image_speed = 0.5;
	ds_list_clear(obj_tower_controller_parent.active_towers);
	
	keyboard_string = "spawn";
	press_enter();
}


//Make the Timers
if timer_start	{
	var room_controller = obj_tower_controller_parent;
	timer_percent = 100*(room_controller.state_timer/60)/room_controller.time_left
	var first_segment = 50;
	var second_segment = 80;
	var third_segment	=  100;
	var frequency = 3;

	if !(timer_percent = 0)	{
		if timer_percent < first_segment	{
			timer_spr = spr_greentimer;
			small_timer = timer_percent*(100/(100-first_segment))*(frequency)-(small_past_value);
			if small_timer >= 100	{
			screen_shake(1,2);
			small_past_value+=100;
			small_timer = 100;
			}
		} else if timer_percent < second_segment	{
			if small_past_value = 200	{
				small_past_value = 300;
				small_timer = 100;
			}
			small_timer = timer_percent*(100/(second_segment-first_segment))*frequency-(small_past_value);
			timer_spr = spr_yellowtimer;
			if small_timer >= 100	{
			screen_shake(2,4);
			small_past_value+=100;
			small_timer = 100;
			}	
		} else if timer_percent < third_segment	{
			timer_spr = spr_redtimer;
			if small_past_value = 500	{
				small_past_value = 600;
				small_timer = 100;
			}
			small_timer = timer_percent*(100/20)*3-(small_past_value);
			if small_timer >= 100	{
			screen_shake(4,4);
			small_past_value+=100;
			small_timer = 100;
			}	
		}
	}
}
