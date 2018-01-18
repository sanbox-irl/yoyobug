switch (state_name) {
	
    case "Init_Draw":
        draw_sprite_part(sprite_index,image_index,0,0,sprite_width,state_var[DRAW_VAR],x,y-state_var[DRAW_VAR]+tile_width);
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
	case "Powerup_State":
		script_execute(powerup_draw);
		break;
	default:
		draw_self();
		break;
}

exit;
//Get the Name
var _strng = string(ds_list_find_index(global.orange_robots_list,id));
var _strng_width = string_width(_strng);
var _strng_place = 0;
var radius		= 6;
_strng_place[X_ARRAY] = x + tile_width -radius;
_strng_place[Y_ARRAY] = y + radius;


draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_circle_precision(64);
draw_circle_color(_strng_place[X_ARRAY],_strng_place[Y_ARRAY],radius,c_white,c_white,false);
draw_text_transformed_color(_strng_place[X_ARRAY],_strng_place[Y_ARRAY],_strng,0.75,0.75,0,global.purple1,global.purple1,global.purple1,global.purple1,1);

