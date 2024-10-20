
var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));

if hinput != 0 { 
	hspd+=hinput * accel;	
	hspd= clamp(hspd, -max_hspd, max_hspd);
}else{
	hspd = lerp(hspd,0,fat);
}

if !place_meeting(x,y+1, obj_block){
	vspd+=gravity_;
} else {
 if keyboard_check(vk_space){
	 vspd = jump_h
	}
}



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

//pegar e colocar cana

if(keyboard_check(ord(interact_button))){
	
	instancia_cana = instance_position(x, y, obj_cana_plant);
	
	
	if(instancia_cana!=noone && !cana_equipped){
		
		with(instancia_cana) cortar = true;
		
		instance_create_layer(x,y,"Layer_equipped_items",obj_cana_equipped);
		cana_equipped = true;
	}
	
	
	if(place_meeting(x,y,obj_cana_machine)){
		
	}
}
