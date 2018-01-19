//Draw This Yup yup
draw_sprite_ext(sprite_index,image_index,x,y,(1/scale),(1/scale),0,global.purple1,1);

if counter > 3	{
	shader_set(sh_recolor);
		shader_set_uniform_f_array(_uni_color,_color);
		draw_sprite_ext(sprite_index,image_index,x,y,(1/scale),(1/scale),0,global.purple1,1);
	shader_reset();
}
