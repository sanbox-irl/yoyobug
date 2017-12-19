update_terminal_location();
update_input();
counter+=1;

var time_left	= obj_room_controller.time_left;
var	timer		= obj_room_controller.state_timer div 60;

if !(time_left = 0)	{
	draw_time_rectangle = true;
	check_how_left = (time_left - timer);
	if check_how_left > 10
		{
		timer_color = c_lime;	
		} else if check_how_left < 10 && check_how_left > 3	{
						timer_color = c_yellow;
						} else if check_how_left < 3
							{
								timer_color = c_red;	
							}
} else	{
	draw_time_rectangle = false;
	check_how_left = "";
	timer_color = c_lime;
}