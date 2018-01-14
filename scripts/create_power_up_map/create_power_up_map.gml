/* 
This script runs in the Init_Global object. 

The goal of this script is to create a map of scripts, which the input_text 
*/
global.powerup_map = ds_map_create();
enum POWERUP_ENUM	{
	KNIGHT	= 0
}

ds_map_add(global.powerup_map,POWERUP_ENUM.KNIGHT,make_powerup_knight);