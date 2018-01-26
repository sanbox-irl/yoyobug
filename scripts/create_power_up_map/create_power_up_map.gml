/* 
This script runs in the Init_Global object. 

The goal of this script is to create a map of scripts, which the input_text 
*/

#macro STEP_ENUM	0
#macro DRAW_ENUM	1

enum POWERUP_ENUM	{
	KNIGHT	= 0,
	KING    = 1
}

global.powerup_grid = ds_grid_create(2,25);

//Knight
ds_grid_add(global.powerup_grid,STEP_ENUM,POWERUP_ENUM.KNIGHT,powerup_knight_step);
ds_grid_add(global.powerup_grid,DRAW_ENUM,POWERUP_ENUM.KNIGHT,powerup_knight_draw);

//King
global.powerup_grid[# STEP_ENUM,POWERUP_ENUM.KING] =	powerup_king_step;
global.powerup_grid[# DRAW_ENUM,POWERUP_ENUM.KING] =	powerup_king_draw;