//Deal With the Images:
past_room = global.current_room;
ph = global.current_room[? "hcells"];
pv = global.current_room[? "vcells"];
po = global.ox;
py = global.oy;

var camw = display_get_gui_width();
var camh = display_get_gui_height();

past_sprite = sprite_create_from_surface(application_surface,0,0,camw,camh,false,false,0,0);


//Prep the Destroy List:
deactivate_list = ds_list_create();
for (var i=0; i < ph; i++) { 
    for (var k=0; k< pv; k++) {
        var col_id = instance_place(global.ox + i*TILE_WIDTH,global.oy + k*TILE_WIDTH,parent_actor)   
        if col_id != noone  {
            ds_list_add(deactivate_list,col_id);
        }
    }
}

global.update_room = true;
state_switch("Transition",0);