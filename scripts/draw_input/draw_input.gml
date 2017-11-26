//Figure out Scaling
var xscale = view_wport[0]/480;
var yscale = view_hport[0]/270;

var _term_x		=	term_x*		xscale;
var _term_y		=	term_y*		yscale;
var _start_x	=	start_x ;
var _start_y	=	start_y ;
var _line_height=	line_height*yscale;


draw_set_color(c_lime);
draw_set_font(fnt_debug);
draw_text(_term_x + _start_x,_term_y+_start_y,">" + user_input);
draw_text(_term_x + _start_x, _term_y + _start_y + _line_height, command_string);
draw_text_ext(_term_x + _start_x, _term_y+ _start_y + _line_height * 2, command_result,-1,term_width*xscale);


show_debug_message(string("Untouched Start " + string(start_x)));
show_debug_message(string("Local start" + string(_start_x)));

