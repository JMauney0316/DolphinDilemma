/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player) = true){
	if(aggrorange > distance_to_object(obj_player) && (obj_player.state == states.swimming)){
		
			state = States.attack;
			
			path_end();
			
			direction = point_direction(x,y,obj_player.x, obj_player.y);
			speed = 6;
		
		
	} else if((aggrorange <= distance_to_object(obj_player)) && (state == States.attack)) {
		timeline_running = true;
		show_debug_message("timeline started");
		state = States.idle;
		speed = 0;
		sprite_index = spr_shark
		
	} else {
		//idk	
	}
}


if((point_distance(x,y,xo,yo) < 5) and state == States.idle){
	path_start(obj_shark.path1, 5, path_action_reverse, 0);	
	
	show_debug_message("Path Restarting")
	obj_shark.state = States.patrol;
	obj_shark.sprite_index = spr_sharkfinal
}

/*
if(x == xo and y == yo and state == States.idle){
	path_start(obj_shark.path1, 5, path_action_reverse, 0);	
	show_debug_message("Path Restarting")
	obj_shark.state = States.patrol;
	obj_shark.sprite_index = spr_sharkfinal
}
*/


if(obj_shark.direction > 90 && obj_shark.direction < 270){
	image_xscale = 1;
	
} else {
	image_xscale = -1;	
}



