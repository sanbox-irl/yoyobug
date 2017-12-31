var params = argument0;
var returnable = "";

var place;


do {
	place[x_array] = irandom_range(1,global.grid_width);
	place[y_array] = irandom_range(1,global.grid_height);
} until (global.game_grid[# place[x_array],place[y_array]] == noone);

for (var i = 0; i < array_length_1d(place); ++i) {
   place[i]*=tile_width;
}

return spawn(place[x_array],place[y_array]);
