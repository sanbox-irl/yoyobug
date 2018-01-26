x += (x_to - x)/25;
y += (y_to - y)/25;

shake_x = (irandom_range(-shake_remain,shake_remain));
shake_y = (irandom_range(-shake_remain,shake_remain));

x+= shake_x;
y+=	shake_y;

shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude))

camera_set_view_pos(view_camera[target_view],x, y);

