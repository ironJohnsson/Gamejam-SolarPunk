/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



// Inherit the parent event
event_inherited();

//criar raios na frente dele (para criar uma continuidade dos raios)
qtd_de_raios = 15;
desloc_em_x = dcos(image_angle) * veloc *1/qtd_de_raios;
desloc_em_y =  dsin(image_angle) * veloc *1/qtd_de_raios;


for(i=1; i<qtd_de_raios; i++){

instance_create_layer(obj_player_arm.projectile_spawn_point_x + desloc_em_x*i, obj_player_arm.projectile_spawn_point_y + desloc_em_y*-i,"Layer_projectile", obj_sunray);

}