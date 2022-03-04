/// @description Insert description here
// You can write your code in this editor
if(obj_player.state == states.swimming){
	obj_player.hits -= 100;
	obj_player.state = states.hurt;
}