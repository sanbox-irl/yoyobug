// /// grid_collision_line(start_x, start_y, end_x, end_y, tile_type);
// // REQUIRED MACROS  TILESIZE => size of tiles and TILESIZE1 => one pixel less!
// /// @param startx
// /// @param starty
// /// @param endx
// /// @param endy
// /// @param tiletype

// var sx = argument0;
// var sy = argument1;
// var tx = argument2;
// var ty = argument3;
// var tileType = argument4;

// // === scr_tileCheck Start + Endpoints === //
// if (scr_tileCheck(sx, sy, tileType) || scr_tileCheck(tx, ty, tileType)) return true; 

// // === Iterate X-Axis === //: scr_tileCheck only precise axis intersections
// var deltax=abs(tx div TILESIZE - sx div TILESIZE);
// if deltax>0{// if start + end not in the same cell
// var xslope = ((ty-sy)/(tx-sx)),// Determine Linear Equation Slope, solving y(x);
// dirx = sign(tx-sx),// get direction along xaxis
// cx = (sx&~TILESIZE1)+TILESIZE1*(dirx>0),// From Start X get nearest intersection with grid - LEFT or RIGHT (does not escape the start cell);
// cy = sy+xslope*(cx-sx);// Mathematically determine the appropriate Y coordinate
// if scr_tileCheck(cx, cy, tileType) return true;

// repeat(deltax-1){// repeat as often as there are as of yet unchecked cells between Start X and End X;       
// cx+=TILESIZE*dirx;// If no collision move along X on by given grid_dimensions of 32px;
//        cy+=xslope*TILESIZE*dirx;
// if scr_tileCheck(cx, cy, tileType) return true;
//    }
// }

// // === Iterate X-Axis === //: scr_tileCheck only precise axis intersections
// var deltay=abs((ty div TILESIZE) - (sy div TILESIZE));
// if deltay>0{
//    var yslope=((tx-sx)/(ty-sy)),
// diry = sign(ty-sy),                    
// cy=(sy&~TILESIZE1)+TILESIZE1*(diry>0),                 
// cx=sx+yslope*(cy-sy);
// if scr_tileCheck(cx, cy, tileType) return true; 

//    repeat(deltay-1){
//        cy+=TILESIZE*diry;
//        cx+=yslope*TILESIZE*diry;
// if scr_tileCheck(cx, cy, tileType) return true;
//    }
// }

// return false; // if all checks passed!