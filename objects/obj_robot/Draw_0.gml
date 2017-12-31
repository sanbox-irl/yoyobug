/*
  NOTE: Below is horrible. Robot MUST be re-organized into a state_system.
  All these ifs are just confused and adds for great cailure.
*/

if init_draw	{
	draw_sprite_part(sprite_index,image_index,0,0,sprite_width,robot_height,x,y-robot_height+tile_width);
} else if to_be_destroyed	{
	shader_set(sh_desaturate)	{
		draw_self();
	shader_reset();
	}
	
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,image_blend,sat);
} else	{
	draw_self();
}