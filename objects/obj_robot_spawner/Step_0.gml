//Timers
timer += global.dt;
//Small Timer
small_timer +=global.dt;
if small_timer > 15	{
	small_timer = 0;	
}

state_execute();
