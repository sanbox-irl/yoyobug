state_execute();


switch (move_dir) {
    case up:
        sprite_index = spr_robot_up;
        break;
    case left:
        sprite_index = spr_robot_left;
        break;
	case right:
		sprite_index = spr_robot_right;
		break;
	default:
		sprite_index = spr_robot_down;
		break;
}
