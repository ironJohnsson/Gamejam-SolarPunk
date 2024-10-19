/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

x = x + dcos(angulo) * veloc;
y = y - dsin(angulo) * veloc;

if(place_meeting(x,y,obj_block)){

instance_destroy();
}