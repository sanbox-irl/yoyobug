var start_x = 300;
var start_y = 300;
var end_x = 500;
var end_y = 500;

var _dir = point_direction(start_x,start_y,end_x,end_y);


part_type_direction(global.dirt_type,_dir,_dir,0,0);
part_emitter_region(global.part_sys_terminal_appears,line_emitter,300,500,300,500,ps_shape_line,ps_distr_linear);
part_emitter_burst(global.part_sys_terminal_appears,line_emitter,global.dirt_type,50);