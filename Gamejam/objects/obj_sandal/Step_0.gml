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
	
	if(image_xscale < 0) angulo_lancamento += 180;
	
}else if(shoot_mode){
	

	if(place_meeting(x,y,(obj_block)) || place_meeting(x,y,(obj_enemy)) || place_meeting(x,y,(obj_enemy_la)) ){
	
		shoot_mode = false;
		dropped_mode = true;
	
	}
	
	acel_h = obj_player.gravity_;

		if(shoot_mode_start){
			veloc_y = dsin(angulo_lancamento) * veloc;
			shoot_mode_start = false;
		}
	
	veloc_x = dcos(angulo_lancamento) * veloc;

	x = x + veloc_x;

	veloc_y = veloc_y - acel_h;

	y = y - veloc_y;
	
	
}else if(dropped_mode){

	veloc_y = veloc_y - obj_player.gravity_;
	veloc_x = 0;


	if(!place_meeting(x,y,obj_block)) y = y - veloc_y;

	if(place_meeting(x,y,obj_player)){
	
		obj_player.sandal_counter++;
		instance_destroy();
	
	}
	
}else {
	
	obj_player.sandal_respawn_frame = true;
	obj_player.sandal_on_cooldown = false;
	instance_destroy();
}
