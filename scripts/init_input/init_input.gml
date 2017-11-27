user_input = "";
display_string="";
command_string = "";
run = false;
command_result = "";

start_x = 10;
start_y = 10;
draw_set_font(fnt_debug);
line_height = string_height(">");


count_to_clear = 60;

random_execution_grid = ds_grid_create(1000,1000)
distribution_stack = ds_stack_create()

