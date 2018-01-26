///Set up with a mini Create Event
if state_var[POWERUP_VAR] == 0	{
	to_be_destroyed = false;
	king_invulnerable = true;
	king_invulnerable_timer = 60*4;

	state_var[POWERUP_VAR] = 1;
}


if 	king_invulnerable == false 	{
	king_invulnerable_timer-=global.dt;
} else {	
	king_invulnerable_timer = 60*6;
}


if king_invulnerable_timer <= 0	{
	king_invulnerable = true;
}

if ((king_invulnerable) && (to_be_destroyed == true))	{
	to_be_destroyed = false;
	king_invulnerable = false;

	invuln_frames = 60;
}
