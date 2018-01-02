switch (state_name) {
    case "Init_Draw":
        draw_sprite_part(sprite_index,image_index,0,0,sprite_width,state_var[PASS_VAR],x,y-state_var[PASS_VAR]+tile_width);
        break;
    case "Standard_Draw":
        draw_self();
        break;
	case "End_Draw":
		draw_sprite_part(sprite_index,image_index,0,0,sprite_width,state_var[PASS_VAR],x,y-state_var[PASS_VAR]+tile_width);
		break;
	default:
		draw_self();
		break;
}



