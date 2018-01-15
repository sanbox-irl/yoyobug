///@func instance_nth_nearest(x,y,obj,n)
///@param x
///@param y
///@param obj
///@param nth_no
//  Returns the id of the nth nearest instance of an object
//  to a given point or noone if none is found.

/// GMLscripts.com/license; Thank you GMLscripts! ~~~Kinda--who possibly thinks this is well formatted~~~

var pointx,pointy,object,n,list,nearest;

pointx = argument0;
pointy = argument1;
object = argument2;
n = argument3;


n = max(1,n);
n = min(n, instance_number(object));

list = ds_priority_create();
nearest = noone;

with (object) ds_priority_add(list,id,distance_to_point(pointx,pointy));
repeat (n) nearest = ds_priority_delete_min(list);
ds_priority_destroy(list);
return nearest;
