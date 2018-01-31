global.dev_mode = false;
//Initalize Our Rooms & Give Them Random Size
room_creation_grid();

room_creation_find_room_dimensions();

//Create Critical Path (the ALWAYS path):
room_creation_critical_path();

//Create Random Variations
room_creation_broken_paths();

//Debugging Variables
global.dimensions = ds_grid_create(width,height);
ds_grid_clear(global.dimensions,"");
count_w = 0;
count_h = 0;
original_room = room;
move_through = true;