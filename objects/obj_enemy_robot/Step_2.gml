if state_name = "Standard_Draw"	{
	var after_place = 0;
	after_place[X_ARRAY] = x;
	after_place[Y_ARRAY] = y;

	var dir = point_direction(place[X_ARRAY],place[Y_ARRAY],after_place[X_ARRAY],after_place[Y_ARRAY]);

	switch (dir) {
	    case 90:
	        spr = spr_enemy_bot_up;
	        break;
	    case 180:
	        spr = spr_enemy_bot_left;
	        break;
		case 0:
			spr = spr_enemy_bot_right;
			break;
		case 270:
			spr = spr_enemy_bot_down;
			break;
	}

	sprite_index = spr;
}
state_update();