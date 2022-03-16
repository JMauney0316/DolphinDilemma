// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

Playername = "AAA"
Playerscore = 0

function scr_highscorereadsave(){
	fname1 = "Scorelog/Score.ini"
	if(!file_exists(fname1)){
		ini_open(fname1);
		highscore_clear();
		for(j = 1; j < 11; j++){
			temp = string(j);
			Playername = ini_read_string("Players",temp,0);
			Playerscore = ini_read_real("Scores",temp,0);
			highscore_add(Playername,Playerscore);
		}
		ini_close();
		show_debug_message("successfully r/w to highscores1");
	} else {
		ini_open(fname1);
		highscore_clear();
		for(j = 1; j < 11; j++){
			temp = string(j);
			Playername = ini_read_string("Players",temp,0);
			Playerscore = ini_read_real("Scores",temp,0);
			highscore_add(Playername,Playerscore);
		}
		ini_close();
		show_debug_message("successfully r/w to highscores2");
	}
}

function scr_resetscore(){
	fname1 = "Scorelog/Score.ini"
	Playername = "AAA"
	Playerscore = 0
	if(!file_exists(fname1)){
		ini_open(fname1);
		for(j = 1; j < 11; j++){
			temp = string(j);
			
			ini_write_string("Players",temp,Playername);
			ini_write_real("Scores",temp,Playerscore);
		}
		ini_close();
		show_debug_message("successfully rewrote1");
	} else {
		ini_open(fname1);
		for(j = 1; j < 11; j++){
			temp = string(j);
			
			ini_write_string("Players",temp,Playername);
			ini_write_real("Scores",temp,Playerscore);
		}
		ini_close();
		show_debug_message("successfully rewrote2");
	}
		
}

