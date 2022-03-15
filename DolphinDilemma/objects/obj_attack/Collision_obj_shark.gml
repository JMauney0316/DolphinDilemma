/// @description Insert description here
// You can write your code in this editor
instance_destroy();
obj_shark.state = States.death;
show_debug_message("inside collision")
with(obj_shark){
	event_user(0);	
}