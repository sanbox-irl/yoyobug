init_terminal_location();
init_input();

state_timer = 0;
draw_time_rectangle = false;


//Shader Stuff
_uni_color = shader_get_uniform(sh_recolor,"u_color");
_color = [1.0,0.3,0.3,1]; /// Red;
temp_alpha = 0;
previous_energy = 0;
make_red = false;

toggle = false;
