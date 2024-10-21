/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

value_to_draw = obj_player.hp;

sprite = obj_player.hp_regen + 2;

image_index = sprite;

draw_self();


draw_sprite(spr_exp_hud,-1,posbarrax,posbarray);
draw_sprite_ext(spr_exp_bar,-1,posbarrax,posbarray,obj_player.hp/max_hp, 1,0,c_white,1);