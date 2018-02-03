if keyboard_check(ord("W"))	{
	y_to-=aspeed;
}

if keyboard_check(ord("A"))	{
	x_to-=aspeed;	
}

if keyboard_check(ord("S"))	{
	y_to+=aspeed;	
}

if keyboard_check(ord("D"))	{
	x_to+=aspeed;
}

x += (x_to - x)/25;
y += (y_to - y)/25;

shake_x = (irandom_range(-shake_remain,shake_remain));
shake_y = (irandom_range(-shake_remain,shake_remain));

x+= shake_x;
y+=	shake_y;

shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude))

camera_set_view_pos(view_camera[target_view],x, y);

var past_toggle = camera_toggle;
if keyboard_check_pressed(vk_f2)	{
	camera_toggle = !camera_toggle;	
}

if camera_toggle != past_toggle	{
	if camera_toggle == false	{
		camera_set_view_size(view_camera[0],room_width,room_height);
	} else if camera_toggle == true	{
		camera_set_view_size(view_camera[0],room_width,room_height);	
	}
}


