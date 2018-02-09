///Start with Small Rooms:
var _number_of_files = 1;
small_rooms = array_create(_number_of_files);

for (var i=0; i < _number_of_files; i++) { 
   var _string = concat("Rooms/Small/small",string(i),".csv");
   small_rooms[i] = csv_to_grid(_string,true);
}

//Normal Rooms:
var _number_of_files = 1;
normal_rooms = array_create(_number_of_files);

for (var i=0; i < _number_of_files; i++) { 
   var _string = concat("Rooms/Normal/normal",string(i),".csv");
   normal_rooms[i] = csv_to_grid(_string,true);
}

//Big Rooms:
var _number_of_files = 1;
big_rooms = array_create(_number_of_files);

for (var i=0; i < _number_of_files; i++) { 
   var _string = concat("Rooms/Big/big",string(i),".csv");
   big_rooms[i] = csv_to_grid(_string,true);
}