/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(animation_mode){
	
	x = x + 5;
	
	if(abs(x - x_inicial) >= distancia_para_parar_a_animacao){
		animation_mode = false;
		pickup_mode = true;
	}
}

if(pickup_mode){
	
	if(position_meeting(x,y, obj_player)){
	
	instance_destroy();
	
	//botar codigo de curar o jogador
	}
	
}