//Knight Specific Code:
var _dir = move_dir;

if (state_var[0]	== true ) {
	var spear = instance_create_layer(x+abs(16*sin(move_dir)),y+abs(cos(move_dir)*16),"Instances",obj_missile);
	spear.image_angle = move_dir;
	state_var[0] = false;
}