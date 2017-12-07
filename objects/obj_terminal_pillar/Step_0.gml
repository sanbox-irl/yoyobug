timer+=global.dt;
scale	+=	global.dt/draw_tower_time;

if timer >= draw_tower_time
	{
	scale = wave(0.95,1.05,1,0);
	draw_tower = true;	
	}

