//Delta Time
global.dt = 0;
global.start = true;

global.grid_width = 18;
global.grid_height = 9;
global.game_grid = ds_grid_create(global.grid_width,global.grid_height);

global.dev_mode = false;

init_part();

var starting_energy = 3;
global.energy = starting_energy; 
global.is_playroom	= false;


global.purple1 = make_color_rgb(63,54,86);
global.purple2 = make_color_rgb(47,40,58);
global.blue1	= make_color_rgb(66,91,121);
global.green1	= make_color_rgb(103,145,137);


global.orange_robots_list = ds_list_create();


global.ping_hud = true;

//Powerup Maps
create_power_up_map();




