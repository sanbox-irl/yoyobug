//Getting the Ping-Pong Animations
switch (image_index) {
    case 0:
        img_spd = 1;
        break;
    case 3:
        img_spd = -1;
        break;
}
image_index+=img_spd*0.2;

/*Collision Code	--- Goal: When player hits the node, gets one energy. One enemy hits the node: energy is destroyed.*/
	//Player Collision
if place_meeting(x,y,obj_robot)	{
	global.energy++;
	instance_destroy();
}

	//Enemy Colliision
if place_meeting(x,y,obj_enemy_robot)	{
	instance_destroy();	
}


