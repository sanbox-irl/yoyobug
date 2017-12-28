///@function round_to_cardinal_number(dir)
///@param non_cardinal_dir
var _orig_dir	= argument0;
var _dir;

if (_orig_dir mod 90 = 0) || (_orig_dir = 0)	{
	return _orig_dir;
}

if (_orig_dir < 45) || (_orig_dir > 315)		{
		_dir = right;	
		}	else	if (_orig_dir > 45) && (_orig_dir < 135)	{
		_dir = up;	
		}	else	if (_orig_dir > 135) && (_orig_dir < 225)	{
		_dir = left;
		}	else	if (_orig_dir > 225) && (_orig_dir < 315)	{
		_dir = down;	
		}

	switch (_orig_dir) {
	    case 45:
	       _dir = right;
	        break;
	    case 315:
	        _dir = right;
	        break;
		case 135:
			_dir = up;
			break;
		case 225:
			_dir = left;
			break;
	}
	
return _dir;