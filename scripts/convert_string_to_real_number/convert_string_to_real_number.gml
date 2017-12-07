//param string_to_convert
var _string_to_convert = argument0;
var _returnable = string_digits(_string_to_convert);



if _returnable == ""	{
	switch (_string_to_convert) {
	    case "zero":
	        _returnable = 0;
	        break;
	    case "one":
	        _returnable = 1;
	        break;
		case "two":
			_returnable = 2;
			break;
		case "three":
			_returnable = 3;
			break;
		case "four":
			_returnable = 4;
			break;
		case "five":
			_returnable = 5;
			break;
		case "six":
			_returnable = 6;
			break;
		case "seven":
			_returnable = 7;
			break;
		case "eight":
			_returnable =8;
			break;
		case "nine":
			_returnable =9;
			break;
		case "ten":
			_returnable =10;
			break;
		case "eleven":
			_returnable = 11;
			break;
		case "twelve":
			_returnable = 12;
			break;
		case "thirteen":
			_returnable = 13;
			break;
		case "fourteen":
			_returnable =14;
			break;
		case "fifteen":
			_returnable=15;
			break;
		case "sixteen":
			_returnable = 16;
			break;
		case "seventeen":
			_returnable = 17;
			break;
		case "eighteen":
			_returnable = 18;
			break;
		default:
			_returnable = "-2";
	}
}
if _returnable > 20		{
	_returnable = "-2"	
}

return _returnable;




