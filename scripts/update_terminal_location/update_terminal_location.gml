if point_in_rectangle(	mouse_x,			mouse_y,
						term_x,				term_y-term_height/15,
						term_x+term_width,	term_y)
{
	if mouse_check_button_pressed(mb_left)
		{
		selected_at_first = true;
		} else selected_at_first = false;

	if mouse_check_button(mb_left)
		{
		selected = true;
		show_debug_message("yup")
		} else selected = false;
}
if selected_at_first
	{
		dir = point_direction(mouse_x,mouse_y,term_x,term_y);
		dist = point_distance(mouse_x,mouse_y,term_x,term_y)
		dist_x = lengthdir_x(dist,dir);
		dist_y = lengthdir_y(dist,dir);

	}
if selected
	{	
		term_x =mouse_x + dist_x;
		term_y = mouse_y + dist_y;
		term_x = clamp(term_x,0					  ,		room_width	-	term_width);
		term_y = clamp(term_y,0	+	term_height/15,		room_height	-	term_height/15);
	}
	
