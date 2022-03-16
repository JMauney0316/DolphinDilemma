/// @description Insert description here
// You can write your code in this editor
if(is_spawned == false){
	is_spawned = true;
	
	//Sets random depths to spawn in
	sharkdepth = irandom_range(200, 900);
	fishdepth = irandom_range(150, 1000);
	
	//Picks fish spawning side
	var side = 0
	if(irandom(1) == 1){
		side = 1920
		fishdir = -1
	} else {
		side = 0	
		fishdir = 1
	}
	
	//Sets appropriate spawn conditions for each object
	if(objspawns == obj_shark){
	instance_create_layer(x,sharkdepth,"Instances", objspawns);
	} else {
	instance_create_layer(side,fishdepth,"Instances", objspawns);
	}
	
}