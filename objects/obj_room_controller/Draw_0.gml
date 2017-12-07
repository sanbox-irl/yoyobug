var longitude = room_width/tile_width;
var latitude = room_height/tile_width;
draw_set_color(c_white);
draw_set_alpha(0.3);

//Drawing North South Lines
for (var i = 1; i < longitude; i++) {
	draw_line(tile_width*i,tile_width,tile_width*i,room_height-8);
}

//Drawing East-West Lines
for (var i = 1; i<latitude; ++i) {
	draw_line(tile_width,tile_width*i,room_width-tile_width,tile_width*i);
}
draw_set_alpha(1);



if tower_draw && (spawning_tower[0].timer > spawning_tower[0].draw_tower_time)	{
	var x_offset = obj_terminal_pillar.sprite_width/2;
	var y_offset = 10;
	for(i=0; i<instance_number(obj_terminal_pillar)-1; i++){
	    var obj0, obj1;
	    obj0 = instance_find(obj_terminal_pillar, i);
	    obj1 = instance_find(obj_terminal_pillar, i+1);
	    draw_line(obj0.x+x_offset, obj0.y-y_offset, obj1.x+x_offset, obj1.y-y_offset);
	}
	draw_line(spawning_tower[number-1].x+x_offset,spawning_tower[number-1].y-y_offset,spawning_tower[0].x+x_offset,spawning_tower[0].y-y_offset);
}