/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

equipped_mode = true;

shoot_mode = false; 

dropped_mode = false;

shoot_mode_start = true; //rodar uma parte do codigo apenas no primeiro frame que o lancamento iniciar

veloc = 15;

x = obj_player_arm.projectile_spawn_point_x;
y = obj_player_arm.projectile_spawn_point_y;
	

image_angle = obj_player_arm.image_angle;
//image_xscale = obj_player.image_xscale;
//if(image_xscale < 0) image_angle -= 180;

gravity_sandal = 0.8;

angulo_lancamento = image_angle;

destruir = false;

global.danosandalia = 50;
