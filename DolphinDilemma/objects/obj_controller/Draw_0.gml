/// @description Insert description here
// You can write your code in this editor


if(lives <= 0 and state == gamestate.ending){	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(room_width/2, room_height/2,"Game Over");
	
	
	draw_text(room_width/2, (room_height/2 + 30),"Press R to reset");
	
}