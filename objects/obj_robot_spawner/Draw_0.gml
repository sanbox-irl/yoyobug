///Base Circle Variables
var x_place	= x+tile_width/2;
var	y_place = y+tile_width/2;
var _rad = rad*final_rad;

//Base Circle Radius
draw_circle_color(x_place, y_place,_rad,color,color,false);

//White Circles that Get Small and Stuff
if draw_small_circle	{
	var rad2 = small_timer/15;
	rad2*=(tile_width/2);
	draw_circle_color(x_place,y_place, rad2,c_white,c_white,true);
}