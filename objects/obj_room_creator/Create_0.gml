global.dev_mode = true;
//Initalize Our Rooms & Give Them Random Size
room_creation_grid();

room_creation_find_room_dimensions();

//Create Critical Path (the ALWAYS path):
room_creation_critical_path();

//Create Random Variations
//room_creation_broken_paths();

//Tile Creations
create_exterior_tiles();

//Actually drop us in the first room:
room_creation_start();


//Debugging Variables
