///@func spawn(x,y);
///@param x
///@param y;

var x_place_ = argument0;
var y_place_ = argument1;

//Create the Spawner;
var temp_instance = instance_create_layer(x_place_,y_place_,"Background_Instances",obj_robot_spawner);
global.energy--;
run = false;
return "Yup";

