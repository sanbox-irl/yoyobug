///@func check_gamepad_input(pad_number)
///@param pad_number

for ( var i = gp_face1; i < gp_axisrv; i++ ) {
    if ( gamepad_button_check( argument0, i ) ) return i;
}
return false;