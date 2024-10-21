/// @description movimentação
//movimentação em direção ao player

var dir = point_direction(x,y,obj_player.x,obj_player.y);
hspd=lengthdir_x(spd,dir);
vspd=lengthdir_y(spd,dir);

spr_col();


scr_col_enem();

if!place_meeting(x,y,obj_enemy){
	hspd_push = lerp(hspd_push,0,.1);
	vspd_push = lerp(vspd_push,0,.1);
}

//morte

if hp<=0{
	instance_destroy();
}


