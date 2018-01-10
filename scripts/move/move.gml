var dir_ang = argument[0];
var magnitude = argument[1];
if magnitude = "-2" magnitude = 0;
var _returnable = "";

if magnitude > 1	{
	for (var i = 0; i < instance_number(obj_enemy_robot); ++i) {
	    var _enem_inst = instance_find(obj_enemy_robot,i);
		if instance_exists(_enem_inst)	{
			_enem_inst.last_dir = noone;	
		}
	}	
}


if !(dir_ang == "")	{
var _len = tile_width;
var robots_number = instance_number(obj_robot)
var robot = 0;

for (var i = 0; i < robots_number; ++i) {
	robot[i]		= instance_find(obj_robot,i);
	if robot[i].to_be_destroyed == false	{
	var		x_move	= lengthdir_x(_len,dir_ang);
	var		y_move	= lengthdir_y(_len,dir_ang);

	for (var j = 1; j < (real(magnitude)+1); ++j) {
		if !	(	instance_place(	robot[i].x+x_move*j,robot[i].y+y_move*j,obj_solid)	){
			robot[i].x_to = robot[i].x+x_move*j;
			robot[i].y_to = robot[i].y+y_move*j;
		} else break;
	}
	robot[i].move_dir		= dir_ang;
	robot[i].move_magnitude = real(magnitude);
	}
}

_returnable = "Droid position altered." 
}	else {
	_returnable = "ERROR\nInvalid Direction Parameter.\nLegal:-right;-left;-up;-down;"
	}

run = false;
if real(magnitude) > 1	{
	global.energy--;	
}

return _returnable;