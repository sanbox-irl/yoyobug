//counter+=global.dt;

//if counter > 120	{
//	terminal.command_result = string("Build complete. Unit located at Coord. (" + string(x/tile_width) + string(", ") + string(y/tile_width) + string(")"));
//	instance_destroy(id);
//	var new_robot = instance_create_layer(x,y,"Instances",obj_robot);
//	new_robot.move_dir = choose(right,up,left,down);
//} else terminal.command_result = "Building unit...Standby."


counter+=global.dt;

small_number+=2*global.dt;

if (radius-small_number <= 0)	{
	screen_shake(1,1);
	incrementer+=5;
	small_number = incrementer;
}

if incrementer > radius	{
	if instance_exists(obj_tower_controller_parent)	{
		with (obj_tower_controller_parent)	{
			state_var[0] = true;	
		}
	}
}