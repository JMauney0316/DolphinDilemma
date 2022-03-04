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
	}
	
	if(keyboard_check(vk_right)){
		x += hmovespeed;
		image_xscale = -1
	}
	
}


if((state == states.hurt) && (alarm[0] < 0)){
	//show_debug_message("In here");
	alarm[0] = stuntime;	
}




if(obj_player.x > 1920){
	x = 0;	
}

if(obj_player.x < 0){
	x = 1920;	
}


//Clamps boundaries
//x = clamp(x,0,1920);
y = clamp(y,0,1080);