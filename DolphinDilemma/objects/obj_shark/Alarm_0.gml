/// @description Insert description here
// You can write your code in this editor
if(state == States.idle){
	path2 = path_add();
	path_assign(path2, path_shark);
	path_start(path2, 5, path_action_reverse, 0);	
	state = States.patrol;
	sprite_index = spr_sharkfinal
		show_debug_message("Reassigned");
}