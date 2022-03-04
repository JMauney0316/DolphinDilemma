/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)){
draw_healthbar(8,8,256,32,obj_player.hits, c_black, c_red, c_lime, 0, true, true)
}
draw_text(16, 64, "Score: " +string(score));

/*
if(pause == true){
	draw_text(room_width/2, room_height/2, "Paused");
}
*/