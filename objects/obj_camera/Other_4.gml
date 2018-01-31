view_enabled = true;

//Make view 0 visible
view_set_visible(target_view, true);

//scale for each room:
var xscale = room_width/640;
var yscale = room_height/352;


//Set the port bounds of view 0 to 640x480
view_set_wport(target_view, ideal_width*xscale);
view_set_hport(target_view, ideal_height*yscale);

//Set view0 to use the camera "camera"
view_set_camera(target_view, camera);

alarm[0] = 1;

// resize application surface
surface_resize(application_surface, ideal_width*xscale, ideal_height*yscale);
window_set_size(ideal_width*xscale, ideal_height*yscale);

