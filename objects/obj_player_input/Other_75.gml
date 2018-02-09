debug_message("Event = " + async_load[? "event_type"]);        // Debug cocde so you can see which event has been
debug_message("Pad = " + string(async_load[? "pad_index"]));   // triggered and the pad associated with it.

switch(async_load[? "event_type"])			{
case "gamepad discovered":                   
    pad = async_load[? "pad_index"];       
    gamepad_set_button_threshold(pad, 0.1);   
	if !(state_name == "Controller_Input")	{
		state_switch("Controller_Input",0);
	}
    break;
case "gamepad lost":                           // Gamepad has been removed or otherwise disabled
    pad = async_load[? "pad_index"];       
	if !(state_name == "Keyboard_Input")	{
		state_switch("Keyboard_Input",0);	
	}
    break;
}