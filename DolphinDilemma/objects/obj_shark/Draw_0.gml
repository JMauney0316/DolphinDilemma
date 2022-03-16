/// @description Insert description here
// You can write your code in this editor
if(state == States.death){
	shader_set(sh_hurt);
	draw_self();
	shader_reset();
} else {
	draw_self();
}