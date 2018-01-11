if !view_enabled	{
	view_enabled = true;
	view_set_visible(0,true);

	view_set_wport(0,ideal_width);
	view_set_hport(0,ideal_height);
}


debug_message(string("started room ") + string(room));
