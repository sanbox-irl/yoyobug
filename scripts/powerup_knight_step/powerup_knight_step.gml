//Normal Move State;
state_robot_standard_draw();

//Knight Specific Code:
var _dir = move_dir;

if (state_var[0]	== true ) {
	var spear = instance_create_layer(x,y,"Instances",obj_missile);
	state_var[0] = false;
}
