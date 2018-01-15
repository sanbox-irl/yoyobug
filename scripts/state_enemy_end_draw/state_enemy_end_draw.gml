state_var[0]-=0.025;

var frames_until_explosion = 20;
if !TweenIsPlaying(kill_tween)	{
	state_var[DRAW_VAR] = 1.25;
	var end_y = (sprite_get_height(sprite_index)*state_var[DRAW_VAR] - sprite_get_height(sprite_index));
	var end_x = (sprite_get_width(sprite_index)*state_var[DRAW_VAR] - sprite_get_width(sprite_index));
	
	TweenPlay(kill_tween,EaseLinear,TWEEN_MODE_PATROL,true,0,0.1,"image_xscale",1,state_var[DRAW_VAR],"image_yscale",1,state_var[DRAW_VAR],"x",x,x-end_x,"y",y,y-end_y);
}

if state_var[0] < 0	{
	instance_create_layer(_x,_y,"Instances",obj_explosions);
	instance_destroy();
}