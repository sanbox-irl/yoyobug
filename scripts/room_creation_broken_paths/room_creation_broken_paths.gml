/*
0 = LEFT & RIGHT
1 = LEFT & RIGHT & UP
2 = LEFT & RIGHT & DOWN
3 = LEFT & RIGHT * DOWN & UP
4 = LEFT/RIGHT ONLY
5 = LEFT/RIGHT & UP
6 = LEFT/RIGHT & DOWN
7 = UP
8 = DOWN
9 = NO ENTRANCES -- SECRET.
*/

for (var i = (height-2); i > (-1); --i) {
    #region Right Checks
	if chance(0.3)	{
		global.critical_path[# RIGHT, i] = 3;
		
		//Check Below to Make Sure it Makes Sense
		switch (global.critical_path[# RIGHT, (i+1)]) {
		    case NORMAL:
		         global.critical_path[# RIGHT, (i+1)] = DOOR;
		         break;
			case DOOR:
		         break;
			case REVERSE:
				global.critical_path[# RIGHT, (i+1)] = ALL_DOOR;
				break;
		}
		
		//Check Above
		switch (global.critical_path[# RIGHT, (i-1)]) {
		    case NORMAL:
		         global.critical_path[# RIGHT, (i-1)] = REVERSE;
		         break;
			case REVERSE:
		         break;
			case DOOR:
				global.critical_path[# RIGHT, (i-1)] = ALL_DOOR;
				break;
		}
		
	}
	#endregion
	if chance(0.3)	{
		global.critical_path[# LEFT, i] = 3;
		
		//Check Below to Make Sure it Makes Sense
		switch (global.critical_path[# LEFT, (i+1)]) {
		    case NORMAL:
		         global.critical_path[# LEFT, (i+1)] = DOOR;
		         break;
			case DOOR:
		         break;
			case REVERSE:
				global.critical_path[# LEFT, (i+1)] = ALL_DOOR;
				break;
		}
		
		//Check Above
		switch (global.critical_path[# LEFT, (i-1)]) {
		    case NORMAL:
		         global.critical_path[# LEFT, (i-1)] = REVERSE;
		         break;
			case REVERSE:
		         break;
			case DOOR:
				global.critical_path[# LEFT, (i-1)] = ALL_DOOR;
				break;
		}
		
	}
}