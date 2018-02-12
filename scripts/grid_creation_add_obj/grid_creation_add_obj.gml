///@func grid_creation_add_obj(w,h);
///@param w
///@param h
///@param obj_to_check
///@param grid_name


var _w = argument0;
var _h = argument1;
var _check = argument2;
var _gname = argument3;

for (var i=0; i < _w; i++) { 
    for (var k = 0; k<_h; k++) { 
        if instance_place(global.ox + i*TILE_WIDTH, global.oy + k*TILE_WIDTH,_check)  {
            global.game_grid[# i,k] = _gname;
        }
    }
}
