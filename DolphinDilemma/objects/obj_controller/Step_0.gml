/// @description Insert description here
// You can write your code in this editor
if(lives <= 0){
	state = gamestate.ending;
	audio_stop_all();
	
	if(!keyboard_check(vk_space) and !(keyboard_check(vk_enter))){
		message = keyboard_string;
	}


	if(keyboard_check_pressed(vk_enter)){
		instance_destroy();	
		scr_highscorereadsave();
	
		highscore_add(message, score);
	
	
		Playername = "";
		Playerscore = 0;
		fname1 = "Scorelog/Score.ini"
	
			ini_open(fname1);
			for(j = 1; j < 11; j++){
			
				Playername = highscore_name(j);
				Playerscore = highscore_value(j);
			
				temp = string(j);
			
				ini_write_string("Players",temp,Playername);
				ini_write_real("Scores",temp,Playerscore);
			} 
			ini_close();
			highscore_clear();
			show_debug_message("successfully wrote to ini file");
	
	
	
		game_restart();
	}


	
	if(keyboard_check(ord(vk_alt))){
		game_restart();	
	}
	
	
	
	
}