global.dev_mode = true;
init_macros();

room_creation_load_chunks();
//Initalize Our Rooms & Give Them Random Size
room_creation_grid();

room_creation_find_room_dimensions();

//Create Critical Path (the ALWAYS path):
room_creation_critical_path();

//Create Random Variations
//room_creation_broken_paths();

//Actually drop us in the first room:
room_creation_start();


//Tile Creations
create_exterior_tiles();

//Make the Doors
room_creation_create_doors();

//Generate Strings for Each Room:
room_creation_create_strings();


//Debug Tools:
global.update_room = false;
recycle_rooms = false;
created_list = ds_list_create();
recycle_list = ds_list_create();

//Find Our Starting Room:
room_creation_starting_room();

