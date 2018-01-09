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
#region Tower List Making
////Find the First Tower Position:
//random_number	= irandom_range(0,ds_list_size(tower1_list) -1);
//tower1_abs_pos	= tower1_list[| random_number];

//tower1[X_ARRAY] = tower1_abs_pos mod global.grid_width;	//This is probably 18;
//tower1[Y_ARRAY] = tower1_abs_pos div global.grid_width; //This is probably 18;

////Tower 2
//random_number	= irandom_range(0,ds_list_size(tower2_list) -1);
//tower2_abs_pos	= tower2_list[| random_number];

//tower2[X_ARRAY] = tower2_abs_pos mod global.grid_width;
//tower2[Y_ARRAY] = tower2_abs_pos div global.grid_width;

////Tower 3
//random_number	= irandom_range(0,ds_list_size(tower3_list) -1);
//tower3_abs_pos	= tower3_list[| random_number];

//tower3[X_ARRAY] = tower3_abs_pos mod global.grid_width;	//This is probably 18;
//tower3[Y_ARRAY] = tower3_abs_pos div global.grid_width; //This is probably 18;

//debug_message(string("TOWER 3 X = ") + string(tower3[X_ARRAY]));
//debug_message(string("TOWER 3 Y = ") + string(tower3[Y_ARRAY]));
#endregion

//Walls Loop
for (var i = 0; i < ds_list_size(walls_list); ++i) {
    _x = walls_list[| i] mod global.grid_width;
	_y = walls_list[| i] div global.grid_width;
	
	instance_create_layer(_x*tile_width+tile_width,_y*tile_width+tile_width,"Higher_Instances",obj_solid);
}

//Percent Walls
	//Spawn the First one;
var list_size	= ds_list_size(percent_spawner);
random_number	= irandom_range(0,(list_size-1));
	_x = percent_spawner[| random_number] mod global.grid_width;
	_y = percent_spawner[| random_number] div global.grid_width;
	instance_create_layer(_x*tile_width+tile_width,_y*tile_width +tile_width,"Instances",obj_enemy_spawner);
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
		instance_create_layer(_x*tile_width+tile_width,_y*tile_width+tile_width,"Instances",obj_enemy_spawner);
		ds_list_delete(percent_spawner,i);
	}
}

//Percent Enemy
for (var i = 0; i < list_size; ++i) {
    if percent_enemy_list[| i] == undefined	{
		continue;	
	}
	list_size		= ds_list_size(percent_enemy_list);
	var probability = 1/(list_size);
	
	if chance(probability)	{
		_x = percent_enemy_list[| i] mod global.grid_width;
		_y = percent_enemy_list[| i] div global.grid_width;
		instance_create_layer(_x*tile_width+tile_width,_y*tile_width+tile_width,"Instances",obj_enemy_robot);
		ds_list_delete(percent_enemy_list,i);
	}
}

var robo_number = instance_number(obj_enemy_robot) 
if robo_number > 2	{
	global.energy+= (robo_number - 2);
}


//Player Spawn
random_number = irandom_range(0, ds_list_size(percent_player_spawn)-1);
	_x = percent_player_spawn[| random_number] mod global.grid_width;
	_y = percent_player_spawn[| random_number] div global.grid_width;
	instance_create_layer(_x*tile_width+tile_width,_y*tile_width+tile_width,"Instances",obj_robot);
	ds_list_delete(percent_player_spawn,random_number);
	
for (var i = 0; i < ds_list_size(percent_player_spawn); ++i) {
	if percent_player_spawn[| i] == undefined	{
		continue;	
	}
	var probability = 0.5;
	if chance(probability)	{
		_x = percent_player_spawn[| i] mod global.grid_width;
		_y = percent_player_spawn[| i] div global.grid_width;
		instance_create_layer(_x*tile_width+tile_width,_y*tile_width+tile_width,"Instances",obj_solid);
	}
}	
	
	
	

