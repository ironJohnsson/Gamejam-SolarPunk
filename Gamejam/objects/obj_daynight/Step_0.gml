min_ += increase;

if (min_ > 60) { min_ = 0; hours++; 
	
	
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

alpha_1 -= alphaDecrease;
alpha_1 = clamp(alpha_1, 0, 1);

layer_background_alpha(back_id_1, alpha_1);
}