//Old Stuff
image_speed = 0;
color = 0;
scale = 1;

//New
tower_height=1;
end_draw = false;
timer = 0
draw_timer = 0;

//Booleans
find_your_terminal	= true;
make_a_floor_mat	= true;
tower_locked		= false;
terminal_inst		= noone;

electrified = false;

state_machine_init();
state_create("Init_Draw",state_pillar_init);
state_create("Standard_Draw",state_pillar_standard_draw);
state_create("End_Draw",state_pillar_end_draw);
state_init("Init_Draw");

