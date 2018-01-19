var nlevel_width, nlevel_height, random_number, tower1_abs_pos, tower2_abs_pos, tower3_abs_pos;
var _x, _y;
	
nlevel = csv_to_grid("stage0.csv",true,undefined,undefined,undefined);
nlevel_width = ds_grid_width(nlevel);

dedicated_tower_list= ds_list_create();
tower_list			= ds_list_create();
walls_list			= ds_list_create();
percent_walls_list	= ds_list_create();
percent_enemy_list	= ds_list_create();
percent_spawner		= ds_list_create();
percent_player_spawn= ds_list_create();
do_not_spawn		= ds_list_create();

//Seperate our grid into a number of lists
for (var i = 0; i < nlevel_width; ++i) {
    switch (nlevel[# i, 0]) { 
		case "0":
			break;
	    case "1":
	        ds_list_add(tower_list,i);
	        break;
	    case "2":
			ds_list_add(tower_list,i);
	        break;
		case "3":
			ds_list_add(tower_list,i);
			break;
		case "4":
			ds_list_add(walls_list,i);
			break;
		case "5":
			ds_list_add(percent_spawner,i);
			break;
		case "6":
			ds_list_add(percent_enemy_list,i);
			break;
		case "7":
			ds_list_add(do_not_spawn,i);
			break;
		case "9":
			ds_list_add(percent_player_spawn,i);
			break;
	}
}


//Walls Loop
for (var i = 0; i < ds_list_size(walls_list); ++i) {
	_x = walls_list[| i] mod global.grid_width;
	_y = walls_list[| i] div global.grid_width;
		
	instance_create_layer(_x*TILE_WIDTH+TILE_WIDTH,_y*TILE_WIDTH+TILE_WIDTH,"Instances",obj_walls);
}

//Percent Spawners
	//Spawn the First one;
var list_size	= ds_list_size(percent_spawner);
random_number	= irandom_range(0,(list_size-1));
	_x = percent_spawner[| random_number] mod global.grid_width;
	_y = percent_spawner[| random_number] div global.grid_width;
	instance_create_layer(_x*TILE_WIDTH+TILE_WIDTH,_y*TILE_WIDTH +TILE_WIDTH,"Instances",obj_enemy_spawner);
	ds_list_delete(percent_spawner,random_number);


	//Chance to spawn the rest:
for (var i = 0; i < list_size; ++i) {
	if (percent_spawner[|i] == undefined)	{
		continue;	
	}
	var probability = 1/(ds_list_size(percent_spawner)+1);
	if chance(probability)	{
		_x = percent_spawner[| i] mod global.grid_width;
		_y = percent_spawner[| i] div global.grid_width;
		instance_create_layer(_x*TILE_WIDTH+TILE_WIDTH,_y*TILE_WIDTH+TILE_WIDTH,"Instances",obj_enemy_spawner);
		ds_list_delete(percent_spawner,i);
	}
}



//Percent Enemy
for (var i = 0; i < list_size; ++i) {
	if percent_enemy_list[| i] == undefined	{
		continue;	
	}
	list_size		= ds_list_size(percent_enemy_list);
	var probability = 3/(list_size);
		
	if chance(probability)	{
		_x = percent_enemy_list[| i] mod global.grid_width;
		_y = percent_enemy_list[| i] div global.grid_width;
		instance_create_layer(_x*TILE_WIDTH+TILE_WIDTH,_y*TILE_WIDTH+TILE_WIDTH,"Instances",obj_enemy_robot);
		ds_list_delete(percent_enemy_list,i);
	}
}

//Player Spawn
for (var i = 0; i < 2; ++i) {
random_number = irandom_range(0, ds_list_size(percent_player_spawn)-1);
	_x = percent_player_spawn[| random_number] mod global.grid_width;
	_y = percent_player_spawn[| random_number] div global.grid_width;
	instance_create_layer(_x*TILE_WIDTH+TILE_WIDTH,_y*TILE_WIDTH+TILE_WIDTH,"Instances",obj_robot);
	ds_list_delete(percent_player_spawn,random_number);
}

//Make Random Walls where the player could have been.
for (var i = 0; i < ds_list_size(percent_player_spawn); ++i) {
	if percent_player_spawn[| i] == undefined	{
		continue;	
	}
	var probability = 0.3;
	if chance(probability)	{
		_x = percent_player_spawn[| i] mod global.grid_width;
		_y = percent_player_spawn[| i] div global.grid_width;
		instance_create_layer(_x*TILE_WIDTH+TILE_WIDTH,_y*TILE_WIDTH+TILE_WIDTH,"Instances",obj_walls);
	}
}	
		
organize_walls();









