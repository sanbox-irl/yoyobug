if update_camera {
	x_to = ds_map_find_value(global.current_room,"x_origin");
	y_to = ds_map_find_value(global.current_room,"y_origin");
	
	ping_recycle = true;
	
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


if ((point_distance(x,y,x_to,y_to) < 50) && (ping_recycle == true))	{
	obj_room_creator.recycle_rooms = true;
	ping_recycle = false;
}

if global.dev_mode {
	debug_camera_step();	
}
