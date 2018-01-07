//Get the Side_Var
var term = obj_input_terminal;
var center_term = term.term_x + term.term_width/2;
var dist_x = term.term_width/2;
var side_mod = 1;

//Find the Text Box Coordinates;
var height = 20;
var width = 6*height;
top_left[X_ARRAY] = center_term + dist_x*side_mod+tween_amount*side_mod;		//Top left
top_left[Y_ARRAY] = term.term_y;
bot_right[X_ARRAY] = top_left[X_ARRAY] + width*side_mod+tween_amount*side_mod;	//Bot right
bot_right[Y_ARRAY] = top_left[Y_ARRAY] + height;

triangle1[X_ARRAY] = top_left[X_ARRAY] - term.term_width/12*side_mod;
triangle1[Y_ARRAY] = (top_left[Y_ARRAY] + bot_right[Y_ARRAY])/2;

triangle2[X_ARRAY] = triangle1[X_ARRAY] + 10*side_mod;
triangle2[Y_ARRAY] = triangle2[Y_ARRAY] + 5;

triangle3[X_ARRAY] = triangle2[X_ARRAY];
triangle3[Y_ARRAY] = triangle1[Y_ARRAY]	- 5;


if (TweenIsPlaying(tween_scale) == false)	{
		// Tween the image xscale/yscale to random values between 0.5 and 2.0
        TweenPlay(tween_scale, ease_type, TWEEN_MODE_ONCE, true, 0.0, 1.0,
			"tween_amount", tween_amount, random_range(10.0, 30.0));

}

if state_timer > 10*60	{
	box_alpha -=0.01;
} else	{
	box_alpha = 1;	
}

if box_alpha < -.5	{
	state_switch("Show_Terminal");
}

