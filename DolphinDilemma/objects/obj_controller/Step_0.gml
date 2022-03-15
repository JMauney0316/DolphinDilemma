/// @description Insert description here
// You can write your code in this editor
if(lives <= 0){
	state = gamestate.ending;
	audio_stop_all();
	if(keyboard_check(ord("R"))){
		game_restart();	
	}
}