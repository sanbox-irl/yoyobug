update_terminal_location();
update_input();
counter+=1;

if counter mod 60 == 0	{
	flick_cursor*=-1;
	counter = 0;
}


//This makes it go red and then back again. In a better world, I can do this with flags.
if global.energy < previous_energy	{
	make_red = true;	
}
if make_red = true	{
	temp_alpha = 1;
	fall_off_rate = 0.01;
	make_red = false;
}
if temp_alpha > 0	{
	temp_alpha-=fall_off_rate;
}


if global.energy == 0	{
	fall_off_rate = 0.1;
	if counter mod 90 == 0	{
	temp_alpha = 1;	
	}
}

