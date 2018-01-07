state_var[PASS_VAR]-=global.dt*3;
screen_shake(1,1);
if state_var[PASS_VAR] <= 0
	{
	instance_destroy();	
	instance_destroy(floor_mat);
	}

