var dir = argument0;
var dir_ang = 0;

switch (dir) {
    case "right":
        dir_ang = 0;
        break;
    case "left":
        dir_ang = 180;
        break;
	case "up":
		dir_ang = 90;
		break;
	case "down":
		dir_ang = 270;
		break;
}

var robots_number = instance_number(obj_robot)
var robot = 0;

for (var i = 0; i < robots_number; ++i) {
    robot[i] = instance_find(obj_robot,i);
	robot[i].x_to += lengthdir_x(tile_width,dir_ang);
	robot[i].y_to += lengthdir_y(tile_width,dir_ang);
	robot[i].move_dir = dir_ang;
}


run = false;
