var type = argument[0];
var choice = irandom_range(1,3);

answers_map = ds_map_create()
ds_map_add(answers_map,1,"Look, look, I don't know, maybe you got a drill or something. Try like, throwing it or something.")
ds_map_add(answers_map,2,"You seem **BUUURP** (yes, I typed it out, don't be a smart ass) to have a drill, maybe try drilling??")
ds_map_add(answers_map,3,"To be honest, I'm just as lost as you. Maybe we should figure out what we're doing here?")


if (type = "basic")
	{
	var returnable = answers_map[? choice];
	ds_map_destroy(answers_map);
	return returnable;
	}

if !(type = "basic")
	{
	var returnable = string("Not quite there, yet, bud. Try again.");
	return returnable;
	}
