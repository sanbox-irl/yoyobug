switch (state_name) {
	
    case "Init_Draw":
        draw_sprite_part(sprite_index,image_index,0,0,sprite_width,state_var[DRAW_VAR],x,y-state_var[DRAW_VAR]+tile_width);
        break;
    case "Standard_Draw":
		draw_self();
		
		if (invuln_frames > 0)	{
			if (floor(invuln_frames) mod 8 == 0) {
				invuln_draw = !invuln_draw;
			}
		} else invuln_draw = false;
		if invuln_draw	{
			shader_set(sh_white)
				draw_self();
			shader_reset();
		}
		
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

if powerup_draw != ""	{
	script_execute(powerup_draw);	
}

with (obj_generic_light)	{
	gpu_set_blendmode(bm_add);
		draw_set_alpha(0.05);
		draw_circle_color(other.x+16,other.y+16,TILE_WIDTH,c_white,c_black,false);
		draw_set_alpha(1);
	gpu_set_blendmode(bm_normal);
}
