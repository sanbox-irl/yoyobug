init_resolution();
//Init Vars:
z= 1;
target_view = 0;

//Width
normal_width = 640;
normal_height = 360;
width_to = normal_width;
height_to = normal_height;
width = width_to;
height = height_to;


//Find Where to Go:
x_to = ds_map_find_value(global.current_room,"x_origin");
y_to = ds_map_find_value(global.current_room,"y_origin");

x = x_to;
y = y_to;

//Shake Vars:
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
shake_x = 0;
shake_y = 0;


//Enable the use of views
view_enabled = true;

//Make view 0 visible
view_set_visible(target_view, true);

//Set the port bounds of view 0 to 640x480
view_set_wport(target_view, ideal_width);
view_set_hport(target_view, ideal_height);


camera = camera_create_view(x, y, width, height, 0, -1, -1, -1, 0, 0);

//Set view0 to use the camera "camera"
view_set_camera(target_view, camera);


alarm[0] = 1;

//Debug Tools:
if global.dev_mode = true	{
	aspeed = 10;
	camera_toggle= false;
}
update_camera = false;
ping_recycle = false;