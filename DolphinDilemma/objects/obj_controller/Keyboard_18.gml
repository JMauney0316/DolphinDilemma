/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("R"))){
	game_restart()	
}

if(keyboard_check_pressed(ord("L"))){
	lives += 5	
}

if(keyboard_check_pressed(ord("H"))){
	lives = 1	
}

if(keyboard_check_pressed(ord("F"))){
	obj_player.attacksleft += 3	
}
