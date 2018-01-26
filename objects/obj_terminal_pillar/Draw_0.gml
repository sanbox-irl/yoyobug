switch (state_name) {
    case "Init_Draw":
        draw_sprite_part(sprite_index,image_index,0,0,sprite_width,state_var[PASS_VAR],x,y-state_var[PASS_VAR]+tile_width);
        break;
    case "Standard_Draw":
		gpu_set_blendmode(bm_subtract);
			var x_place = x + (sprite_get_width(sprite_index)/2);
			var y_place = y;
			draw_circle_color(x_place,y_place,TILE_WIDTH*1.5, make_color_rgb(60,60,60),c_black,false)
			

			draw_set_alpha(1);
		gpu_set_blendmode(bm_normal);
        draw_self();

        break;
	case "End_Draw":
		draw_sprite_part(sprite_index,image_index,0,0,sprite_width,state_var[PASS_VAR],x,y-state_var[PASS_VAR]+tile_width);
		break;
	default:
		draw_self();
		break;
}

