///@func room_to_grid (coord,max_check);
///@param coord
///@param max_check
/* Max Check is how large your gamegrid is.*/
var coord	= argument0;
var max_param = argument1;

if coord < TILE_WIDTH	{	
	debug_message("ERROR: SMALLER THAN GAME GRID");
	return 0;
}

coord = ((coord - TILE_WIDTH) div TILE_WIDTH);

if coord > (max_param-1)	{
	debug_message("ERROR: BIGGER THAN GAME GRID");
	return 0;
}

return coord;
