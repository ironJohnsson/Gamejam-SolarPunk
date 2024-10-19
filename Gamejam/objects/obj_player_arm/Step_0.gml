/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//braco ficar grudado no lugar certo da miku
x = obj_player.x + distancia_braco_x * obj_player.image_xscale;

y = obj_player.y + distancia_braco_y;

//braco apontar para a direcao do mouse
image_angle = point_direction(x, y, mouse_x, mouse_y);


//sistema da arma: raio solar

projectile_spawn_point_x = x + lengthdir_x(ponta_da_arma_x, point_direction(x, y, mouse_x, mouse_y));
projectile_spawn_point_y = y + lengthdir_y(ponta_da_arma_x, point_direction(x, y, mouse_x, mouse_y));

shootleft =  mouse_check_button(mb_left);

switch(active_weapon){
	
case 1: //sunray

	if(shootleft){
		
		with (instance_create_layer(projectile_spawn_point_x, projectile_spawn_point_y, "Layer_projectile", obj_sunray)){
	
		}
	}

break;

case 2: //sandalia



}