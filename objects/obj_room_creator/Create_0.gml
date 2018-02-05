global.dev_mode = true;
init_macros();
//Initalize Our Rooms & Give Them Random Size
room_creation_grid();

room_creation_find_room_dimensions();

//Create Critical Path (the ALWAYS path):
room_creation_critical_path();

//Create Random Variations
//room_creation_broken_paths();

//Actually drop us in the first room:
room_creation_start();

//Create my Tile

//Tile Creations
create_exterior_tiles();

//Make the Doors
room_creation_create_doors();

//Generate Strings for Each Room:
room_creation_create_strings();