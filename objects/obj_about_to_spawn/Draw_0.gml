var origin_x = x+sprite_width/2;
var origin_y = y+sprite_height/2;


draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,color,1);

draw_set_circle_precision(16)
draw_circle_color(origin_x,origin_y,radius-small_number,c_white,c_white,true);