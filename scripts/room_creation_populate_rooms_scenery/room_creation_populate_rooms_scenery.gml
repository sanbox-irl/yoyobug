for (var o = 0; o < global.rooms_width; ++o) {  
    for (var p = 0; p < global.rooms_height; ++p) { 
        var _map = global.room_grid[# o,p];
		var _string = _map[? "string"],
		_l   = string_length(_string);
		
		var _xo = _map[? "x_origin"];
        var _yo = _map[? "y_origin"];
        var _hc = _map[? "hcells"];
        var _r = "0";
        
        var i = 0;
        var k = 0;
        for (var j=0; j<_l; ++j) {
            //Figure What we're loading.
			var _string = _map[? "string"];
			
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

            if object_is_ancestor(_obj,obj_solid)	{
                var _inst = instance_create_layer(_x,_y,"Instances",_obj);
				_map[? "string"] = string_replace(_string,_a,"0");
            }
            i++;
            if i == _hc  {
                i = 0;
                k++;
            }
        }
		ds_grid_clear(global.game_grid,FREE);
    }
}

