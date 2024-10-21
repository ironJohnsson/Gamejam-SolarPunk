/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

veloch = veloch - obj_player.gravity_;


if(!place_meeting(x,y,obj_block)) y = y - veloch;

if(place_meeting(x,y,obj_player)){
	
	obj_player.partes++;
	instance_destroy();
}
