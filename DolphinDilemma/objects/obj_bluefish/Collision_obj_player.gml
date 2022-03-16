/// @description Insert description here
// You can write your code in this editor

//Checks if player is dead, if not an attack point will be given
if(obj_player.state != states.dead){
	
	audio_play_sound(sound_sharkdead, 10, 0);
	score += 25
	
	obj_player.attacksleft += 1;

	instance_destroy();
}
