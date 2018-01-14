var spec = global.orange_robots_list[|argument0];

if instance_exists(spec)	{
	with spec	{
		state_switch("Powerup_State",0);
		powerup_script = powerup_knight_step;
		powerup_draw	= powerup_knight_draw;
	}
}