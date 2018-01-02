//Movement Variables
event_inherited();

state_machine_init();
state_create("Init_Draw",state_robot_init_draw);
state_create("Standard_Draw",state_robot_standard_draw);
state_create("End_Draw",state_robot_end_draw);
state_init("Init_Draw");
//Gloabl 
image_speed = 0.5;

//Init_Draw Variables
x_to = x;
y_to = y;


calling_circle = 0;
move_dir = choose(up,down,left,right);
