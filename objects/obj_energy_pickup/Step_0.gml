//Getting the Ping-Pong Animations
switch (floor(image_index)) {
    case 0:
        img_spd = 1;
        break;
    case 3:
        img_spd = -1;
        break;
}
image_index+=img_spd*0.2*global.dt;

/*Collision Code	--- Goal: When player hits the node, gets one energy. One enemy hits the node: energy is destroyed.*/
	//Player Collision
var _robot = instance_place(x,y,obj_robot);

if _robot != noone	{
	with _robot	{
		powerup_script		= global.powerup_grid[# STEP_ENUM,other.powerup_number];
		powerup_draw		= global.powerup_grid[# DRAW_ENUM,other.powerup_number];
	}
	to_be_destroyed = true;
	global.energy++;
}

	//Enemy Colliision
if place_meeting(x,y,obj_enemy_robot)	{
	to_be_destroyed = true;
}


if to_be_destroyed		{
	instance_destroy();	
}
