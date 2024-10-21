// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function spr_col(){
//colisão
if place_meeting(x+hspd,y,obj_block){
	while !place_meeting(x+sign(hspd), y, obj_block){
		x+=sign(hspd);	
	}
	
	hspd= 0;		
}
x+=hspd;

if place_meeting(x,y+vspd,obj_block){
	while !place_meeting(x,y+sign(vspd), obj_block){
		y+=sign(vspd);	
	}
	vspd=0;
}
y+=vspd
}