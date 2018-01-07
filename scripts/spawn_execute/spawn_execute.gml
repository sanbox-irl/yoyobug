var params = argument0;
var returnable = "";

var place;


do {
	place[X_ARRAY] = irandom_range(1,global.grid_width);
	place[Y_ARRAY] = irandom_range(1,global.grid_height);
} until (global.game_grid[# place[X_ARRAY],place[Y_ARRAY]] == noone);

for (var i = 0; i < array_length_1d(place); ++i) {
   place[i]*=tile_width;
}

return spawn(place[X_ARRAY],place[Y_ARRAY]);
