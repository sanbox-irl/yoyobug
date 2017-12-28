global.part_sys_terminal_appears	=   part_system_create_layer("Walls",true);
global.dirt_type					=	part_type_create();
part_type_sprite(global.dirt_type,spr_part_smoke,false,false,false);
part_type_size(global.dirt_type,0.5,1,0,0);
//purple1 = make_color_rgb(63,54,86);
//blue1	= make_color_rgb(66,91,121);
part_type_color1(global.dirt_type,c_white);
part_type_alpha2(global.dirt_type,1,1);
part_type_blend(global.dirt_type,true);
part_type_orientation(global.dirt_type,0,360,3,1,true);

part_type_life(global.dirt_type,5,20);
part_type_speed(global.dirt_type,5,20,-0.1,0);