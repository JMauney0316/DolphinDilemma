/// @description Insert description here
// You can write your code in this editor

//Checks if player is dead, if not a life will be given
if(obj_player.state != states.dead){
	score += 25

	if(lives < 5){
		lives += 1;
	}
	audio_play_sound(sound_life,10,false)
	
	instance_destroy();
}