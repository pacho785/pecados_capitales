// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_state_walk(){
	if(right) || keyboard_check(vk_right){///derecha
		x = x+spd;
		h_dir = 1; 
		sprite_index = Spr_personaje_run;
	}
	else if (left) || keyboard_check(vk_left){///izquierda
		x = x-spd;
		h_dir = -1; 
		sprite_index = Spr_personaje_run;
	}	
		image_xscale = h_dir;
	
	if(!right &&  !left ){
		state = scr_state_idle;
	}
}   