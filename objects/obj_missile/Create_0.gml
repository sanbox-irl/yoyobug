dir = degtorad(obj_robot.move_dir);
timer = 0;

start_x = x;
start_y = y;

target_x = x + 2*tile_width*cos(dir);
target_y = y - 2*tile_width*sin(dir);