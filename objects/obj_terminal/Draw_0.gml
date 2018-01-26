gpu_set_blendmode(bm_subtract)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_black,1);

	draw_circle_color(x+HALF_WIDTH,y+HALF_WIDTH,HALF_WIDTH,c_white,c_black,false);
gpu_set_blendmode(bm_normal);

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,image_blend,1);


//if !(terminal_locked)	{
//	var rad_x	= x+tile_width/2;
//	var rad_y	= y-tile_width/2;
//	var rad		= tile_width/4;

//	draw_healthbar_circular(rad_x,rad_y,rad,0,100,spr_backgroundtimer);
//	draw_healthbar_circular(rad_x,rad_y,rad,0,obj_experimental_room_design.state_timer/obj_experimental_room_design.time_left,timer_spr);
//}
