/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



// Inherit the parent event
event_inherited();

//criar raios na frente dele (para criar uma continuidade dos raios)

desloc_em_x = dcos(angulo) * veloc;
desloc_em_y =  dsin(angulo) * veloc;
qtd_de_raios = 3;

for(i=1; i<qtd_de_raios; i++){

instance_create_layer(projectile_spawn_point_x + desloc_em_x*i, projectile_spawn_point_y + desloc_em_y*i,"Layer_projectile", obj_sunray);

}