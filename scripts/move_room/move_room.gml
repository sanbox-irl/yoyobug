///@func move_room(direction);
///@param direction

var dir = degtorad(argument0);
var oldx = global.gx;
var oldy = global.gy;


global.gx+= 1*cos(dir);
global.gy-= 1*sin(dir);

global.gx = clamp(global.gx, 0, global.rooms_width-1);
global.gy = clamp(global.gy, 0, global.rooms_height-1);

if point_distance(oldx,oldy,global.gx,global.gy) == 0  {
    exit;
}

if instance_exists(obj_room_handler)    {
    with (obj_room_handler) {
        begin_update = true;
    }
} else  {
    debug_message("Room Handler Missing--Exiting");
    game_end();
}