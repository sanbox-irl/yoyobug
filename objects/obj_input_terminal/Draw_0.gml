nineslice(spr_interior_input,term_x,term_y,term_x+term_width,term_y+term_height);
var apple_gray = make_color_rgb(142,142,145)

draw_set_color(apple_gray);
draw_roundrect_ext(term_x-1,term_y-term_height/15,term_x+term_width-1,term_y,5,5,false);
draw_rectangle(term_x,term_y,term_x+term_width-1,term_y-5,false);

//Drawing Text

draw_set_color(c_lime);
draw_set_font(fnt_timer);


draw_text_color(term_x+term_width-string_width(check_how_left)-10,term_y+term_height-string_height(check_how_left)-5,check_how_left,timer_color,timer_color,timer_color,timer_color,1);
