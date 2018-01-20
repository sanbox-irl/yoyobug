//Movement Variables
event_inherited();

state_machine_init();
state_create("Init_Draw",state_robot_init_draw);
state_create("Standard_Draw",state_robot_standard_draw);
state_create("End_Draw",state_robot_end_draw);
state_init("Init_Draw");

//Global 
image_speed = 0.5;

//Init_Draw Variables
x_to = x;
y_to = y;


calling_circle = 0;
move_dir = choose(up,down,left,right);

//add yourself to the list
ds_list_add(global.orange_robots_list,id);

//execute powerup
powerup_script = "";
powerup_draw	= "";

powerup_sprite = spr_robot;

debug_message(concat("Robot Created: ID ",id));