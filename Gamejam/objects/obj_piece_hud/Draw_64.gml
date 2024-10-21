/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


value_to_draw = obj_player.partes;

draw_self();

draw_set_valign(fa_middle);
draw_text_transformed(x + 60, y, value_to_draw, 2, 2, 0);

draw_set_valign(fa_top);