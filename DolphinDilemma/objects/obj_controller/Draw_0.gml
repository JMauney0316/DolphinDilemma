/// @description Insert description here
// You can write your code in this editor


if(lives <= 0 and state == gamestate.ending){	
	draw_text(room_width/2-50, room_height/2,"Game Over");
	
	draw_text(room_width/2-50, room_height/2 + 60, message);
	
	draw_text(room_width/2-250, (room_height/2 + 30),"Type in your name and press enter or press alt to exit");
	
}
