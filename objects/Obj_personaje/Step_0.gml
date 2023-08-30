/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
Scr_get_imput_gml();

script_execute(state);

#region
if vspeed > 0 
{
	Fall = true;
}
else 
{
	Fall = false;
}
if vspeed <0
{
	Up = true;
}
else 
{
	Up = false;
}
#endregion

#region// salto y movimiento
if place_free(x,y+1)
{
	gravity=1;
}
else{
	gravity = - 0;
}
if vspeed >= 15 {vspeed = 15;}//limitador de vloiad vertical
#endregion

#region//salto y movmientos
if (jump) and !place_free(x,y+1) {
	sprite_index = Spr_personaje_run;
	vspeed = -salto;
}
if (right) {
	x+=spd;
	sprite_index= Spr_personaje_run;
	image_speed=1;
}

else if (left) {
	x-= spd;
	sprite_index = Spr_personaje_run;
	image_speed = 1;
}
else{
	sprite_index=Spr_personaje_idle;
}
#endregion