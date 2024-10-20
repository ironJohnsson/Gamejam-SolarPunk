//movimentação em direção ao player

var dir = point_direction(x,y,obj_player.x,obj_player.y);
hspd=lengthdir_x(spd,dir);
vspd=lengthdir_y(spd,dir);


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


//colisão inimigo

if place_meeting(x+hspd_push,y,obj_block){
	while !place_meeting(x+sign(hspd_push), y, obj_block){
		x+=sign(hspd_push);	
	}
	
	hspd_push= 0;		
}
x+=hspd_push;

if place_meeting(x,y+vspd_push,obj_block){
	while !place_meeting(x,y+sign(vspd_push), obj_block){
		y+=sign(vspd_push);	
	}
	vspd_push=0;
}
y+=vspd_push

if!place_meeting(x,y,obj_enemy){
	hspd_push = lerp(hspd_push,0,.1);
	vspd_push = lerp(vspd_push,0,.1);
}

//morte

if hp<=0{
	instance_destroy();
}





