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

draw_sprite(sprite_index,image_index,x,y);

var modulate = floor(image_index) mod 2;
draw_sprite(spr_knight_down,0,x,y + (modulate));
