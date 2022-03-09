/// @description Insert description here
// You can write your code in this editor
if(obj_player.state == states.swimming){

	if(lives > 0){
		lives -= 1
	}	
	
	obj_player.state = states.hurt;
}