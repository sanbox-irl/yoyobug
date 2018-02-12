///@func load_string (map)
///@param map/grid_to_load

var _map = argument0;
var _string = _map[? "string"];
var _l = string_length(_string);

var _xo = _map[? "x_origin"];
var _yo = _map[? "y_origin"];
var _hc = _map[? "hcells"];


var i = 0;
var k = 0;
for (var j=0; j<_l; ++j) {
//Now Figure Out WHAT We're Loading:
    var _a = string_char_at(_string,j);
    var _obj = noone;

    switch (_a) {
        case ("0"):
            break;
        
        case ("1"):
            break;
        
        case ("2"):
            _obj = obj_walls;
            break;
    }

    var _x = _xo + i*TILE_WIDTH;
    var _y = _yo + k*TILE_WIDTH;

    if _obj!=noone{
        var _inst = instance_create_layer(_x,_y,"Instances",_obj);
		ds_list_add(created_list,_inst);
    }
	i++;
    if i == _hc  {
        i = 0;
        k++;
    }
}