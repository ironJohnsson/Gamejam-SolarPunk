/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

nova_hora = obj_daynight.hours;

if(hora != nova_hora) 	timer++;

if (timer >= tempo_para_respawn){

instance_create_layer(x,y, "Layer_plant", obj_cana_plant);
instance_destroy();
	
}

