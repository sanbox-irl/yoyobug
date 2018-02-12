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

