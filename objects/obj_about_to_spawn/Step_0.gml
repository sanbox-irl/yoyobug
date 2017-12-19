//counter+=global.dt;

//if counter > 120	{
//	terminal.command_result = string("Build complete. Unit located at Coord. (" + string(x/tile_width) + string(", ") + string(y/tile_width) + string(")"));
//	instance_destroy(id);
//	var new_robot = instance_create_layer(x,y,"Instances",obj_robot);
//	new_robot.move_dir = choose(right,up,left,down);
//} else terminal.command_result = "Building unit...Standby."


counter+=global.dt;

small_number+=1/2;

if (radius-small_number <= 0)	{
	screen_shake(1,1);
	incrementer+=5;
	small_number = incrementer;
}

if incrementer > radius	{
	ready_to_spawn_tower = true;
}