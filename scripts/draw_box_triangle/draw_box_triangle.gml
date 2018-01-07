///@func draw_box_triange (x,y,x2,y2,tri_left_x, tri_left_y,tri_right_x, tri_right_y,tri_top_x,tri_top_y);
///@param x
///@param y
///@param x2
///@param y2
///@param tri_left_x
///@param tri_left_y
///@param tri_right_x
///@param tri_right_y
///@param tri_top_x
///@param tri_top_y

#region Arg to Var defs
var _x	= argument0;
var _y	= argument1;
var _x2	= argument2;
var _y2	= argument3;
var _tri_l_x	= argument4;
var _tri_l_y	= argument5;

var _tri_r_x	= argument6;
var _tri_r_y	= argument7;

var _tri_t_x	= argument8;
var _tri_t_y	= argument9;
#endregion
var _c = draw_get_color();
var _a = draw_get_alpha();

//The box Itself;
draw_line_width_spr(_x,_y,_x2,_y,1,_c,_a); // Top
draw_line_width_spr(_x,_y,_x,_y2,1,_c,_a); // Left
draw_line_width_spr(_x,_y2,_x2,_y2,1,_c,_a); //Right
draw_line_width_spr(_x2,_y,_x2,_y2,1,_c,_a); //Bottom

//The Triangle:
draw_line_width_spr(_tri_l_x,_tri_l_y,_tri_t_x,_tri_t_y,1,_c,_a); //Left to Top;
draw_line_width_spr(_tri_r_x,_tri_r_y,_tri_t_x,_tri_t_y,1,_c,_a); //Right to Top;
draw_line_width_spr(_tri_l_x,_tri_l_y,_tri_r_x,_tri_r_y,1,_c,_a); //Bottom Line;