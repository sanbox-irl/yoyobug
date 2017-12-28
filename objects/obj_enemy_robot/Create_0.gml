///Create the path
event_inherited();
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

