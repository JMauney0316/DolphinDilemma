/// @description Insert description here
// You can write your code in this editor
if(is_spawned == false){
	is_spawned = true;
	sharkdepth = irandom_range(200, 900);
	instance_create_layer(x,sharkdepth,"Instances", obj_shark);
	//show_debug_message("shark spawned")
}