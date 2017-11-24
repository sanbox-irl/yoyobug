nineslice(spr_interior_input,term_x,term_y,term_x+term_width,term_y+term_height);
var apple_gray = make_color_rgb(142,142,145)

draw_set_color(apple_gray);
draw_roundrect_ext(term_x,term_y-term_height/15,term_x+term_width,term_y,5,5,false);
draw_rectangle(term_x,term_y,term_x+term_width-1,term_y-5,false);

//Drawing Text
draw_set_color(c_lime);
draw_set_font(fnt_debug);
draw_text(term_x + 10,term_y+10,user_input)