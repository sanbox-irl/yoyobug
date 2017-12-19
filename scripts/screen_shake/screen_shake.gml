///@param magnitude_in_pixel
///@param length_at_60


var _mag	= argument0;
var _length	= argument1;


with (obj_camera)	{
	if _mag > shake_remain	{
		shake_magnitude = _mag;
		shake_remain = _mag;
		shake_length = _length
	}
}