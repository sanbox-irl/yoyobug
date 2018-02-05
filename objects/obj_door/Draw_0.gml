

for (i = 0; i< TILE_WIDTH;  i+=(TILE_WIDTH)/3) {
    var x_place = x+i*vertical;
    var y_place = y+i*horizontal; 
    draw_lightning(x_place,y_place,x_place+TILE_WIDTH*horizontal,y_place+TILE_WIDTH*vertical,
					10+charge_var, 40+charge_var, 2+charge_var, 4+charge_var);
}

if !global.dev_mode  {
    exit;
}
draw_line(x+HALF_WIDTH,y+HALF_WIDTH,x_destination+HALF_WIDTH,y_destination+HALF_WIDTH);