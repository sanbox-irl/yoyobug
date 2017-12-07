var count = argument0;

//Find the number of towers we're making.
if count < 3
	{
	var spawning_tower = [0,0,0];
	}

//Make the towers (they aren't in the right place yet).
for (var i = 0; i < array_length_1d(spawning_tower); ++i) {
    spawning_tower[i] = instance_create_layer(x,y,"Instances",obj_terminal_pillar);
}

//Get the terminals in the right place:
for (var i = 0; i < 2; ++i) {
    do {
		spawning_tower[i].x
		
		} until (condition);
}
