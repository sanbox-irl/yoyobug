//Figure out Scaling
var xscale = view_wport[0]/obj_camera.width;
var yscale = view_hport[0]/obj_camera.height;

var _term_x		=	term_x*		xscale;
var _term_y		=	term_y*		yscale;
var _start_x	=	start_x *	xscale;
var _start_y	=	start_y *	yscale;
var _line_height=	line_height*yscale;
var _line_length = string_width(user_input);
var _letter_length = string_width("a")*1.5;


draw_set_color(c_lime);
draw_set_font(fnt_debug);
draw_text(_term_x + _start_x,_term_y+_start_y,">" + user_input); //Draws the wrods
draw_text(_term_x + _start_x, _term_y + _start_y + _line_height, display_string); //Draws the past command.
draw_text_ext(_term_x + _start_x, _term_y+ _start_y + _line_height * 2, command_result,-1,term_width*xscale-_start_x*1.5); //Draws the result.


if counter mod 60 = 0	{
	flick_cursor*=-1;
	counter = 0;
}

if (flick_cursor == 1)	{
draw_rectangle(_term_x + _start_x + _line_length + _letter_length,_term_y+_start_y,
				_term_x + _start_x + _line_length + _letter_length+10,_term_y+_start_y+15, false);
}