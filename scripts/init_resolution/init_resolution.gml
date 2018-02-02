/// @description scr_initResolution initializes display properties.
var display_width = display_get_width();
var display_height = display_get_height();

 
// set base ideal width/height
ideal_width = 0; //360;
ideal_height = 640;
 
zoom = 1;
 
// calculate display aspect ratio
aspect_ratio = display_width/display_height;
aspect_ratio = clamp(aspect_ratio, 16/10, 21/9); // clamps aspect ratio of the game overall.
 
 
ideal_width = round(ideal_height*aspect_ratio);
 
// PIXEL PERFECT SCALING
 
if (display_width mod ideal_width != 0)	{
    var _d = round(display_width/ideal_width);
    ideal_width= display_width/_d;
}
 
if (display_height mod ideal_height != 0)	{
    var _d = round(display_height/ideal_height);
    ideal_height = display_height/_d;
}
 
 
// ELIMINATE ODD NUMBERED WIDTH AND HEIGHT VALUES
if (ideal_width & 1)	{
    ideal_width++;
}
 
if (ideal_height & 1)	{
    ideal_height++;
}
 
// store maximum zoom value for windowed mode.
max_zoom = floor(display_width/ideal_width);
 
// resize application surface
surface_resize(application_surface, ideal_width, ideal_height);
window_set_size(ideal_width, ideal_height);


alarm[0] = 1;