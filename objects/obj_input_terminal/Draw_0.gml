nineslice(spr_interior_input,term_x,term_y,term_x+term_width,term_y+term_height);
var apple_gray = make_color_rgb(142,142,145)
var term_end_x = term_x + term_width;
var term_end_y = term_y + term_height


draw_set_color(apple_gray);
draw_roundrect_ext(term_x-1,term_y-term_height/15,term_x+term_width-1,term_y,5,5,false);
draw_rectangle(term_x,term_y,term_x+term_width-1,term_y-5,false);

//Vars for Drawing the Energy Counter:
var target_spr = spr_energy_pick_thumbnail;
var target_width = sprite_get_width(target_spr);
var target_height = sprite_get_height(target_spr);
var target_x = term_end_x - target_width - 10;
var target_y = term_end_y - target_height - 10;

var energy_level = string(global.energy);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_lime);
draw_set_font(fnt_debug);

//Drawing the Icons
draw_set_alpha(1);
	draw_text(target_x - target_width, target_y, energy_level);
	draw_sprite(target_spr,0,target_x,target_y);

draw_set_alpha(temp_alpha);
shader_set(sh_recolor);
	shader_set_uniform_f_array(_uni_color,_color);
	draw_text(target_x - target_width, target_y, energy_level);
	draw_sprite(target_spr,0,target_x,target_y);
shader_reset();

draw_set_alpha(1);


