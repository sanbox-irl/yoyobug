init_resolution();


camera = camera_create();


x_to = room_width/2;
y_to = room_height/2+7;

x=x_to;
y=y_to;

width = 640;
height = 360;

var vm = matrix_build_lookat(x_to,y_to,-1,x_to,y_to,0,0,1,0);
var pm = matrix_build_projection_ortho(width,height,1,10000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;


