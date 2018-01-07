///@function draw_line_width_spr(x, y, x2, y2, width, color, alpha);
///@param x
///@param y
///@param x2
///@param y2
///@param width
///@param color
///@param alpha

var _x	= argument0;
var _y	= argument1;
var _x2	= argument2;
var _y2 = argument3;
var _width = (argument4)/2;
var _color = argument5;
var _alpha = argument6;

var _an = point_direction(_x, _y, _x2,_y2);
var _dist = point_distance(_x, _y, _x2,_y2);

draw_sprite_ext(spr_onepixel,0,_x,_y,_dist,_width,_an,_color,_alpha);
