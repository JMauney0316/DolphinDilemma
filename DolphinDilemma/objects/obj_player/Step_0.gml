/// @description Insert description here
// You can write your code in this editor

//Checks to see if Dolphin is in swimming state
if state == states.swimming or state == states.hurt{
	//Vertical movement
	if(keyboard_check(vk_up)){
		y -= vmovespeed;
	}
	
	if(keyboard_check(vk_down) && !instance_place(x,y+1,obj_floor)){
		y += vmovespeed;
	}
	
	//Horizontal movement
	if(keyboard_check(vk_left)){
		x -= hmovespeed;
		
		image_xscale = 1
		sprite_index = spr_dolphinswim
	} else if(keyboard_check(vk_right)){
		x += hmovespeed;
		
		image_xscale = -1
		sprite_index = spr_dolphinswim
	} else {
		sprite_index = spr_dolphin	
	}
	
}


if((state == states.hurt and alarm[0] < 0)){
	show_debug_message("In here");
	alarm[0] = 30;
} 

/*
else {
	state = states.swimming;
	//show_debug_message("stun reset");
}
*/




//Allows player to wrap back around the screen
if(obj_player.x > 1920){
	x = 0;	
}
if(obj_player.x < 0){
	x = 1920;	
}



//Clamps boundaries
y = clamp(y,0,1080);


//Checks to see if player is dead
if(lives = 0){
	state = states.dead;
	event_user(0);
}

//Checks to see if player can fire, if they can the attack object is made
if(keyboard_check(vk_space) and attacksleft > 0 and canFire == true){
	instance_create_layer(x,y,"Instances",obj_attack);	
	canFire = false;
	alarm[1] = 15;
	attacksleft -= 1;
}