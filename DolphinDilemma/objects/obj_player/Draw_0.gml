/// @description Insert description here
// You can write your code in this editor

/*
if(flashalpha > 0){
	shader_set(sh_hurt);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashcolor,flashalpha);
	shader_reset();
} else {
	draw_self();
}
*/


if(state == states.hurt){
	shader_set(sh_hurt);	
	draw_self();
	shader_reset();
}else {
	draw_self();
}