x = x+tile_width/2;
y = y+tile_width/2;

counter = 0;
scale = 3;


_uni_color = shader_get_uniform(sh_recolor,"u_color");
_color = [1.0,0.3,0.3,1]; /// Red;