camera = camera_create();
x = room_width/2;
y=room_height/2 + 7;

width = 640;
height = 360;

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(width,height,1.0,100000.0);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;
