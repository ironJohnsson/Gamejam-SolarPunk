/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(obj_player_arm.active_weapon != 2) equipped_mode = false;

if(equipped_mode){

	x = obj_player_arm.projectile_spawn_point_x;
	y = obj_player_arm.projectile_spawn_point_y;
				
	image_angle = obj_player_arm.image_angle;
	image_xscale = obj_player.image_xscale;
	if(image_xscale < 0) image_angle -= 180;
	
	angulo_lancamento = image_angle;
	
}else if(shoot_mode){
	
if(place_meeting(x,y,(obj_block)) || place_meeting(x,y,(obj_enemy))){
	
	instance_create_layer(x,y,"Layer_projectile", obj_sandal_dropped);

	instance_destroy();
	
}
	
acel_h = gravity_sandal;

	if(shoot_mode_start){
		veloc_y = dsin(angulo_lancamento) * veloc;
		shoot_mode_start = false;
	}
	
veloc_x = dcos(angulo_lancamento) * veloc;

x = x + veloc_x;

veloc_y = veloc_y - acel_h;

y = y - veloc_y;


	
}else{

instance_destroy();
	
}
/*
{
		
			with(equipped_sandal){
				x = obj_player_arm.projectile_spawn_point_x;
				y = obj_player_arm.projectile_spawn_point_y;
				
				image_angle = obj_player_arm.image_angle;
				image_xscale = obj_player.image_xscale;
				if(image_xscale < 0) image_angle -= 180;
				//movimentação
veloc_x;

//aplicando gravidades
if(!_floor)
{
	veloc_y+= gravidade * massa;	
			}
	}
*/