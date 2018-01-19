///@func ("x_or_y",grid_coord);
///@param "x_or_y"
///@param grid_coord

var _coordinate = argument1;
var _type = argument0;

_type = _type == "x" ? 1 : 2;	//If _type is x, then 1, else 2;

var returnable = (_coordinate)*TILE_WIDTH + TILE_WIDTH;

return returnable;


