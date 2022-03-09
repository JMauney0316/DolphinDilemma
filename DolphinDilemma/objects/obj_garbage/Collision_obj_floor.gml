/// @description Insert description here
// You can write your code in this editor
if(!(obj_player.hits - 100 <= 0)){
	obj_player.hits -= 100;
}else{
	if(lives > 0){
		lives -= 1
		obj_player.hits = 300
	}
}

instance_destroy();
