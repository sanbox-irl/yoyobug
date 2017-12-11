var params = argument0;
var returnable = "";

var x_place, y_place;


do {
	x_place = irandom(global.grid_width);
	y_place = irandom(global.grid_height);
} until (global.game_grid[# x_place,y_place] == noone);

x_place*=tile_width;
y_place*=tile_width;

return spawn(x_place,y_place,counter);
