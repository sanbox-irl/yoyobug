var _origin = array_create(2);
_origin[X_ARRAY] = 0;
_origin[Y_ARRAY] = 0;
var _wall_obj	= obj_walls;

var _n = instance_number(_wall_obj);

for (var i = 0; i < _n; ++i) {
    var _inst = instance_find(_wall_obj,i);

	
	
	//Check for Instances to the Left
	if instance_exists(_inst)	{
		with _inst{
			var _left_inst = false
			var _right_inst = false;
			var _bot_inst = false;
			var _top_inst = false;
		
		
		
		
			if instance_place(x-tile_width,y,_wall_obj)	{
				_left_inst = true;
			}
		
			if instance_place(x+tile_width,y,_wall_obj)	{
				_left_inst = true;	
			}
	
			if instance_place(x,y-tile_width,_wall_obj)	{
				_top_inst = true;
			}
		
			if instance_place(x,y+tile_width,_wall_obj)	{
				_bot_inst = true;	
			}
		
		
		
		
			//Now we figure out which direction to go:
			if _bot_inst == true	{
				sprite_index = spr_walls_allround;
				//image_angle = choose(right,up,down,left);
				image_index = 0;
				continue;
			}
			
			if (_left_inst == false) && (_right_inst == false) && (_bot_inst == false) && (_top_inst == false)	{			///No one around us.
				sprite_index = spr_wall_left_right;
				image_index = irandom(sprite_get_number(spr_wall_left_right));
				continue;
			}
		
			if ((_left_inst == true) || (_right_inst = true)) && (_top_inst == false) && (_bot_inst == false)	{			//No one above or below us. 
				sprite_index = spr_wall_left_right;
				image_index = irandom(sprite_get_number(spr_wall_left_right));
				continue;
			}
		
			if (_top_inst == true) && (_bot_inst == false)	{
				sprite_index = spr_wall_nodown_yes_top;
				image_index = irandom(sprite_get_number(spr_wall_nodown_yes_top));
				continue;
			}

		
		}
	
	} else debug_message("Wall Instance Doesn't exist?");
}