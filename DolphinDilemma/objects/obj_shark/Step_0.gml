/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player) = true){
	if(aggrorange > distance_to_object(obj_player) && (obj_player.state == states.swimming) && (state == States.patrol)){
		
			state = States.attack;
			path_end();
			direction = point_direction(x,y,obj_player.x, obj_player.y);
			speed = 6;
		
		
	} else if((aggrorange <= distance_to_object(obj_player)) && (state == States.attack)) {
		state = States.idle;
		speed = 0;
		alarm[0] = 30;	
		sprite_index = spr_shark
		//show_debug_message("Range left");
	} else {
		//idk	
	}
}

if(obj_shark.direction > 90 && obj_shark.direction < 270){
	image_xscale = 1;
	
} else {
	image_xscale = -1;	
}

