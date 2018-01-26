var dir = argument[0];
var returnable = "Attacking..."

var attack_x = lengthdir_x(tile_width,dir);
var attack_y = lengthdir_y(tile_width,dir);

var robot_number = instance_number(obj_robot);
var robot = 0;

for (var i = 0; i < robot_number; ++i) {
    robot[i] = instance_find(obj_robot,i);
	robot[i].attack_end_x = robot[i].x + attack_x;
	robot[i].attack_end_y = robot[i].y + attack_y;
	robot[i].attack_dir = dir;
	//missile[i] = instance_create_layer(robot[i].attack_end_x,robot[i].attack_end_y,"Instances",obj_missile);
}

run=false;
return returnable;