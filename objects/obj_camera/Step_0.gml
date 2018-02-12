if update_camera {
	x_to = global.ox;
	y_to = global.oy;
	
	ready_to_ping = true;
	
	switch (global.current_room[? "size"]) {
		case "small":
			width_to = normal_width/2;
			height_to = normal_height/2;
			break;
		case "normal":
			width_to = normal_width;
			height_to = normal_height;
			break;
		case "big":
			width_to = normal_width*2;
			height_to = normal_height*2;
			break;
		default:
			
			break;
	}
	update_camera = false;
}

//Send a ping back to the Room Handler that We're Safely in the New Rooms:
if ready_to_ping	{
	if point_distance(x_to,y_to,x,y) < 5	{
		if instance_exists(obj_room_handler)	{
			obj_room_handler.begin_recycle = true;	
		}
	}
}


x += (x_to - x)/25;
y += (y_to - y)/25;

width+= (width_to - width)/25;
height+= (height_to - height)/25;

shake_x = (irandom_range(-shake_remain,shake_remain));
shake_y = (irandom_range(-shake_remain,shake_remain));

x+= shake_x;
y+=	shake_y;

shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude))

camera_set_view_pos(view_camera[target_view],x, y);
camera_set_view_size(view_camera[target_view],width,height)


if global.dev_mode {
	debug_camera_step();	
}
