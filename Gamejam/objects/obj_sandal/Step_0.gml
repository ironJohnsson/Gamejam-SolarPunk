/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



if(equipped){

	x = obj_player_arm.projectile_spawn_point_x;
	y = obj_player_arm.projectile_spawn_point_y;
				
	image_angle = obj_player_arm.image_angle;
	image_xscale = obj_player.image_xscale;
	if(image_xscale < 0) image_angle -= 180;
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