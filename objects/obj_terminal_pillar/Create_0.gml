//Old Stuff
image_speed = 0;
color = 0;
scale = 1;

//New
tower_height=1;
end_draw = false;
timer = 0
draw_timer = 0;

var inst = instance_create_layer(x,y,"Background_Color",obj_floor_mat);
inst.color = color;
inst.scale = scale;