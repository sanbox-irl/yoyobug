//Check if we've been pinged. Restart the whole sequence if so.
if global.ping_hud	{
	counter = 0;
	global.ping_hud = false;
	can_countdown = true;
}

//The Main Counter. 
if (can_countdown == true )	{
	counter+=1;	
}

if counter = 300	{
	debug_message("we here fam");
}

if (counter > (60)*5)	{			//After 5 seconds, the HUD will start to fade.
	can_countdown = false;
	begin_to_fade = true;
} else	{
	begin_to_fade = false;
	fade = 1;
}


if (begin_to_fade == true)	{
	fade-=0.1;
	fade = max(0,fade);
}

if (instance_number(obj_robot) == 0) && (global.energy == 0) && (instance_number(obj_about_to_spawn) == 0) 	{
	game_over = true;
}

if game_over{
	game_over_screen_alpha+=(1/120);	
}