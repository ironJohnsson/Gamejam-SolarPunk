/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//braco ficar grudado no lugar certo da miku
x = obj_player.x + distancia_braco_x * obj_player.image_xscale;

y = obj_player.y + distancia_braco_y;

//braco apontar para a direcao do mouse
image_angle = point_direction(x, y, mouse_x, mouse_y);

if(image_xscale < 0) image_angle -= 180;



//sistema da armas
shootleft =  mouse_check_button(mb_left);
equip_sunray = (keyboard_check(ord("1")));
equip_sandal = (keyboard_check(ord("2")));

projectile_spawn_point_x = x + lengthdir_x(ponta_da_arma_x, point_direction(x, y, mouse_x, mouse_y));
projectile_spawn_point_y = y + lengthdir_y(ponta_da_arma_x, point_direction(x, y, mouse_x, mouse_y));

if(equip_sunray) active_weapon = 1;
if(equip_sandal) active_weapon = 2;

//cooldown da sandalia
if(sandal_on_cooldown){
	
	sandal_timer++;
		
	if(sandal_timer >= sandal_cooldown){
	sandal_timer = 0;
	sandal_on_cooldown = false;
	sandal_respawn_frame = true;
	}
}


switch(active_weapon){
	
case 1: //sunray
	
	image_index = 0;
	if(shootleft){
		
		instance_create_layer(projectile_spawn_point_x, projectile_spawn_point_y, "Layer_projectile", obj_spawn_sunray);
	
	}

break;

case 2: //sandalia
	
	image_index = 1;
	

	
	//respawnar sandalia
	if(sandal_respawn_frame){
		equipped_sandal = instance_create_layer(projectile_spawn_point_x, projectile_spawn_point_y, "Layer_projectile", obj_sandal);
		sandal_respawn_frame = false;
	}
	

	//atirar sandalia
	if(shootleft && !sandal_on_cooldown){
		
		with(equipped_sandal){
			
			equipped_mode = false;
			shoot_mode = true;
		}
		
		sandal_on_cooldown = true;
	}
	
	
break;
}