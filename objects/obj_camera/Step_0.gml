x += (x_to - x)/25;
y += (y_to - y)/25;



x+=(irandom_range(-shake_remain,shake_remain));
y+=(irandom_range(-shake_remain,shake_remain));

shake_remain = max(0,shake_remain-((1/shake_length*global.dt)*shake_magnitude))


var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);

camera_set_view_mat(camera,vm);

view_camera[0] = camera;
