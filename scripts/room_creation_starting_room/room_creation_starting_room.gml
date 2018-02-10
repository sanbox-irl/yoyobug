//Find Our Starting Room:
repeat (100) {
    var _numb = irandom_range(0,width-1);
    var _map = global.room_grid[# _numb,height-1];
    if _map[? "critical"] == true {
        global.gx = _numb;
        global.gy = height-1;
        global.current_room = global.room_grid[# global.gx, global.gy];
		global.ox = global.current_room[? "x_origin"];
		global.oy = global.current_room[? "y_origin"];
        break;
    }
}

//Then Make our Standard Game Grid:
global.game_grid = ds_grid_create(global.current_room[? "hcells"], global.current_room[? "vcells"]);
room_creation_load_strings(global.current_room);

//Let's Make one Robot:
var _x = global.ox + TILE_WIDTH*4;
var _y = global.oy + TILE_WIDTH*3;

instance_create_layer(_x,_y,"Instances",obj_robot);

