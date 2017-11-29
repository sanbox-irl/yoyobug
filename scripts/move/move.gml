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

obj_robot.x += lengthdir_x(tile_width,dir_ang);
obj_robot.y += lengthdir_y(tile_width,dir_ang);

run = false;