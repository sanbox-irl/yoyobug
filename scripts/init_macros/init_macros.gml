//Macros
#macro	up			90
#macro	right		0
#macro	left		180
#macro	down		270
#macro RIGHT		0
#macro UP			90
#macro LEFT			180
#macro DOWN			270
#macro tile_width	32
#macro TILE_WIDTH	32

///Terminal Tower Macros
#macro	TOWER_X		0
#macro	TOWER_Y		1
#macro	TERMINAL_X	2
#macro	TERMINAL_Y	3
#macro	RANDOM_NO	4
#macro	TOWER_COLOR	5
#macro	TERM_DIREC	6
#macro	X_ARRAY     0
#macro	Y_ARRAY		1

#macro PASS_VAR		0
#macro DRAW_VAR		1
#macro BOOL_VAR		2
#macro POWERUP_VAR	3

#macro RIGHT_ARRAY	0
#macro UP_ARRAY		1
#macro LEFT_ARRAY	2
#macro DOWN_ARRAY	3

#macro HARD_LIGHT  0
#macro SOFT_LIGHT  1

#macro HALF_WIDTH TILE_WIDTH/2

//Grid Enums
enum grid_name	{
	free = -4,
	player = 0,
	wall = 1,
	enemy = 2,
	tower = 3,
	terminal = 4,
	solid_obj = 5,
	door = -1
}



//Grid Macros
#macro FREE			grid_name.free
#macro WALL			grid_name.wall
#macro PLAYER		grid_name.player
#macro ENEMY		grid_name.enemy
#macro TOWER		grid_name.solid_obj
#macro TERMINAL     grid_name.terminal
#macro SPAWNER		grid_name.solid_obj
#macro DOOR			grid_name.door


///ENUMS:
enum ext_tiles	{
	first_top = 1,
	last_top = 7,
	bottom_wall = ext_tiles.last_top + 1,
	right_wall = ext_tiles.last_top + 2,
	right_shoulder = ext_tiles.last_top + 3,
	right_bottom_shoulder = ext_tiles.last_top+4
}

enum grid_val {
	ext_walls = 0,
	none = 1,
	wall = 2
}