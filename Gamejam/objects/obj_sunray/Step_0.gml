/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


x = x + dcos(image_angle) * veloc;
y = y - dsin(image_angle) * veloc;

if(place_meeting(x,y,obj_block)){

instance_destroy();
}

//timer para despawnar o projetil

if(timer >= lifetime){

instance_destroy();

}

timer++;