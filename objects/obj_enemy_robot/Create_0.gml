///Create the path
event_inherited();

state_machine_init();
state_create("Init_Draw",state_enemy_init_draw);
state_create("Standard_Draw",state_enemy_standard_draw);
state_create("End_Draw",state_enemy_end_draw);
state_init("Init_Draw");


target = instance_nearest(x,y,obj_robot);

x_pos = 0;
y_pos= 0;

x = floor(x);
y = floor(y);


x_to = x;
y_to =y;

dir = down;
spr = spr_enemy_bot_down;

_target_place = array_create(2,0);

last_dir = noone;

path = path_add();
path_set_kind(path,0);
path_set_precision(path,8);
