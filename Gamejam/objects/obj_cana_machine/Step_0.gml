/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

 //nao iniciar a animacao ate a cana ser colocada

if(processar){
	image_index = frameatual;
	frame_change_counter++;
	
	if(frame_change_counter >= frames_por_imagem){
	
		frame_change_counter = 0;
		
		if(image_index < frame_final_animacao){ 
			frameatual++;
			image_index = frameatual;
		}else{ //processo finalizado
		
		 image_index = 0;
		 frameatual = frame_inicial_animacao;
		 processar = false;
		 
		 instance_create_layer(x,y, "Layer_dropped_items", obj_caldo_de_cana);
		}
	}
}else{
image_index = frame_parado;
}


show_debug_message(image_index);
