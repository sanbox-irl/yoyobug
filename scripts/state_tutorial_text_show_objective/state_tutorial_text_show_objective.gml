// If the tween is not currently playing...
if (TweenIsPlaying(tween_scale) == false)	{
		// Tween the image xscale/yscale to random values between 0.5 and 2.0
        TweenPlay(tween_scale, ease_type, TWEEN_MODE_ONCE, true, 0.0, 1.0,
			"tween_amount", tween_amount, random_range(0.5, 2.0));

}

if state_timer > 10*60	{
	box_alpha -=0.01;
} else	{
	box_alpha = 0.7;	
}

keyboard_string = "";


if box_alpha < -.5	{
	box_alpha = 1;
	state_switch("Show_Terminal");
}