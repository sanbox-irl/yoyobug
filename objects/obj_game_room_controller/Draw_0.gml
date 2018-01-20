var light_source = 8;
var light_destination = 8;
if instance_exists(obj_tower_controller_parent)	{
	var no_of_lines = (obj_tower_controller_parent.number)*2;
} else var no_of_lines = 0;

var _color = make_color_rgb(229,23,38);

draw_set_color(_color);

if electrified 	{
	for (var i = 1; i < no_of_lines ; ++i)	{
		var y_place = bbox_top + light_source + 4*i;
		draw_lightning(bbox_left-3,y_place,bbox_right+3,y_place,10+charge_var, 40+charge_var, 2+charge_var, 4+charge_var);

	}
} else 	{
	for (var i = 1; i < no_of_lines+1; ++i)	{
		var x_place = bbox_left-3;
		var y_place = bbox_top + light_source + 4*i;
		draw_lightning(x_place,y_place,x_place + lightning_length,y_place,10, 40, 2, 4);
	}
}

if transition_time	{
	//var ratio = room_width/sprite_get_width(room_sprite);
	var ratio = room_height/sprite_get_height(room_sprite);
	draw_sprite_ext(room_sprite,0,0,0,ratio,ratio,0,image_blend,image_alpha);	
	instance_deactivate_all(true);
}

