//Variables
var _returnable = "";
var _fscreen = window_get_fullscreen();

//Toggle
global.fullscreen = !global.fullscreen;

//Actually Change the Screen
if _fscreen	{
	if global.fullscreen == true	{
		if global.dev_mode {
			_returnable = "ERROR: Already in Fullscreen? This shouldn't happen.";
		} else	{
			_returnable = "Action Failed. Please contact sanboxrunner@sanboxstudios.com to report bug.";	
		}
	} if global.fullscreen == false	{
	window_set_fullscreen(true);
	_returnable = "Fullscreen set.";
	}
	
} else if not _fscreen	{
	if global.fullscreen == true	{
		window_set_fullscreen(true);
		_returnable = "Fullscreen set.";
	} else if global.fullscreen == false	{
		if global.dev_mode {
			_returnable = "ERROR: Not in fullscreen and it's trying to switch to FScreen?";
		} else	{
			_returnable = "Action Failed. Please contact sanboxrunner@sanboxstudios.com to report bug.";	
		}
	}
}
run = false;
return _returnable;
