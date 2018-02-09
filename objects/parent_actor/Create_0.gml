room_coord = array_create(2);
var x_diff = x - global.ox;
var y_diff = y - global.oy;

room_coord[X_ARRAY] = (x_diff div TILE_WIDTH);
room_coord[Y_ARRAY] = (y_diff div TILE_WIDTH);

