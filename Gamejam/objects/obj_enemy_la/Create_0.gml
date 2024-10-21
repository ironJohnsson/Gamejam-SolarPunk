/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
hspd=0;
vspd=0;
spd=3;

vspd_push = 1;
hspd_push = 1;

hp=50;


bullet_cd=room_speed/2;
alarm[0] = bullet_cd;



//estados
MOV = 0;
ATK = 1;
HIT = 2;

state = MOV;