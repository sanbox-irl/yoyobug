//Move the guys!
if global.enter		{
	dir = find_object();
	if dir == false	{
		target = instance_nearest(x,y,obj_robot);
		dir = find_object();
	}
	
switch (dir) {
    case up:
        sprite_index = spr_enemy_bot_up;
        break;
    case left:
        sprite_index = spr_enemy_bot_left;
        break;
	case right:
		sprite_index = spr_enemy_bot_right;
		break;
	case down:
		sprite_index = spr_enemy_bot_down;
		break;
}
}

x = lerp(x,x_to,0.2);
y = lerp(y,y_to,0.2);


