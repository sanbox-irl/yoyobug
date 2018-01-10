ds_grid_destroy(nlevel);
ds_list_destroy(tower1_list);
ds_list_destroy(tower2_list);
ds_list_destroy(tower3_list);
ds_list_destroy(walls_list);
ds_list_destroy(percent_walls_list);
ds_list_destroy(percent_enemy_list);
ds_list_destroy(percent_spawner);
ds_list_destroy(percent_player_spawn);
ds_list_destroy(do_not_spawn);

state_cleanup();