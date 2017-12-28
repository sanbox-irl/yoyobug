var start_x = 300;
var start_y = 300;
var end_x = 500;
var end_y = 500;

var _dir = point_direction(start_x,start_y,end_x,end_y);

part_particles_create(global.part_sys_terminal_appears,start_x,start_y,global.dirt_type,5);