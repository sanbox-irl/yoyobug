draw_self();

var height = tile_width/2;
var width = tile_width/8;

var _x = x+68;
var _y = y+24;

//Background
draw_rectangle_ocolor(_x,_y,_x+width,_y+height,c_black,true);
draw_rectangle_ocolor(_x-1,_y-1,_x+width,_y+height,c_white,true);

draw_rectangle_ocolor(_x,_y - (height*(1-percent_time)) + height,_x+width,_y+height,c_red,false);

