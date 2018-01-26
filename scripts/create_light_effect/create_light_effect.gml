///func (x,y,radius,type,intensity,color,wave_magnitude,once);
///@param x
///@param y
///@param radius
///@param type
///@param intensity
///@param color
///@param wave_magnitude

if !layer_exists("Effects_Instance")	{
	debug_message("Layer Does not Exist");
	return;
}

var _x, _y, _radius, _type,_intensity,_color,_wave,_magnitude,_once;

_x			= argument0;
_y			= argument1;
_radius		= argument2;
_type		= argument3;
_intensity	= argument4;
_color		= argument5;
_wave		= argument6;

var light = instance_create_layer(_x,_y,"Effects_Instance",obj_generic_light);

light.radius	= _radius;
light.temp_type = _type;
light.temp_alpha = _intensity;
light.temp_color = _color;
light.move_magnitude = _wave;