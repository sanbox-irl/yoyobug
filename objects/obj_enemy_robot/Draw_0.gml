switch (state_name) {
	
    case "Init_Draw":
		draw_circle_color(x+tile_width/2,y+tile_width/2,tile_width/4,global.purple1,global.purple1,false);
		draw_self();
        break;
    case "Standard_Draw":
		draw_circle_color(x+tile_width/2,y+tile_width/2,tile_width/4,global.purple1,global.purple1,false);
		draw_self();
        break;
	case "End_Draw":
		shader_set(sh_desaturate);
			draw_self();
		shader_reset();
		if image_xscale > 1.2	{
			shader_set(sh_recolor);
				draw_set_alpha(1);
				shader_set_uniform_f_array(_uni_color,_color);
				draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,image_blend,1);
			shader_reset();
		} 
		break;	
	default:
		draw_self();
		break;
}
