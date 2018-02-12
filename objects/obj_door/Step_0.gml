if protected = true {
	electrified = false;
}

if (locked == true) && (protected == false)	{
	electrified = true;
}


//Collision:
var col = instance_place(x,y,parent_actor);
if col = noone	{
	exit;
}
if electrified 	{
	col.to_be_destroyed = true;
} else if not electrified{
		protected = true;
		locked = false;

		instance_destroy(col);

	//Seal off the other doors:
	var other_doors = array_create(4);
	other_doors[0] = map[? "left_door"];
	other_doors[1] = map[? "right_door"];
	other_doors[2] = map[? "top_door"];
	other_doors[3] = map[? "down_door"];

	for (var i = 0; i<4; ++i) { 
		var inst = other_doors[0];
		if inst != id {
			inst.locked = true;
		}
	}
}
