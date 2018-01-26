counter = 0;
can_countdown = false;
fade = 1;
begin_to_fade = false;

room_number = 1;

_uni_color	= shader_get_uniform(sh_recolor,"u_color");
_color		= [color_get_red(c_red)*0.2,color_get_green(c_red)*0.2,color_get_blue(c_red)*0.2,1.0];

counter = 0;
toggle_red = false;

game_over_screen_alpha = 0;
game_over = false;