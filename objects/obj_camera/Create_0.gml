init_resolution();
//Init Vars:
z= 1;
target_view = 0;
width = 640;
height = 360;

x_to = -16;
y_to = 7-32*z;

x = x_to;
y = y_to;

//Shake Vars:
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;

//Enable the use of views
view_enabled = true;

//Make view 0 visible
view_set_visible(target_view, true);

//Set the port bounds of view 0 to 640x480
view_set_wport(target_view, ideal_width);
view_set_hport(target_view, ideal_height);

//Build a camera at (0,0), with size 640x480, 0 degrees of angle, no target instance, instant-jupming hspeed and vspeed, with a 32 pixel border
camera = camera_create_view(x, y, width+32, height+32*z, 0, -1, -1, -1, 0, 0);

//Set view0 to use the camera "camera"
view_set_camera(target_view, camera);


alarm[0] = 1;
