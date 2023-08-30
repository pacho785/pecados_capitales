// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_state_idle(){
		sprite_index = Spr_personaje_idle; 
	if(right || left ){
		state = scr_state_walk;
}
}