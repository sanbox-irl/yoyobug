state_execute();


if keyboard_check_pressed(ord("J"))	{
	global.current_room[? "left_door"].electrified = false;
	global.current_room[? "right_door"].electrified = false;
	global.current_room[? "top_door"].electrified = false;
	global.current_room[? "bottom_door"].electrified = false;
}