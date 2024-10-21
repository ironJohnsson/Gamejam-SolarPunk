
image_index = imagem;
obj_daynight2.image_index = imagem2;

min_ += increase;

if (min_ > 60) { min_ = 0; hours++}; 
	
if (hours == 0) { alpha_1 = 1;
		
		imagem = 0;
		imagem2 = 1;
	}
	
	if (hours == 6) {  alpha_1 = 1;
		
		imagem = 2;
		imagem2 = 3;
	}
	
	if (hours == 12) {  alpha_1 = 1;
		imagem = 4;
		imagem2 = 5;
	}
	
	if (hours == 18) {  alpha_1 = 1;
		imagem= 5;
		imagem2=0;
	}
	
	if (hours > 23) hours = 0;


alpha_1 -= alphaDecrease;
alpha_1 = clamp(alpha_1, 0, 1);

image_alpha = alpha_1;

if(hours >= 6 && hours <= 18) global.dia = true;
else global.dia = false;

show_debug_message(hours);
	
/*	
	//swap images if certain times of day
	if (hours == 0) { alpha = 1;
		layer_background_sprite(back_id_1, spr_noite);
		layer_background_sprite(back_id_2, spr_alvorecer);
	}
	
	if (hours == 6) { alpha = 1;
		layer_background_sprite(back_id_1, spr_madrugada);
		layer_background_sprite(back_id_2, spr_manha);
	}
	
	if (hours == 12) { alpha = 1;
		layer_background_sprite(back_id_1, spr_dia);
		layer_background_sprite(back_id_2, spr_anoitecer);
	}
	
	if (hours == 18) { alpha = 1;
		layer_background_sprite(back_id_1, spr_anoitecer);
		layer_background_sprite(back_id_2, spr_noite);
	
	
	
	
	}

if (hours > 23) { hours = 0; } 


*/

