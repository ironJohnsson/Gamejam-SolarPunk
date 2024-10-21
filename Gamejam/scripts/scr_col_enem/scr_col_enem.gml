//colisão inimigo
function scr_col_enem(){
if place_meeting(x+hspd_push, y, obj_block){
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
}