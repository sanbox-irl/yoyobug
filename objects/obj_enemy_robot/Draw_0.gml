switch (state_name) {
	
    case "Init_Draw":
		draw_self();
        break;
    case "Standard_Draw":
		draw_self();
        break;
	case "End_Draw":
		shader_set(sh_desaturate);
			draw_self();
		shader_reset();
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,image_blend,state_var[0]);
		break;	
	default:
		draw_self();
		break;
}