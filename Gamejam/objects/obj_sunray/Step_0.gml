/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

x = x + dcos(image_angle) * veloc;
y = y - dsin(image_angle) * veloc;

if(place_meeting(x,y,obj_block)){

instance_destroy();
}