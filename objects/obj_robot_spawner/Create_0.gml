timer	=	0;
small_timer = 0;
color = obj_tower_controller_parent.pillar_color_map[? irandom(5)];

state_machine_init();
state_create("Init_State",state_about_to_spawn_init_state);
state_create("Waiting_to_Die", state_about_to_spawn_waiting_to_die);
state_create("End_State",state_about_to_spawn_end_state);
state_init("Init_State");

rad = 0;
final_rad = tile_width/2;
draw_small_circle = false;

end_spawning_circle = false;

if place_meeting(x,y,obj_robot)	{
	instance_destroy();
}
