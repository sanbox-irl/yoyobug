///Base Circle Variables
var x_place	= x+tile_width/2;
var	y_place = y+tile_width/2;

//Base Circle Radius
var rad = timer/30;
rad = clamp(rad, 0, 1);
if rad == 1	{
	rad = wave(0.9,1.1,0.5,0);
}
rad*= tile_width/2;

draw_circle_color(x_place, y_place,rad,color,color,false);

//White Circles that Get Small and Stuff
var rad2 = small_timer/15;
rad2*=(tile_width/2);
draw_circle_color(x_place,y_place, rad2,c_white,c_white,true);