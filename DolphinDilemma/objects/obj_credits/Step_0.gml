/// @description Insert description here
// You can write your code in this editor
//get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

//move through the menu
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

//using options
if accept_key {
switch(pos){

    case 0:

        break;

    case 1:

    break;

    case 2:


    break;

    case 3:

    break;

    case 4:

    break;

    case 5:
    room_goto(title_screen);
    break;

}

}