event_inherited();
state_cleanup();

var list_number = ds_list_find_index(global.orange_robots_list,id);
ds_list_delete(global.orange_robots_list,ds_list_find_index(global.orange_robots_list,id));