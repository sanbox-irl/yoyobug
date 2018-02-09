///@func experimental_move(dir_ang);
///@param dir

var dir_ang = argument[0];

//Clear the Last Direction of the Enemy Robots--Am I even using this anymore?
with (obj_enemy_robot)	{
	last_dir = noone;
}

//In the Robot Itself -- Check for a collision;
with (obj_robot)	{
	if to_be_destroyed == false	{
		var xp = room_coord[X_ARRAY],
			yp = room_coord[Y_ARRAY],
			x_move	= xp + lengthdir_x(1,dir_ang),
			y_move	= yp + lengthdir_y(1,dir_ang);


		var col = (global.game_grid[# x_move, y_move] > ENEMY)

		if col == false	{
			x_to = global.ox + x_move*TILE_WIDTH;
			y_to = global.oy + y_move*TILE_WIDTH;
			reset_coords = false;
		}
		move_dir		= dir_ang;
	}
}