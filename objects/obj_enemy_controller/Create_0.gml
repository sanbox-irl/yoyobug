//Create the Grid
var cell_width = tile_width;
var cell_height = tile_width;

var hcells = room_width div tile_width;
var vcells = room_width div tile_width;

global.grid = mp_grid_create(0,0,hcells,vcells,cell_width,cell_height);

//Add all the walls
mp_grid_add_instances(global.grid,obj_solid,false);