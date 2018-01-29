///@param id
if global.dev_mode == false	{
	exit;	
}

var _id = argument0;

switch (_id) {
    case FREE:
		_id = "FREE";
		draw_set_color(c_white);
        break;
    case WALL:
        _id = "WALL";
		draw_set_color(c_red);
        break;
	case PLAYER:
		_id = "Player";
		draw_set_color(c_lime);
		break;
	case ENEMY:
		_id = "Enemy";
		draw_set_color(global.purple1);
		break;
	case TERMINAL:
		_id = "Terminal";
		draw_set_color(c_yellow);
		break;
	case TOWER:
		_id = "Tower";
		draw_set_color(c_yellow);
		break;
}

return _id;