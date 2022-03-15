/// @description Insert description here
// You can write your code in this editor

enum States {
	patrol,
	attack,
	idle,
	death
}


//path_add();

state = States.patrol;

timeline_index = tl_sharkai;
timeline_running = false;

path1 = path_add();
path_assign(path1, path_shark);
path_start(path1, 5, path_action_reverse, 0);
sprite_index = spr_sharkfinal;

//Sets origin points to return to
xo = x
yo = y

show_debug_message(string(xo));
show_debug_message(string(yo));




//hspeed = 5;