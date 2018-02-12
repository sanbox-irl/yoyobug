/// @description Update the Step
global.dt = delta_time/1000000 *60;

global.energy = clamp(global.energy,0,3);

global.keyboard_right = keyboard_check_pressed(vk_right);
global.keyboard_up = keyboard_check_pressed(vk_up);
global.keyboard_left = keyboard_check_pressed(vk_left);
global.keyboard_down = keyboard_check_pressed(vk_down);