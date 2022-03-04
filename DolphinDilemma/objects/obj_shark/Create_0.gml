/// @description Insert description here
// You can write your code in this editor

enum States {
	patrol,
	attack,
	idle
}


//path_add();

state = States.patrol;

path1 = path_add();
path_assign(path1, path_shark);
path_start(path1, 5, path_action_reverse, 0);


//hspeed = 5;