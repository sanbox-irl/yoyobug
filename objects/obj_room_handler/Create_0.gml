state_machine_init();
state_create("Idle",state_room_handler_idle);
state_create("Begin the Move",state_room_handler_move);
state_create("Transition",state_room_handler_update);
state_create("Cleanup",state_room_handler_cleanup);
state_init("Idle");


begin_update = false;
begin_recycle = false;
global.update_room = false;
recycle_rooms = false;
created_list = ds_list_create();
recycle_list = ds_list_create();



//Make Our Game Grid and Load it.
var _w = global.current_room[? "hcells"];
var _h = global.current_room[? "vcells"];
global.game_grid = ds_grid_create(_w,_h);

//Make all the Non-Actors in ALL the Rooms:
room_creation_populate_rooms_scenery();

//ADD TILES TO GAME GRID
tiles_to_grid(_w,_h);
_w*=TILE_WIDTH;
_h*=TILE_WIDTH;
grid_creation_add_obj(_w,_h,obj_solid,WALL);
grid_creation_add_obj(_w,_h,obj_door,DOOR);


//Let's Make one Robot:
var _x = global.ox + TILE_WIDTH*4;
var _y = global.oy + TILE_WIDTH*3;

instance_create_layer(_x,_y,"Instances",obj_robot);


past_sprite = 0;