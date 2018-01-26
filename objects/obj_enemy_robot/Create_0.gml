///Create the path
event_inherited();

state_machine_init();
state_create("Init_Draw",state_enemy_init_draw);
state_create("Standard_Draw",state_enemy_standard_draw);
state_create("End_Draw",state_enemy_end_draw);
state_init("Init_Draw");

//Direction Variables
target = instance_nearest(x,y,obj_robot);
spr = spr_enemy_bot_down;
_target_place = array_create(2,0);

//Path Variables
path = path_add();
path_set_kind(path,0);
path_set_precision(path,1);
place = array_create(2);

//KillTween
kill_tween = TweenCreate(id);

_uni_color	= shader_get_uniform(sh_recolor,"u_color");
_color		= [color_get_red(c_red)*0.5,color_get_green(c_red)*0.5,color_get_blue(c_red)*0.5,1.0];

can_make_energy = false