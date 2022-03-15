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
    //Title
    case 0:

        break;
    //Start Game
    case 1:
    room_goto(Room1);
    break;
    //display instructions
    case 2:
    room_goto(instructions_room);
    break;
    //display credits
    case 3:
    room_goto(credit_screen);
    break;
    //end game
    case 4:
    game_end();
    break;

}

}