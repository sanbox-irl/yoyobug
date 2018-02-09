for (var i=0; i < width; i++) { 
    for (var k=0; k < height; k++) { 
        var _map = global.room_grid[# i,k];
		var _size = _map[? "size"];
		
        switch (_size) {
            case "small":
                var _array = small_rooms;
                break;
            
            case "normal":
                var _array = normal_rooms;
                break;
            case "big":
                var _array = big_rooms;
                break;
            default:
                debug_message("Something went wrong. No map, or map set to invalid size.");
                break;
        }
        var _number = irandom_range(0, (array_length_1d(_array)-1))
        var _chunk = _array[0];
        var _string = "";

        if ds_grid_height(_chunk) > 1   {
            debug_message("This grid is taller than 1. Everything is messed up. You messed up.")
            debug_message(ds_grid_height(_chunk));
        }

        var _for_length = ds_grid_width(_chunk);

        for (var j=0; j<_for_length; j++) { 
            var _input = _chunk[# j,0]
            switch (_input) {
                case "0":
                    _string = concat(_string,string(grid_val.ext_walls));
                    break;
                
                case "":
                    _string = concat(_string,string(grid_val.none));
                    break;
                
                case "1":
                    if chance(0.5) {
                        _string = concat(_string,string(grid_val.none));
                    } else {
                        _string = concat(_string,string(grid_val.wall));
                    }
            }
        }

        _map[? "string"] = _string;
        debug_message(_string);
    }
}