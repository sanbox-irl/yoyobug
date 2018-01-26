var light_source = 5;
var light_destination = 8;
if instance_exists(obj_tower_controller_parent)	{
	var no_of_lines = (obj_tower_controller_parent.number)*2;
} else 	{
	var no_of_lines = 0;
}	


if no_of_lines <= 0	{
	color = c_white;
}
draw_set_color(color);

if electrified 	{
	for (var i = 1; i < no_of_lines ; ++i)	{
		var y_place = bbox_top + light_source + 4*i;
		draw_lightning(bbox_left,y_place,bbox_right,y_place,10+charge_var, 40+charge_var, 2+charge_var, 4+charge_var);

	}
} else 	{
	for (var i = 1; i < no_of_lines+1; ++i)	{
		var x_place = bbox_left-3;
		var y_place = bbox_top + light_source + 4*i;
		draw_lightning(x_place,y_place,x_place + lightning_length,y_place,10, 40, 2, 4);
	}
}

with (obj_generic_light)	{
	gpu_set_blendmode(bm_add);
	draw_set_alpha(0.1);
		var pass_color = other.color;
		draw_rectangle_color(other.bbox_left,0,other.bbox_right,TILE_WIDTH*2,c_black,c_black,other.color,other.color,false);
		draw_rectangle_color(other.bbox_left,TILE_WIDTH*2,other.bbox_right,TILE_WIDTH*4,other.color,other.color,c_black,c_black,false);
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
}